import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:women_center_mobile/Models/konselor_model/konselor_model.dart';
import 'package:women_center_mobile/View/metode_pembayaran/metode_pembayaran1_update.dart';
import '../../Models/metodepembayaran_model/metodepembayaran1_model.dart';
import '../../Models/utils/auth_service.dart';


class KonselorViewModel extends ChangeNotifier {
  List<PaymentMethod> _paymentMethods = [];
  List<PaymentMethod> get paymentMethods => _paymentMethods;
  final String _baseUrl = "https://api-ferminacare.tech/api/v1";
  String get token => AuthService.token;
  String _order_id =
      "109b04aa-e45b-4e4f-baa7-4d3d46c9950f"; // tolong di ganti dari postmannya

  List<KonselorModel> _listKonselor = [];
  List<KonselorModel> get listKonselor => _listKonselor;
  String get order_id => _order_id;

  Future fetchAllKonselor() async {
    const endpoint = "/counselors";

    try {
      final response = await http.get(
        Uri.parse("$_baseUrl$endpoint"),
        headers: {'Authorization': 'Bearer $token'},
      );
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body)["data"] as List;
        _listKonselor = jsonData.map((e) => KonselorModel.fromJson(e)).toList();
        notifyListeners();
      } else {
        log(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<int>?> fetchSchedule(int konselorId) async {
    final endpoint = "/counselors/$konselorId";

    try {
      final response = await http.get(
        Uri.parse("$_baseUrl$endpoint"),
        headers: {'Authorization': 'Bearer $token'},
      );
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body)["data"]["schedule"] as List;
        List<int> schedule = KonselorModel.scheduleFromJson(jsonData);
        return schedule;
      } else {
        log(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<bool> booking(
      int konselorId, int paketId, List<DateTime?> listTanggal) async {
    final endpoint =
        "/booking?counselor_id=$konselorId&counseling_package_id=$paketId";
    List<DateTime> schedule = [];
    for (var tgl in listTanggal) {
      if (tgl != null) schedule.add(tgl);
    }

    try {
      final response = await http.post(
        Uri.parse("$_baseUrl$endpoint"),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(schedule
            .map((tgl) => {
                  "booking_date": DateFormat('yyyy-MM-dd').format(tgl),
                  "booking_time": DateFormat('hh:mm:ss').format(tgl),
                })
            .toList()),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 201 || response.statusCode == 200) {
        // final responseData = jsonDecode(response.body);
        // processBookingResponse(responseData);
        // simpan ke variabel order_id
        final newOrderId = jsonDecode(response.body)["data"]["order_id"];
        _order_id = newOrderId;

        // simpan ke localstorage
        final prefs = await SharedPreferences.getInstance();
        log("Setting in localstorage: $newOrderId");
        prefs.setString("order_id", newOrderId);
        

        final statusMessage = jsonDecode(response.body)["message"];
      if (statusMessage == "Invoice created successfully, please complete your payment") {
        log("Faktur berhasil dibuat");
      } else {
        log("Gagal membuat faktur: $statusMessage");
      }

      return true;
    } else {
      log(response.body);
    }
  } catch (e) {
    log(e.toString());
  }
  return false;
}

  Future<void> bayar(int payment_code) async {
  try {
    // Dapatkan data order_id dari variabel _order_id
    final order_id = _order_id;

    // Bangun URL untuk pembayaran
    final paymentUrl = "$_baseUrl/charge-payment?order_id=$order_id&payment_code=$payment_code";

    // Kirim permintaan pembayaran
    final response = await http.get(
      Uri.parse(paymentUrl),
      headers: {'Authorization': 'Bearer $token'},
    );

    log(response.statusCode.toString());

    if (response.statusCode == 200) {
      // Pembayaran berhasil
      log("Pembayaran berhasil");

      // Cetak informasi pembayaran
      final Map<String, dynamic> responseData = jsonDecode(response.body)["data"];
      print("ID Transaksi: ${responseData['transaction_id']}");
      print("ID Order: ${responseData['order_id']}");
      print("Jumlah Bruto: ${responseData['gross_amount']}");
      print("Tipe Pembayaran: ${responseData['payment_type']}");
      // ... Cetak informasi lain sesuai kebutuhan ...

      // Lakukan tindakan tambahan atau navigasi ke halaman berhasil
    } else {
      // Pembayaran gagal
      log("Pembayaran gagal");

      // Ambil data order_id dari penyimpanan lokal
      final prefs = await SharedPreferences.getInstance();
      final storedOrderId = prefs.getString("order_id");

      // ... Implementasi tindakan setelah pembayaran gagal ...

      log(response.body);
    }
  } catch (e) {
    log(e.toString());
  }
}
}