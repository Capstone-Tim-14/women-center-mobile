import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:midtrans_sdk/midtrans_sdk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late MidtransSDK _midtransSDK;

  @override
  void initState() {
    super.initState();
    initializeMidtransSDK();
  }

  void initializeMidtransSDK() async {
    var config = MidtransConfig(
      clientKey: "SB-Mid-client-E88Dmn6BG8jq0YmX",
      merchantBaseUrl: "http://www.womencentre.com",
      colorTheme: ColorTheme(
        colorPrimary: Colors.blue,
        colorPrimaryDark: Colors.blueAccent,
        colorSecondary: Colors.blueGrey,
      ),
    );

    _midtransSDK = await MidtransSDK.init(config: config);

    _midtransSDK.setTransactionFinishedCallback((result) {
      print(result.toJson());
    });
  }

  void startPayment(String snapToken) {
    _midtransSDK.startPaymentUiFlow(token: snapToken);
  }

  Future<String> fetchSnapToken() async {
    var url = Uri.parse('https://api.midtrans.com/v2/charge');
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'SB-Mid-client-E88Dmn6BG8jq0YmX'
    };

    var body = json.encode({
      'transaction_details': {'order_id': 'ORDER-ID', 'gross_amount': 10000}
    });

    try {
      var response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        var snapToken = jsonResponse['token'];
        return snapToken;
      } else {
        throw Exception('Failed to load Snap Token');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Midtrans Payment"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              var snapToken = await fetchSnapToken();
              startPayment(snapToken);
            } catch (e) {
              print(e.toString());
            }
          },
          child: Text("Start Payment"),
        ),
      ),
    );
  }
}
