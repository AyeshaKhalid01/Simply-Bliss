
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poster_perfect/screens/homepage.dart';

class Welcome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WelcomePage();
  }
}

class WelcomePage extends State<Welcome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        actions: [
          FlatButton(
            onPressed: (){
              setState(() {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              });
            },
            child: Text("Get Started ->",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.purple,
              fontStyle: FontStyle.italic
            ),),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}