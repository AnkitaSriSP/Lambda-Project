import 'package:clubsapp/pages/clubdetails.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clubs'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: 20, // Number of clubs
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                String clubName = 'Club ${index + 1}';
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ClubDetailsPage(clubName: clubName),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color.fromARGB(255, 17, 10, 123)),
                ),
                child: Center(
                  child: Text(
                    'Club ${index + 1}',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 10, 123),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
