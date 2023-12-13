import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class EventCalendar extends StatefulWidget {
  @override
  _EventCalendarState createState() => _EventCalendarState();
}

class _EventCalendarState extends State<EventCalendar> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  late final Map<DateTime, List<Event>> _events;
  late DateTime _selectedDate;

  final TextEditingController _eventTitleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _events = {
      DateTime.now(): [
        Event('Event A', DateTime.now().add(Duration(hours: 2))),
      ],
      DateTime.now().add(Duration(days: 2)): [
        Event('Event B', DateTime.now().add(Duration(hours: 10))),
        Event('Event C', DateTime.now().add(Duration(hours: 14))),
      ],
    };
    _selectedEvents = ValueNotifier(_getEventsForSelectedDay(DateTime.now()));
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Calendar'),
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _selectedDate,
            firstDay: DateTime(2021),
            lastDay: DateTime(2030),
            eventLoader: _getEventsForDay,
            onDaySelected: (selectedDay, focusedDay) {
              _selectedDate = selectedDay;
              _selectedEvents.value = _getEventsForSelectedDay(selectedDay);
            },
          ),
          SizedBox(height: 20),
          _buildEventForm(),
          SizedBox(height: 20),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, selectedEvents, _) {
                return ListView(
                  children: _buildEventWidgets(selectedEvents),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildEventWidgets(List<Event> events) {
    List<Widget> eventWidgets = [];

    for (Event event in events) {
      eventWidgets.add(
        Card(
          child: ListTile(
            title: Text(event.title),
            subtitle: Text(event.date.toString()),
          ),
        ),
      );
    }

    if (events.isEmpty) {
      eventWidgets.add(
        Center(
          child: Text('No events for selected day'),
        ),
      );
    }

    return eventWidgets;
  }

  Widget _buildEventForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _eventTitleController,
              decoration: InputDecoration(
                hintText: 'Event Title',
              ),
            ),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {
              _selectDate(context);
            },
            child: Text('Select Date'),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {
              _addEvent();
            },
            child: Text('Add Event'),
          ),
        ],
      ),
    );
  }

  List<Event> _getEventsForDay(DateTime day) {
    return _getEventsForSelectedDay(day);
  }

  List<Event> _getEventsForSelectedDay(DateTime selectedDay) {
    return _events[selectedDay] ?? [];
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2030),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _addEvent() {
    final newEventTitle = _eventTitleController.text;

    if (newEventTitle.isNotEmpty) {
      final newEvent = Event(newEventTitle, _selectedDate);

      setState(() {
        _events.update(_selectedDate, (existingEvents) {
          existingEvents.add(newEvent);
          return existingEvents;
        }, ifAbsent: () => [newEvent]);

        _selectedEvents.value = _getEventsForSelectedDay(_selectedDate);
      });

      // Bersihkan input setelah menambahkan event
      _eventTitleController.clear();
    }
  }
}

class Event {
  final String title;
  final DateTime date;

  Event(this.title, this.date);
}