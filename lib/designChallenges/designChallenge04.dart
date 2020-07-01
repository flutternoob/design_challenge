import 'package:flutter/material.dart';

class DesignChallenge04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Four",
      home: Scaffold(
        backgroundColor: Color(0xFF1f1e2c),
        body: Challenge04Widget(),
      ),
    );
  }
}

class Challenge04Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Challenge04Background(size: size),
          Challenge04Body(size: size),
          Challenge04CountWidget(size: size),
          Challenge04PayWidget(size: size)
        ],
      ),
    );
  }
}

class Challenge04PayWidget extends StatelessWidget {
  const Challenge04PayWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.81,
      left: size.width * 0.65,
      child: Container(
        width: 90,
        height: 150,
        decoration: BoxDecoration(color: Color(0xFF49465b), borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("assets/images/card-logo.png"),
            ),
            Text(
              "Mastercard",
              style: TextStyle(color: Color(0xFFa9a9b5), fontSize: 11, fontFamily: "MyriadPro-Regular"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Pay",
                style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "MyriadPro-Bold"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Challenge04CountWidget extends StatelessWidget {
  const Challenge04CountWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.42,
      left: size.width * 0.65,
      child: Container(
        width: 90,
        height: 150,
        decoration: BoxDecoration(color: Color(0xFF49465b), borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF312f3d)),
              child: Icon(Icons.add, color: Colors.white, size: 18),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF7c7797)),
              child: Center(
                  child: Text(
                "2",
                style: TextStyle(color: Colors.white, fontFamily: "MyriadPro-Semibold", fontSize: 18),
              )),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF312f3d)),
              child: Icon(Icons.remove, color: Colors.white, size: 18),
            )
          ],
        ),
      ),
    );
  }
}

class Challenge04Body extends StatelessWidget {
  const Challenge04Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height * 0.4,
                decoration: BoxDecoration(shape: BoxShape.rectangle, color: Color(0xFF0e0d13)),
              ),
            ),
            Positioned(
              top: size.height * 0.505,
              child: Align(
                alignment: Alignment.center,
                child: ClipPath(
                  clipper: CustomClipPath(size: size),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.4,
                    decoration: BoxDecoration(shape: BoxShape.rectangle, color: Color(0xFF1f1e2c)),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Menta Cocktail",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 24, fontFamily: "MyriadPro-Semibold")),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text("Fresh Drink",
                                    style: TextStyle(
                                        color: Color(0xFF81808e), fontSize: 11, fontFamily: "MyriadPro-Semibold")),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, top: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(color: Color(0xFF44404e)),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "25%",
                                      style: TextStyle(
                                          color: Color(0xFFa9a9b5), fontFamily: "MyriadPro-Regular", fontSize: 14),
                                    ),
                                    Text(
                                      "Fruit",
                                      style: TextStyle(
                                          color: Color(0xFF44404e), fontFamily: "MyriadPro-Regular", fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(color: Color(0xFF44404e)),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "25%",
                                      style: TextStyle(
                                          color: Color(0xFFa9a9b5), fontFamily: "MyriadPro-Regular", fontSize: 14),
                                    ),
                                    Text(
                                      "Water",
                                      style: TextStyle(
                                          color: Color(0xFF44404e), fontFamily: "MyriadPro-Regular", fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(color: Color(0xFF44404e)),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "25%",
                                      style: TextStyle(
                                          color: Color(0xFFa9a9b5), fontFamily: "MyriadPro-Regular", fontSize: 14),
                                    ),
                                    Text(
                                      "Fruit",
                                      style: TextStyle(
                                          color: Color(0xFF44404e), fontFamily: "MyriadPro-Regular", fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, top: 20),
                          child: Row(
                            children: [
                              Container(
                                  width: 150,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF15151f), borderRadius: BorderRadius.all(Radius.circular(10))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        r"""$8 """,
                                        style: TextStyle(
                                            color: Color(0xFF81808e), fontSize: 20, fontFamily: "MyriadPro-Regular"),
                                      ),
                                      Text(
                                        "Price x Drink",
                                        style: TextStyle(
                                            color: Color(0xFFa9a9b5), fontSize: 14, fontFamily: "MyriadPro-Regular"),
                                      )
                                    ],
                                  )),
                              SizedBox(width: 20),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF15151f), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      r"""$8    """,
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 20, fontFamily: "MyriadPro-Regular"),
                                    ),
                                    Text(
                                      "Total Price",
                                      style: TextStyle(
                                          color: Color(0xFFa9a9b5), fontSize: 14, fontFamily: "MyriadPro-Regular"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Challenge04Footer()
          ],
        ),
      ),
    );
  }
}

class Challenge04Footer extends StatelessWidget {
  const Challenge04Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    "Total Order",
                    style: TextStyle(color: Colors.white, fontFamily: "MyriadPro-Regular"),
                  ),
                ),
                Container(
                  width: 60,
                  height: 35,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(color: Color(0xFF1f1d28), shape: BoxShape.circle),
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ))),
                      ),
                      Align(alignment: Alignment.bottomCenter, child: Image.asset("assets/images/coffe-martini.png")),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Total Order",
                  style: TextStyle(color: Color(0xFF44404e), fontSize: 11, fontFamily: "MyriadPro-Regular"),
                )
              ]),
              SizedBox(width: 30),
              Column(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  r"""32$""",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "MyriadPro-Bold"),
                ),
                Text(
                  "Total Price",
                  style: TextStyle(color: Color(0xFF44404e), fontSize: 11, fontFamily: "MyriadPro-Regular"),
                )
              ])
            ],
          ),
        ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  Size size;

  CustomClipPath({this.size});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, height - (height - 20))
      ..quadraticBezierTo(width - (width - 10), 0, width - (width - 40), 0)
      ..lineTo(width - 40, 0)
      ..quadraticBezierTo(width - 20, 0, width, height - (height - 20))
      ..lineTo(width, height - 30)
      ..quadraticBezierTo(width - 10, height, width - 50, height)
      ..lineTo(30, height - 36)
      ..quadraticBezierTo(0, height - 46, 0, height - 66)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

/*Path reference
<svg height="286" width="412">
           1) Move to first co-ordinate
  <path d="M0 20
           2) Draw top left quadratic bezier
           Q10 0 40 0
           3) Line towards top right
           L372 0
           4) Draw top right quadratic bezier
           Q392 0 412 20
           5) Line towards bottom right
           L412 260
           6) Draw bottom right quadratic bezier
           Q402 286 372 286
           7) Line towards bottom left and slightly towards the top
           L30 250
           8) Draw bottom left quadratic bezier
           Q0 240 0 220
           9) Close the path
           Z" />
</svg>
//Path constructed at https://www.w3schools.com/graphics/tryit.asp?filename=trysvg_path
*/

class Challenge04Background extends StatelessWidget {
  const Challenge04Background({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width,
          height: 481,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Coffee2.png"), fit: BoxFit.fill)),
        ),
        Container(
          width: size.width,
          height: size.height - 481,
        ),
      ],
    );
  }
}
