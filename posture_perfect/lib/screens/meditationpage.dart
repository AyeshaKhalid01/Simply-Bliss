import 'package:flutter/material.dart';

class MeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Meditation',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
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
            title: Text('Getting started with meditation',
                style: TextStyle(letterSpacing: 1.0, fontSize: 25)),
            subtitle: Text(
                "The easiest way to begin is to sit quietly and focus on your breath. All kidding aside, it’s best to start in small moments of time, even five or ten minutes, and grow from there. Sit consistently for 20 minutes a day and do this for 100 days straight. Couple that with an additional 2 to 5 minutes of meditation throughout the day to break up the chaos, and you will soon be feeling the benefits.",
                style:
                    TextStyle(height: 1.5, fontSize: 15, color: Colors.black))),
        ListTile(
            title: Text('Types Of Meditation',
                style: TextStyle(
                    letterSpacing: 1.0, fontSize: 25, color: Colors.blue))),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/med.png'),
          ),
          title: Text('\nMindfulness Meditation',
              style: TextStyle(
                  height: 1, fontSize: 18, color: Colors.indigoAccent)),
          subtitle: Text(
              "In mindfulness meditation, you pay attention to your thoughts as they pass through your mind. You don’t judge the thoughts or become involved with them. You simply observe and take note of any patterns. This practice combines concentration with awareness. You may find it helpful to focus on an object or your breath while you observe any bodily sensations, thoughts, or feelings.This type of meditation is good for people who don’t have a teacher to guide them, as it can be easily practiced alone.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/med.png'),
          ),
          title: Text('\nSpiritual Meditation',
              style: TextStyle(height: 1, fontSize: 18, color: Colors.green)),
          subtitle: Text(
              "Spiritual meditation is used in Eastern religions, such as Hinduism and Daoism, and in Christian faith. It’s similar to prayer in that you reflect on the silence around you and seek a deeper connection with your God or Universe.Spiritual meditation can be practiced at home or in a place of worship. This practice is beneficial for those who thrive in silence and seek spiritual growth.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/med.png'),
          ),
          title: Text('\nFocused Meditation',
              style:
                  TextStyle(height: 1, fontSize: 18, color: Colors.blueAccent)),
          subtitle: Text(
              "Focused meditation involves concentration using any of the five senses. For example, you can focus on something internal, like your breath, or you can bring in external influences to help focus your attention. Try counting mala beads, listening to a gong, or staring at a candle flame. This practice may be simple in theory, but it can be difficult for beginners to hold their focus for longer than a few minutes at first. If your mind does wander, it’s important to come back to the practice and refocus.As the name suggests, this practice is ideal for anyone who requires additional focus in their life.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/med.png'),
          ),
          title: Text('\nMovement Meditation',
              style: TextStyle(
                  height: 1, fontSize: 18, color: Colors.indigoAccent)),
          subtitle: Text(
              "Although most people think of yoga when they hear movement meditation, this practice may include walking through the woods, gardening, qigong, and other gentle forms of motion. It’s an active form of meditation where the movement guides you.Movement meditation is good for people who find peace in action and prefer to let their minds wander.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/med.png'),
          ),
          title: Text('\nMantra Meditation',
              style: TextStyle(height: 1, fontSize: 18, color: Colors.green)),
          subtitle: Text(
              "Mantra meditation is prominent in many teachings, including Hindu and Buddhist traditions. This type of meditation uses a repetitive sound to clear the mind. It can be a word, phrase, or sound, such as the popular “Om.”This allows you to experience deeper levels of awareness. Some people enjoy mantra meditation because they find it easier to focus on a word than on their breath. This is also a good practice for people who don’t like silence and enjoy repetition.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/med.png'),
          ),
          title: Text('\nTranscendental Meditation',
              style:
                  TextStyle(height: 1, fontSize: 18, color: Colors.blueAccent)),
          subtitle: Text(
              "Transcendental meditation is the most popular type of meditation around the world, and it’s the most scientifically studied. This practice is more customizable than mantra meditation, using a mantra or series of words that are specific to each practitioner.This practice is for those who like structure and are serious about maintaining a meditation practice.",
              style: TextStyle(height: 1.5, fontSize: 15, color: Colors.black)),
        ),
      ],
    );
  }
}

