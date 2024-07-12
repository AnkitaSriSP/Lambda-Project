// Announcements/Home Page
import 'package:clubsapp/pages/calendar.dart';
import 'package:clubsapp/pages/clubs.dart';
import 'package:clubsapp/pages/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    AnnouncementsPage(),
    CalendarPage(),
    ClubsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "CLUBSPACE",
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 57, 10, 123),
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            label: 'Announcements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Clubs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class AnnouncementsPage extends StatelessWidget {
  final List<Map<String, String>> announcements = List.generate(
    10,
    (index) => {
      'sessionName': 'Session ${index + 1}',
      'clubName': 'Club ${index + 1}',
      'date': '2024-07-${index + 10}',
      'time': '10:00 AM',
      'venue': 'Venue ${index + 1}',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color.fromARGB(255, 17, 10, 123)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  announcements[index]['sessionName']!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 17, 10, 123),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  announcements[index]['clubName']!,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  'Date: ${announcements[index]['date']}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  'Time: ${announcements[index]['time']}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  'Venue: ${announcements[index]['venue']}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
