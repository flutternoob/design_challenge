import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';

class DesignChallenge10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Ten",
      home: Scaffold(body: Challenge10Widget()),
    );
  }
}

class Challenge10Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Challenge10Header(size: size),
          Challenge10Content(),
          Challenge10MusicControls()
        ],
      ),
    );
  }
}

class Challenge10MusicControls extends StatefulWidget {

  @override
  _Challenge10MusicControlsState createState() => _Challenge10MusicControlsState();
}

class _Challenge10MusicControlsState extends State<Challenge10MusicControls> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderThemeData(
            inactiveTrackColor: Colors.grey[200],
            activeTrackColor: Color(0xFF710404),
            thumbColor: Color(0xFF710404),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7.5)
          ),
            child: Slider(
              value: value,
              min: 0,
              max: 10,
              onChangeStart: (startValue){},
              onChangeEnd: (endValue){},
              onChanged: (changedValue) => setState(() => value = changedValue),
            ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2:37", style: TextStyle(color: Colors.grey[400], fontSize: 12, fontFamily: "LatoRegular"),),
              Text("5:12", style: TextStyle(color: Colors.grey[400], fontSize: 12, fontFamily: "LatoRegular"),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.refresh, color: Colors.grey),
              Icon(Icons.skip_previous, color: Colors.grey, size: 40),
              Icon(Icons.pause_circle_outline, color: Color(0xFF710404), size: 70),
              Icon(Icons.skip_next, color: Color(0xFF710404), size: 40),
              Icon(Icons.favorite, color: Colors.grey),
            ],
          ),
        )
      ],
    );
  }
}

class Challenge10Content extends StatelessWidget {
  const Challenge10Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFFe0e0e0), width: 5),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 20, spreadRadius: 20)]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("LOREM IPSUM DOLOR", style: TextStyle(fontFamily: "LatoBlack", fontSize: 20)),
        ),
        Text("Lorem ipsum dolor sit (2012)",
            style: TextStyle(color: Color(0xFF710404), fontFamily: "LatoBold", fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "01. Lorem ipsum dolor sit amet",
            style: TextStyle(fontFamily: "LatoRegular", fontSize: 12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            "Lorem ipsum sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor amet",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[400], fontFamily: "LatoRegular", fontSize: 12),
          ),
        )
      ],
    );
  }
}

class Challenge10Header extends StatelessWidget {
  const Challenge10Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      clipper: Challenge10HeaderClipPath(size: size),
      boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 0.0),
          blurRadius: 5,
          spreadRadius: 5,
          color: Colors.black26,
        )
      ],
      child: ClipPath(
        child: Container(
          width: size.width,
          height: size.height * 0.2,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF710404), Color(0xFFa90806)])),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.white),
                Text(
                  "My Playlist",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "LatoBlack"),
                ),
                Icon(Icons.menu, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Challenge10HeaderClipPath extends CustomClipper<Path> {
  Size size;

  Challenge10HeaderClipPath({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, 10)
      ..quadraticBezierTo(0, 0, 10, 0)
      ..lineTo(width - 10, 0)
      ..quadraticBezierTo(width, 0, width, 10)
      ..lineTo(width, height - 82)
      ..quadraticBezierTo(width - 50, height - 10, width - 90, height - 10)
      ..quadraticBezierTo(width - 130, height - 10, width - 260, height - 40)
      ..quadraticBezierTo(width - 308, height - 50, 0, height)
      ..lineTo(0, 10)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
<svg height="184" width="412">
  <path d="M0 10
  Q0 0 10 0
  L402 0
  Q412 0 412 10
  L412 102
  Q372 174 322 174
  Q292 174 162 144
  Q102 134 0 184" />
</svg>
*/
