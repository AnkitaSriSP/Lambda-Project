import 'package:flutter/material.dart';

class ClubDetailsPage extends StatelessWidget {
  final String clubName;

  ClubDetailsPage({required this.clubName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 57, 10, 123),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, // Set the color of the leading icon to white
          ),
          title: Text(
            clubName,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 57, 10, 123), 
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  // Replace with actual club image widget
                  child: Center(
                    child: Text(
                      'Sample Picture',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: () {
                        // Replace with actual link handling
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.inbox),
                      onPressed: () {
                        // Replace with actual link handling
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.inbox),
                      onPressed: () {
                        // Replace with actual link handling
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                // Description
                Text(
                  'Club description goes here. Replace with actual club description.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 57, 10, 123), 
                      ),
                      child: Text(
                        'Upcoming Events',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 57, 10, 123), 
                      ),
                      child: Text(
                        'Merchandise',
                        style: TextStyle(color: Colors.white), 
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
