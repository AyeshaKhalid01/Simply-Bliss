import 'package:flutter/material.dart';
import 'package:poster_perfect/screens/activitiespage.dart';
import 'package:poster_perfect/screens/meditationpage.dart';
import 'package:poster_perfect/screens/musicpage.dart';
import 'package:poster_perfect/screens/posturecorrectpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1.0,
        backgroundColor: Colors.greenAccent,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          MusicPage(),
          ActivitiesPage(),
          MeditationPage(),
          PostureCorrectPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 2.0,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music,color: Theme.of(context).primaryColor,),
              backgroundColor: Colors.greenAccent[100],
              title: Text('Music',style: TextStyle(color: Theme.of(context).primaryColor),),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.trip_origin,color: Theme.of(context).primaryColor),
                backgroundColor: Colors.greenAccent[100],
                title: Text('Activities',style: TextStyle(color: Theme.of(context).primaryColor),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.change_history,color: Theme.of(context).primaryColor),
                backgroundColor: Colors.greenAccent[100],
                title: Text('Meditation',style: TextStyle(color: Theme.of(context).primaryColor),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_front,color: Theme.of(context).primaryColor),
                backgroundColor: Colors.greenAccent[100],
                title: Text('Posture Correct',style: TextStyle(color: Theme.of(context).primaryColor),)
            ),
          ]),

    );
  }
}