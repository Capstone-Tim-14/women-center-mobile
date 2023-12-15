import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Acara {
  String jam1;
  String jam2;
  String judul;
  String lokasi;

  Acara({
    required this.jam1,
    required this.jam2,
    required this.judul,
    required this.lokasi,
  });
}

class YourCalendarScreen extends StatefulWidget {
  @override
  _YourCalendarScreenState createState() => _YourCalendarScreenState();
}

class _YourCalendarScreenState extends State<YourCalendarScreen> {
  List<DateTime> selectedDates = [];
  bool isEditing = false;

  List<DateTime> dummyEvents = [
    DateTime(2023, 8, 17),
    DateTime(2023, 8, 23),
  ];

  List<Acara> acara = [];

  @override
  void initState() {
    super.initState();
    acara.add(
      Acara(
        jam1: "10:30",
        jam2: "12:00",
        judul: "Lawan kekerasan dan pelecehan perempuan",
        lokasi: "Freware Space",
      ),
    );
    acara.add(
      Acara(
        jam1: "18:30",
        jam2: "21:00",
        judul: "Konselingl Jadwal Koseling Hari ini",
        lokasi: "zoommtg://zoom.us/join?confno=852901544pwd",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Color(0xFFFDCEDF), // Ganti dengan warna yang diinginkan
  title: Text(
    'Kalender',
    style: TextStyle(
      color: Colors.black, // Ganti dengan warna teks yang diinginkan
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.black), // Ganti dengan warna ikon yang diinginkan
),
      backgroundColor: Color(0xFFF8E8EE),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isEditing)
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: EdgeInsets.only(left: 25), // Sesuaikan padding seperti yang Anda butuhkan
      child: Text(
        'Mon, ${DateFormat('MMM d').format(dummyEvents[0])}',
        style: GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.w400),
      ),
    ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isEditing = !isEditing;
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
                if (!isEditing)
  Divider(),
            SizedBox(height: 16),
            if (isEditing)
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                isEditing = false;
                              });
                            },
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text('Save', style: TextStyle(color: Color(0xFFf4518d))),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
      padding: EdgeInsets.only(left: 55),
                      child: Text(
                        'Depart - Return Dates',
                        style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
      padding: EdgeInsets.only(left: 55),
                      child: Text(
                        '${DateFormat('MMM d').format(dummyEvents[0])} - ${DateFormat('MMM d').format(dummyEvents[1])}',
                        style: GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                      ),
                      IconButton(
                        onPressed: () {
                          print('Edit Button Pressed');
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  )
                ],
              ),
            Align(
              alignment: Alignment.topLeft,
              child: isEditing
                  ? CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range,
                  selectedDayHighlightColor: Color(0xFFf4518d),
                ),
                value: dummyEvents,
              )
                  : CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.single,
                  selectedDayHighlightColor: Color(0xFFf4518d),
                ),
                value: [dummyEvents[0]],
              ),
            ),
            SizedBox(height: 10),
            Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
   if (!isEditing)
  Padding(
    padding: EdgeInsets.only(left: 15, top: 0, bottom: 0), // Sesuaikan nilai top dan bottom sesuai kebutuhan
    child: Text(
      'Acara',
      style: GoogleFonts.raleway(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  ),
],
),
if (!isEditing)
  Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 0), // Sesuaikan nilai top sesuai kebutuhan
      child: ListView.builder(
        itemCount: acara.length,
        itemBuilder: (context, index) {
          Acara currentAcara = acara[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Row(
                  children: [
                    Text(
                      currentAcara.jam1,
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(width: 15),
                    Text(
                      currentAcara.judul,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text(
                      currentAcara.jam2,
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(width: 15),
                    Text(
                      currentAcara.lokasi,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFf4518d),
                height: 0,
              ),

                      ],
                    );
                  },
                ),
              ),
  ),
          ],
        ),
      ),
    );
  }
}
