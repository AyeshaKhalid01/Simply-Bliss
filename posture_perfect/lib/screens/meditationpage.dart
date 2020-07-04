import 'package:flutter/material.dart';

class MeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Meditation',style: TextStyle(color: Theme.of(context).primaryColor),),
        backgroundColor: Colors.white,),
    body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/logo.png"),
    fit: BoxFit.cover,
    ),
    ),
    child: ActivitiesCatalog(),
    )
    );
  }
}
class ActivitiesCatalog extends StatefulWidget {
  @override
  _ActivitiesCatalogState createState() => _ActivitiesCatalogState();
}

class _ActivitiesCatalogState extends State<ActivitiesCatalog> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
