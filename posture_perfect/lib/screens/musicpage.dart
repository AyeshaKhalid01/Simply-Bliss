import 'package:flutter/material.dart';
import 'package:poster_perfect/models/musiccategory.dart';
import 'package:poster_perfect/screens/musiccardclickedpage.dart';

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
  final List<MusicCategory> category=[
    MusicCategory("Relaxing",AssetImage('images/relaxing.jpg'),"https://open.spotify.com/playlist/6EIVswdPfoE9Wac7tB6FNg"),
    MusicCategory("Happy",AssetImage('images/happy.jpg'),"https://open.spotify.com/playlist/1llkez7kiZtBeOw5UjFlJq"),
    MusicCategory("Cheering up",AssetImage('images/cheering.jpg'),"https://open.spotify.com/playlist/5tCgN9lPBMpN6joa28xgn8"),
    MusicCategory("Tired",AssetImage('images/tired.jpg'),"https://open.spotify.com/playlist/1m71t9BvOPr2NxRmheqLtM?"),
    MusicCategory("Energetic", AssetImage('images/energetic.jpg'), "https://open.spotify.com/playlist/2rtDMBR85xLa22sn1qfzh2"),
    MusicCategory("Stressed", AssetImage('images/stressed.jpg'), "https://open.spotify.com/playlist/69lho5DC7mCk18FynC6SDW"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: category.length,
          itemBuilder: (BuildContext context,int index) => buildCard(context, index)
      ),
    );
  }

  Widget buildCard(BuildContext context,int index){
    final card = category[index];
    return Container(
      child: Card(
        color: Colors.greenAccent[100],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.deepOrange,
            width: 1.0,
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0) ,
              topRight: Radius.circular(20.0)),
        ),
        elevation: 10,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: <Widget>[
                        Image(
                          image : card.tipImage,
                          fit: BoxFit.contain,
                        ),
                        Text(
                            card.title,
                            textScaleFactor: 1.5,
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45)
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => CategorySelectPage(categorycard:card)
                ));
          },
        ),
      ),
    );
  }
}
