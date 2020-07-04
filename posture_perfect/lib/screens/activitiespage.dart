import 'package:flutter/material.dart';

class ActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Destress Activities',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/abg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ActivitiesCatalog(),
        ));
  }
}

class ActivitiesCatalog extends StatefulWidget {
  @override
  _ActivitiesCatalogState createState() => _ActivitiesCatalogState();
}

class _ActivitiesCatalogState extends State<ActivitiesCatalog> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/env.png'),
            backgroundColor: Colors.white,
          ),
          title: Text('\nChange In Environment',
              style: TextStyle(
                  height: 1, fontSize: 18, color: Colors.indigoAccent)),
          subtitle: Text(
              "Do something pleasurable or relaxing for a little while such as reading, watching TV, or taking a shower. If you are at work, step outside for a few minutes and get some fresh air.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/art.jpg'),
          ),
          title: Text('\nImmerse Yourself In A Creative Outlet',
              style: TextStyle(height: 1, fontSize: 18, color: Colors.green)),
          subtitle: Text(
              " Doing something creative that you enjoy like art or photography can take you away from the stress at hand. ",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/run.jpg'),
          ),
          title: Text('\nExercise',
              style:
                  TextStyle(height: 1, fontSize: 18, color: Colors.blueAccent)),
          subtitle: Text(
              "Take a walk or go running. This will provide some perspective so you can return in a new frame of mind.Activities like yoga. Sometimes known as progressive muscle relaxation, practice tensing and then releasing each of your muscle groups. If your body is physiologically relaxed, then you can’t be stressed.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/unplug.jpg'),
          ),
          title: Text('\nUnplug',
              style: TextStyle(
                  height: 1, fontSize: 18, color: Colors.indigoAccent)),
          subtitle: Text(
              "It's impossible to escape stress when it follows you everywhere. Cut the cord. Avoid emails and TV news. Take time each day — even if it's for just 10 or 15 minutes — to escape from the world.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/social.png'),
          ),
          title: Text('\nExpress Your Feelings',
              style: TextStyle(height: 1, fontSize: 18, color: Colors.green)),
          subtitle: Text(
              "Write your stress away in a journal, take out your colored pencils and paper and focus your concentration on drawing, or have coffee with a trusted friend and just talk.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
      ],
    );
  }
}

