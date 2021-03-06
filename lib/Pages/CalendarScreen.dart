import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tartan_hacks/Pages/AddEventPage.dart';
import 'package:tartan_hacks/CustomWidgets/ViewButton.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen>
    with TickerProviderStateMixin {
  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    //_selectedDay.add adds time to current day
    //_selectedDay.subtract subtract time from current day
    //TODO: This is where events on a certain day is added
    //We can have an event class that takes in the same parameters as the one from Welcome screen
    _events = {
      _selectedDay: [
        'Some Events',
        'Event B7',
        'Event C7',
        'Event D7',
      ],
      _selectedDay.add(Duration(days: 1)): [
        'Event A8',
        'Event B8',
        'Event C8',
        'Event D8'
      ],
      _selectedDay.add(Duration(days: 7)): [
        'Event A10',
        'Event B10',
        'Event C10'
      ],
      _selectedDay.add(Duration(days: 11)): [
        'Event A11',
        'Event B11',
      ],
      _selectedDay.add(Duration(days: 17)): [
        'Event A12',
        'Event B12',
        'Event C12',
        'Event D12'
      ],
      _selectedDay.add(Duration(days: 22)): [
        'Event A13',
        'Event B13',
      ],
      _selectedDay.add(Duration(days: 26)): [
        'Event A14',
        'Event B14',
        'Event C14'
      ],
    };

    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    //print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    //print('CALLBACK: _onVisibleDaysChanged');
  }

  void _onCalendarCreated(
      DateTime first, DateTime last, CalendarFormat format) {
    //print('CALLBACK: _onCalendarCreated');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kSemiBlack,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildTableCalendarWithBuilders(),
          const SizedBox(height: 8.0),
          _buildButtons(),
          const SizedBox(height: 8.0),
          Expanded(
            child: _buildEventList(),
          ),
          //TODO: Have ternary thingy to where if there's no events that day, it'll say "No events"
        ],
      ),
    );
  }

  // More advanced TableCalendar configuration (using Builders & Styles)
  Widget _buildTableCalendarWithBuilders() {
    return TableCalendar(
      locale: "en_US",
      calendarController: _calendarController,
      events: _events,
      initialCalendarFormat: CalendarFormat.month,
      formatAnimation: FormatAnimation.slide,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      availableGestures: AvailableGestures.all,
      availableCalendarFormats: const {
        CalendarFormat.month: '',
        CalendarFormat.week: '',
      },
      calendarStyle: CalendarStyle(
        outsideWeekendStyle: TextStyle(
          color: Colors.grey[400],
        ),
        outsideDaysVisible: false,
        weekendStyle: TextStyle().copyWith(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekendStyle: TextStyle().copyWith(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        centerHeaderTitle: true,
        formatButtonVisible: false,
      ),
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, _) {
          //When current day is selected
          return Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.only(top: 5.0, left: 6.0),
            color: kDarkPurple,
            width: 100,
            height: 100,
            child: Text(
              '${date.day}',
              style: TextStyle().copyWith(fontSize: 16.0),
            ),
          );
        },
        //When current day is not selected
        todayDayBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.only(top: 5.0, left: 6.0),
            color: kLightPurple,
            width: 100,
            height: 100,
            child: Text(
              '${date.day}',
              style: TextStyle().copyWith(fontSize: 16.0),
            ),
          );
        },
        markersBuilder: (context, date, events, holidays) {
          final children = <Widget>[];

          if (events.isNotEmpty) {
            children.add(
              Positioned(
                right: 1,
                bottom: 1,
                child: _buildEventsMarker(date, events),
              ),
            );
          }

          return children;
        },
      ),
      onDaySelected: (date, events, holidays) {
        _onDaySelected(date, events, holidays);
        _animationController.forward(from: 0.0);
      },
      onVisibleDaysChanged: _onVisibleDaysChanged,
      onCalendarCreated: _onCalendarCreated,
    );
  }

  //TODO: Change the color of the app
  Widget _buildEventsMarker(DateTime date, List events) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _calendarController.isSelected(date)
            ? kSemiLightPurple
            : _calendarController.isToday(date)
                ? Colors.deepPurple[300]
                : Colors.deepPurple[100],
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepPurple[200]),
            elevation: MaterialStateProperty.all(4.0),
            overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]),
          ),
          child: Text(
            "Monthly View",
            style: TextStyle(
              color: kSemiBlack,
            ),
          ),
          onPressed: () {
            setState(() {
              _calendarController.setCalendarFormat(CalendarFormat.month);
            });
          },
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepPurple[200]),
            elevation: MaterialStateProperty.all(4.0),
            overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]),
          ),
          child: Text(
            "2-Week View",
            style: TextStyle(
              color: kSemiBlack,
            ),
          ),
          onPressed: () {
            setState(() {
              _calendarController.setCalendarFormat(CalendarFormat.twoWeeks);
            });
          },
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepPurple[200]),
            elevation: MaterialStateProperty.all(4.0),
            overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]),
          ),
          child: Text(
            "Weekly View",
            style: TextStyle(
              color: kSemiBlack,
            ),
          ),
          onPressed: () {
            setState(() {
              _calendarController.setCalendarFormat(CalendarFormat.week);
            });
          },
        ),
      ],
    );
  }

  //TODO: This is where the events are shown and can be added from the list
  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map(
            (event) => Container(
                margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: EventCard(
                  eventName: event.toString(),
                  eventDate: "Date",
                  eventNotes: "Testing event card",
                  eventTime: "Time",
                  categoryColor: kRed,
                  categoryIcon: Icons.laptop_mac,
                  buttonPressed: () {
                    print("${event} pressed");
                  },
                )),
          )
          .toList(),
    );
  }
}
