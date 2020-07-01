import 'package:flutter/material.dart';

class DesignChallenge02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Two",
      home: Scaffold(
        body: Challenge02Widget(),
      ),
    );
  }
}

class Challenge02Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [HeaderWidget(size: size), BodyWidget(size: size), FooterWidget(size: size)],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: size.height * 0.1,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 50),
                child: Text(
                  "Don't have account?",
                  style: TextStyle(color: Colors.grey, fontFamily: "ProximaNova-Regular", fontSize: 20),
                ),
              ),
              Container(
                width: 1,
                height: 80,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Color(0xFF5a7af3), fontFamily: "ProximaNova-Regular", fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.55,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: TextField(
              style: TextStyle(color: Colors.blue, fontFamily: "ProximaNova-Regular"),
              controller: TextEditingController(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: TextField(
              controller: TextEditingController(),
              obscureText: true,
              style: TextStyle(fontFamily: "ProximaNova-Regular"),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 30,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 20),
            child: Row(
              children: [
                Icon(Icons.lock_outline),
                Text(
                  " We believe in privacy.",
                  style: TextStyle(fontFamily: "ProximaNova-Regular"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 40),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [BoxShadow(color: Color(0xFFe2e8eb), spreadRadius: 10, blurRadius: 10)]),
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                color: Color(0xFF5a7af3),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "ProximaNova-Regular"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.35,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.4, 1],
          colors: [Color(0xFF5a7af3), Color(0xFF8393d0)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign In",
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xFFd4dbf5), fontSize: 50, fontFamily: "ProximaNova-Semibold"),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Get maximum result with minimal effort\nwith ",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "ProximaNova-Regular"),
                  ),
                  TextSpan(
                    text: "Apperto UI Kit.",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "ProximaNova-Semibold"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
