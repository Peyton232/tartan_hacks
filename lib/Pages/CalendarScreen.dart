import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tartan_hacks/Pages/AddEventPage.dart';
import 'package:particles_flutter/particles_flutter.dart';
import '../Data/globals.dart' as globals;

enum CalendarView {
  monthly,
  biweekly,
  weekly,
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen>
    with TickerProviderStateMixin {
  Map<DateTime, List> _events = globals.eventDays;
  List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;
  CalendarView _selectedView = CalendarView.monthly;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    //_selectedDay.add adds time to current day
    //_selectedDay.subtract subtract time from current day
    //TODO: This is where events on a certain day is added
    //We can have an event class that takes in the same parameters as the one from Welcome screen
    _events = globals.eventDays;
    var dataVar;
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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kOffWhite,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Calendar"),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(
          color: kOffWhite,
        ),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              //color: kDarkPurple,
              ),
          height: 400,
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: _buildTableCalendarWithBuilders(),
            ),
            //const SizedBox(height: 8.0),
            _buildButtons(),
            //const SizedBox(height: 8.0),
            Expanded(
              child: _buildEventList(),
            ),
            //TODO: Have ternary thingy to where if there's no events that day, it'll say "No events"
          ],
        ),
      ]),
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[600],
                    blurRadius: 4,
                    offset: Offset(
                      2,
                      3,
                    ))
              ],
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.purple[700],
            ),
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            width: 100,
            height: 100,
            child: Text(
              '${date.day}',
              style: TextStyle().copyWith(fontSize: 18.0, color: kOffWhite),
            ),
          );
        },
        //When current day is not selected
        todayDayBuilder: (context, date, _) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple[200], width: 3),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.deepPurple[100],
            ),
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.only(top: 5.0, left: 6.0),
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
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _calendarController.isSelected(date)
            ? Colors.purple[300]
            : _calendarController.isToday(date)
                ? Colors.purple[900]
                : Colors.deepPurple[100],
      ),
      width: 18.0,
      height: 18.0,
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
          style: ElevatedButton.styleFrom(
            primary: _selectedView == CalendarView.monthly
                ? Colors.deepPurple[300]
                : Colors.deepPurple[100],
            elevation: _selectedView == CalendarView.monthly ? 6 : 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            "Monthly View",
            style: TextStyle(
              color: _selectedView == CalendarView.monthly
                  ? kSemiBlack
                  : Colors.grey[600],
            ),
          ),
          onPressed: () {
            setState(() {
              _calendarController.setCalendarFormat(CalendarFormat.month);
              _selectedView = CalendarView.monthly;
            });
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: _selectedView == CalendarView.biweekly
                ? Colors.deepPurple[300]
                : Colors.deepPurple[100],
            elevation: _selectedView == CalendarView.biweekly ? 6 : 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            "2-Week View",
            style: TextStyle(
              color: _selectedView == CalendarView.biweekly
                  ? kSemiBlack
                  : Colors.grey[600],
            ),
          ),
          onPressed: () {
            setState(() {
              _calendarController.setCalendarFormat(CalendarFormat.twoWeeks);
              _selectedView = CalendarView.biweekly;
            });
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: _selectedView == CalendarView.weekly
                ? Colors.deepPurple[300]
                : Colors.deepPurple[100],
            elevation: _selectedView == CalendarView.weekly ? 6 : 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            "Weekly View",
            style: TextStyle(
              color: _selectedView == CalendarView.weekly
                  ? kSemiBlack
                  : Colors.grey[600],
            ),
          ),
          onPressed: () {
            setState(() {
              _calendarController.setCalendarFormat(CalendarFormat.week);
              _selectedView = CalendarView.weekly;
            });
          },
        ),
      ],
    );
  }

  //TODO: This is where the events are shown and can be added from the list
  Widget _buildEventList() {
    EventCard dataVar= new EventCard();
    //dataVar = globals.Events[1];
    return ListView(
      children: _selectedEvents
          .map(
            (event) => Container(
                margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: new Column(
                  children: [
                    dataVar = globals.Events.firstWhere((element) => element.eventName == event.toString(), orElse: () {return null;}),
                    EventCard(
                      eventName: event.toString(),
                      eventDate: dataVar.eventDate,
                      eventNotes: dataVar.eventNotes,
                      eventTime: dataVar.eventTime,
                      categoryColor: dataVar.categoryColor,
                      categoryIcon: dataVar.categoryIcon,
                      buttonPressed: () {
                        print("${event} pressed");
                      },
                    )
                  ],
                )
                ),
          )
          .toList(),
    );
  }
}



