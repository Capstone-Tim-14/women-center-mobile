import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCalendar(),
    );
  }
}

class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarController _controller;
  Map<DateTime, List<dynamic>> _events;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _events = {
      DateTime(2023, 11, 1): ['Event 1', 'Event 2'],
      DateTime(2023, 11, 5): ['Event 3'],
      DateTime(2023, 11, 10): ['Event 4'],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calendar with Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              calendarController: _controller,
              events: _events,
              onDaySelected: (date, events, holidays) {
                _showDetails(date, events);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showDetails(DateTime date, List<dynamic> events) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Details for ${date.day}/${date.month}/${date.year}'),
          content: Column(
            children: [
              Text('Events:'),
              for (var event in events) Text('- $event'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
