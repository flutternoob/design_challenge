import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:clip_shadow/clip_shadow.dart';

class DesignChallenge09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Nine",
      home: Scaffold(
        body: Challenge09Widget(),
      ),
    );
  }
}

class Challenge09Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Challenge09Background(),
        Challenge09Header(size: size),
        Challenge09Content(size: size),
        Challenge09Footer(size: size)
      ],
    );
  }
}

class Challenge09Footer extends StatelessWidget {
  const Challenge09Footer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          ClipPath(
            clipper: FooterTopHalfClipper(size: size),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height*0.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF103be5), Color(0xFF1f6fe5)]
                    )
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: FooterBottomHalfClipper(size: size),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height*0.2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF0e35ce), Color(0xFF1a5bce)]
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterBottomHalfClipper extends CustomClipper<Path> {

  Size size;

  FooterBottomHalfClipper({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, height-62)
      ..lineTo(0, height-65)
      ..quadraticBezierTo(width-320, height-45, width-250, height-80)
      ..quadraticBezierTo(width-220, height-90, width-150, height-55)
      ..quadraticBezierTo(width-120, height-45, width-90, height-70)
      ..quadraticBezierTo(width-40, height-180, width, height-60)
      ..lineTo(width, height)
      ..quadraticBezierTo(width, height, width-10, height)
      ..lineTo(width-400, height)
      ..quadraticBezierTo(0, height, 0, height-7)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
Footer Bottom half path:
<svg height="230" width="412" fill="none" stroke="blue">
  <path d="M0 105/2
  		   L0 100/2
           Q92 140/2 162 70/2
           Q192 50/2 262 120/2
           Q292 140/2 322 90/2
           Q372 0?/2 412 110/2
           L412 215/2
           Q412 230/2 402 230/2
           L12 230/2
           Q0 230/2 0 215/2 Z"/>
</svg>
*/

class FooterTopHalfClipper extends CustomClipper<Path> {

  Size size;

  FooterTopHalfClipper({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, height-125)
      ..lineTo(0, height-130)
      ..quadraticBezierTo(width-320, height-90, width-250, height-160)
      ..quadraticBezierTo(width-220, height-180, width-150, height-110)
      ..quadraticBezierTo(width-120, height-90, width-90, height-140)
      ..quadraticBezierTo(width-40, height-260, width, height-120)
      ..lineTo(width, height)
      ..quadraticBezierTo(width, height, width-10, height)
      ..lineTo(width-400, height)
      ..quadraticBezierTo(0, height, 0, height-15)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
Footer Top half path:
<svg height="230" width="412" fill="none" stroke="blue">
  <path d="M0 105
  		   L0 100
           Q92 140 162 70
           Q192 50 262 120
           Q292 140 322 90
           Q372 0 412 110
           L412 215
           Q412 230 402 230
           L12 230
           Q0 230 0 215 Z"/>
</svg>
*/

class Challenge09Content extends StatelessWidget {
  const Challenge09Content({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: size.width,
        height: size.height*0.48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DottedBorder(
              color: Colors.white,
              dashPattern: [8, 4],
              strokeWidth: 2,
              child: Container(
                width: size.width*0.6,
                height: size.height*0.13,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("TOTAL AMOUNT", style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "LatoBlack"),),
                    Text("1199.00 €", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "LatoRegular"),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/shield.png"),
                  )
                ),
              ),
            ),
            Text("Successfully", style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "LatoBlack")),
            Text("Sent!", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "LatoRegular"),),
          ],
        ),
      ),
    );
  }
}

class Challenge09Header extends StatelessWidget {
  const Challenge09Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      clipper: HeaderClipPath(size: size),
      boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 0.0),
          blurRadius: 5,
          spreadRadius: 5,
          color: Colors.black12,
        )
      ],
      child: ClipPath(
        child: Container(
          height: size.height*0.2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1f148a), Color(0xFF5d3cd8)]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back, color: Colors.white, size: 24,),
                Text("Payment Verified", style: TextStyle(color: Colors.white, fontFamily: "LatoBlack", fontSize: 16),),
                SizedBox(width: 30),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class Challenge09Background extends StatelessWidget {
  const Challenge09Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1242ff), Color(0xFF38c0ff)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        )
      ),
    );
  }
}

class HeaderClipPath extends CustomClipper<Path>{

  Size size;

  HeaderClipPath({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, 10)
      ..quadraticBezierTo(0, 0, 10, 0)
      ..lineTo(width-10, 0)
      ..quadraticBezierTo(width, 0, width, 10)
      ..lineTo(width, height-30)
      ..quadraticBezierTo(width-50, height-20, width-80, height-40)
      ..quadraticBezierTo(width-100, height-50, width-140, height-10)
      ..quadraticBezierTo(width-170, height+10, width-200, height-20)
      ..quadraticBezierTo(width-230, height-50, width-250, height-20)
      ..quadraticBezierTo(width-270, height, width-310, height-30)
      ..quadraticBezierTo(width-350, height-60, 0, height-30)
      ..lineTo(0, 10)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
Header path:
<svg height="230" width="412" fill="none" stroke="blue">
  <path d="M0 10
  		  Q0 0 10 0
          L402 0
          Q412 0 412 10
          L412 200
          Q372 210 332 190
          Q312 180 282 220
          Q252 240 212 190
          Q192 180 162 210
          Q132 225 102 200
          Q72 170 0 200
          L0 10 Z"/>
</svg>
*/