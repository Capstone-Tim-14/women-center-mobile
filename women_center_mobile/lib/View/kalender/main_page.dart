import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalender"),
        backgroundColor: Colors.pink, // App bar color
      ),
      body: _getChild(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink, // Bottom app bar color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                _onTabTapped(0);
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                _onTabTapped(1);
              },
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getChild() {
    switch (_currentIndex) {
      case 0:
        // Return the widget for the home tab
        return _buildCalendar();
      case 1:
        // Return the widget for the list tab
        return Container(
          // Replace this with your list widget
          child: Center(
            child: Text('List Tab'),
          ),
        );
      default:
        // Return a default widget or throw an error
        return Container(
          child: Center(
            child: Text('Default Tab'),
          ),
        );
    }
  }

  Widget _buildCalendar() {
    return Column(
      children: [
        TableCalendar(
          calendarFormat: _calendarFormat,
          focusedDay: _focusedDay,
          firstDay: DateTime(2000),
          lastDay: DateTime(2100),
          selectedDayPredicate: (day) {
            // Use `selectedDayPredicate` to determine if a day is selected
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            // Use `onDaySelected` to update selectedDay and focusedDay
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // update focusedDay to the selected day
            });
          },
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink, // Selected day color
            ),
            todayDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // Today color
            ),
            markersMaxCount: 5,
            todayTextStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          headerStyle: HeaderStyle(
            titleTextStyle: TextStyle(
              color: Colors.white,
            ),
            formatButtonDecoration: BoxDecoration(
              color: Colors.pink, // Format button color
              borderRadius: BorderRadius.circular(20.0),
            ),
            formatButtonTextStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // Add your other widgets for the home tab here
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}
