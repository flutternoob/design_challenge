import 'package:flutter/material.dart';
import 'designChallenges/designChallengesLibrary.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  Paint.enableDithering = true;
  runApp(DesignChallengesHome());
}

class DesignChallengesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Design Challenges',
      home: SafeArea(
        child: Scaffold(
          body: Builder(
            builder: (context) {
              Size size = MediaQuery.of(context).size;
              return Center(
                child: Stack(
                  children: [
                    DesignChallengeWidget(size: size),
                    DesignChallengeAppBar(size: size),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DesignChallengeAppBar extends StatelessWidget {
  const DesignChallengeAppBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Material(
      color: Colors.black54,
      elevation: 10,
      child: Container(
        width: size.width,
        height: size.height * 0.15,
        child: Center(
          child: Text(
            orientation == Orientation.portrait? "Flutter Design\nChallenge": "Flutter Design Challenge",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueGrey[400], fontSize: 30, fontFamily: "Futura-Heavy", shadows: [
              Shadow(
                color: Color(0xff1081e0),
                blurRadius: 5,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class DesignChallengeWidget extends StatelessWidget {
  const DesignChallengeWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff152436), Color(0xff2f4067), Color(0xff1b1e3d)])),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            width: 250,
            height: size.height * 0.62,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black12,
                boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(5, 5), blurRadius: 2, spreadRadius: 2)],
                border: Border.all(color: Colors.white10, width: 1)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  FlatButton(
                    child: Text(
                      "Challenge 1",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge01(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 2",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge02(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 3",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge03(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 4",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge04(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 5",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge05(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 6",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge06(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 7",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge07(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 8",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge08(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 9",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge09(),
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Challenge 10",
                      style: TextStyle(color: Colors.white54, fontSize: 18, fontFamily: "Futura-Light"),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignChallenge10(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
