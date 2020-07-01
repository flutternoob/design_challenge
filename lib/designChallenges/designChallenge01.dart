import 'package:flutter/material.dart';

class DesignChallenge01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge One",
      home: Scaffold(
        body: Challenge01Widget(),
      ),
    );
  }
}

class Challenge01Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [TopPartWidget(size: size), BottomPartWidget(size: size)],
        ),
        Positioned(
          left: size.width * 0.75,
          top: size.height * 0.715,
          child: FloatingActionButton(
            elevation: 10,
            child: Icon(
              Icons.add,
              size: 40,
            ),
            backgroundColor: Colors.blue,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class TopPartWidget extends StatelessWidget {
  const TopPartWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.75,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF1b5e81).withBlue(200).withGreen(175),
            ),
            child: Opacity(
              opacity: 0.75,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.fill)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [0.7, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black])),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "27°",
              style: TextStyle(fontSize: 150, color: Colors.white, fontFamily: "BrandonGrotesque-Black"),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("ANN ARBOR, MI",
                  style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "BrandonGrotesque-Black")),
            ),
          )
        ],
      ),
    );
  }
}

class BottomPartWidget extends StatelessWidget {
  const BottomPartWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.25,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("Today", style: TextStyle(fontSize: 18),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("-10/35°", style: TextStyle(fontSize: 18),),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.cloud_queue, size: 26)
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("Tonight", style: TextStyle(fontSize: 18),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("-7/27°", style: TextStyle(fontSize: 18),),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.cloud_queue, size: 26,)
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
