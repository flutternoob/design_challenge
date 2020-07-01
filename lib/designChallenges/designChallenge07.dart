import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clip_shadow/clip_shadow.dart';

class DesignChallenge07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "Design Challenge Seven", home: Scaffold(body: Challenge07Widget()));
  }
}

class Challenge07Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [Challenge07Content(size: size), Challenge07Header(size: size)],
    );
  }
}

class Challenge07Content extends StatelessWidget {
  const Challenge07Content({
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
              begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [Color(0xFF090b16), Color(0xFF111629)])),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.5),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 20),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.checkSquare,
                  color: Color(0xFF848498),
                  size: 18,
                ),
                Text(
                  "    Personal Information",
                  style: TextStyle(color: Color(0xFF848498), fontFamily: "DINPro-BoldItalic"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20.0, 20),
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: 90,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width * 0.875,
                          height: 75,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(colors: [Color(0xFF18181e), Color(0xFF31313d)])),
                          child: ListTile(
                            title: Text(
                              "MOBILE NUMBER",
                              style: TextStyle(color: Colors.white70, fontSize: 14, fontFamily: "LatoBlack"),
                            ),
                            subtitle: Text(
                              "06 18 58 92 68",
                              style: TextStyle(color: Color(0xFF848498), fontSize: 14, fontFamily: "LatoRegular"),
                            ),
                            leading: FaIcon(
                              FontAwesomeIcons.mobileAlt,
                              size: 35,
                              color: Colors.white70,
                            ),
                            trailing: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              color: Colors.green[700],
                              onPressed: () {},
                              child: Text(
                                "UPGRADE",
                                style: TextStyle(fontSize: 10, fontFamily: "DINPro-Bold"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: size.height * 0.08,
                        left: size.width * 0.855,
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xFF090b16),
                                shape: BoxShape.circle,
                                border: Border.all(color: Color(0xFF31313d), width: 2)),
                            child: Icon(Icons.close, color: Colors.white, size: 10)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(colors: [Color(0xFF18181e), Color(0xFF31313d)])),
              child: ListTile(
                title: Text(
                  "ENTER AMOUNT",
                  style: TextStyle(color: Color(0xFF848498), fontSize: 14, fontFamily: "LatoBlack"),
                ),
                subtitle: Text(
                  r"""$00.00""",
                  style: TextStyle(color: Color(0xFF848498), fontSize: 14, fontFamily: "LatoRegular"),
                ),
                leading: Icon(
                  FontAwesomeIcons.wallet,
                  size: 30,
                  color: Color(0xFF848498),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "CHANGE",
                      style: TextStyle(color: Color(0xFF848498), fontSize: 10, fontFamily: "DINPro-Bold"),
                    ),
                    Container(
                      width: 75,
                      height: 2,
                      color: Color(0xFF848498),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: Container(
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(colors: [Color(0xFF18181e), Color(0xFF31313d)])),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 100),
                    Text(
                      "CONFIRM NOW!",
                      style: TextStyle(color: Color(0xFF848498), fontSize: 14, fontFamily: "DINPro-Bold"),
                    ),
                    SizedBox(width: 95),
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF848498)),
                        child: Icon(Icons.play_arrow, color: Colors.black, size: 16))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Challenge07Header extends StatelessWidget {
  const Challenge07Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      clipper: CustomClipPath07(),
      boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 0.0),
          blurRadius: 5,
          spreadRadius: 5,
          color: Colors.black54,
        )
      ],
      child: ClipPath(
        child: Container(
          width: size.width,
          height: size.height * 0.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Color(0xFF18181e), Color(0xFF31313d)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xFF848498),
                    ),
                    Text(
                      "PAYMENTS",
                      style: TextStyle(color: Color(0xFF848498), fontFamily: "DINPro-Bold"),
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Color(0xFF848498),
                    ),
                  ],
                ),
              ),
              Challenge07Card(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Challenge07Card extends StatelessWidget {
  const Challenge07Card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 10,
        color: Colors.transparent,
        child: Container(
          width: 285,
          height: 155,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/payments-card.png"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, bottom: 20),
                child: Text(
                  "myBank.com",
                  style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "DINPro-Light"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  r"""$  6,089.56""",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "DINPro-Light"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("....  ....  ....",
                        style: TextStyle(color: Colors.white, fontSize: 40, height: 0, fontFamily: "DINPro-Light")),
                    Text(
                      "    1234",
                      style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "DINPro-Light"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "DINPro-Light"),
                    ),
                    Text(
                      "22/11",
                      style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "DINPro-Light"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipPath07 extends CustomClipper<Path> {
  Size size;

  CustomClipPath07({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(width, 0)
      ..lineTo(width, height - 30)
      ..quadraticBezierTo(width - 40, height, width - 80, height)
      ..quadraticBezierTo(width - 130, height, width - 250, height - 30)
      ..quadraticBezierTo(width - 310, height - 40, 0, height - 10)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
<path d="
    //Move to the origin of the Container
    M0 0
    //Draw line across the width from the top left to the top right
    L412 0
    //Draw the line from top right to the bottom right
    L412 377
    //Draw the first quadratic bezier from the bottom right
  	Q382 407 332 407
  	//Draw the second quadratic bezier
    Q292 407 162 377
    //Draw the last quadratic bezier
    Q102 367 0 397" />
*/
