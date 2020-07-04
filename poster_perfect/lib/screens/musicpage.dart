import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Music',style: TextStyle(color: Theme.of(context).primaryColor),),
        backgroundColor: Colors.white,),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
       child: MusicCatalog(),
      ),

    );
  }
}
class MusicCatalog extends StatefulWidget {
  @override
  _MusicCatalogState createState() => _MusicCatalogState();
}

class _MusicCatalogState extends State<MusicCatalog> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
