import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignChallenge08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Design Challenge Eight",
        home: Scaffold(backgroundColor: Color(0xFFededed), body: Challenge08Widget()));
  }
}

class Challenge08Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Challenge08Header(size: size),
          Challenge08Body(size: size),
          SizedBox(
            height: 75,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF063e67), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 25,
              ),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}

class Challenge08Body extends StatelessWidget {
  const Challenge08Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width,
          height: 150,
          decoration: BoxDecoration(color: Color(0xFFededed)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFFf8f8f8), boxShadow: [
                    BoxShadow(
                      color: Color(0xFFeaeaea),
                      blurRadius: 2,
                      spreadRadius: 10,
                    )
                  ]),
                  child: Icon(
                    Icons.credit_card,
                    color: Color(0xFF0a5993),
                    size: 40,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add Credit Card",
                      style: TextStyle(color: Color(0xFFacacac), fontFamily: "LatoBlack"),
                    ),
                    Text(
                      "Add more payment methods",
                      style: TextStyle(color: Color(0xFFacacac), fontFamily: "LatoRegular"),
                    )
                  ],
                ),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xFFacacac),
                )
              ],
            ),
          ),
        ),
        Container(
          width: size.width,
          height: 150,
          decoration: BoxDecoration(color: Color(0xFFf8f8f8)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xFF063e67), Color(0xFF0e82c1)],
                    ),
                  ),
                  child: Icon(
                    FontAwesomeIcons.euroSign,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Request",
                      style: TextStyle(color: Colors.black, fontFamily: "LatoBlack"),
                    ),
                    Text(
                      "Ask someone for a loan",
                      style: TextStyle(color: Colors.black, fontFamily: "LatoRegular"),
                    )
                  ],
                ),
                Transform.rotate(
                    angle: 3.142 / 2,
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
        ),
        Container(
          width: size.width,
          height: 150,
          decoration: BoxDecoration(color: Color(0xFFededed)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFFf8f8f8), boxShadow: [
                    BoxShadow(
                      color: Color(0xFFeaeaea),
                      blurRadius: 2,
                      spreadRadius: 10,
                    )
                  ]),
                  child: Icon(
                    FontAwesomeIcons.link,
                    color: Color(0xFF0a5993),
                    size: 30,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Link a new account",
                      style: TextStyle(color: Color(0xFFacacac), fontFamily: "LatoBlack"),
                    ),
                    Text(
                      "Add a new social media",
                      style: TextStyle(color: Color(0xFFacacac), fontFamily: "LatoRegular"),
                    )
                  ],
                ),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xFFacacac),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Challenge08Header extends StatelessWidget {
  const Challenge08Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      clipper: CustomClipPath08(size: size),
      boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 0.0),
          blurRadius: 5,
          spreadRadius: 5,
          color: Colors.black26,
        )
      ],
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: size.width,
          height: size.height * 0.25,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [Color(0xFF063e67), Color(0xFF0e82c1)])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Colors.white, size: 30),
                Text(
                  "User Profile (Add)",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "LatoRegular"),
                ),
                Icon(Icons.menu, color: Colors.white, size: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath08 extends CustomClipper<Path> {
  Size size;

  CustomClipPath08({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, 10)
      ..quadraticBezierTo(0, 0, 10, 0)
      ..lineTo(width - 10, 0)
      ..quadraticBezierTo(width, 0, width, 10)
      ..lineTo(width, height - 15)
      ..quadraticBezierTo(width - 50, height + 10, width - 75, height - 15)
      ..quadraticBezierTo(width - 125, height - 75, width - 175, height - 25)
      ..quadraticBezierTo(width - 200, height - 10, width - 225, height - 25)
      ..quadraticBezierTo(width - 350, height - 75, 0, height - 25);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
