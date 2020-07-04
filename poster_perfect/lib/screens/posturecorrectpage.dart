import 'package:flutter/material.dart';

class PostureCorrectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Posture Correct',style: TextStyle(color: Theme.of(context).primaryColor),),
        backgroundColor: Colors.white,),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Posture(),
        )
    );
  }
}
class Posture extends StatefulWidget {
  @override
  _PostureState createState() => _PostureState();
}

class _PostureState extends State<Posture> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
