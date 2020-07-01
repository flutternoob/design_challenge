import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignChallenge03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Two",
      home: Scaffold(
        backgroundColor: Color(0xFF1f1e2c),
        body: Challenge03Widget(),
      ),
    );
  }
}

class Challenge03Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Challenge03Header(),
          Challenge03HeaderButtons(),
          Challenge03Body(),
          SizedBox(height: 25),
          Challenge03Footer(size: size)
        ],
      ),
    );
  }
}

class Challenge03Footer extends StatelessWidget {
  const Challenge03Footer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height*0.075,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        color: Color(0xFF0e0d13)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlatButton(
            onPressed: (){},
            color: Color(0xFF44404e),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),

            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.home, color: Colors.white, size: 12),
                Text("  Home", style: TextStyle(color: Colors.white, fontSize: 12),)
              ],
            )
          ),
          FlatButton(
              onPressed: (){},
              color: Color(0xFF44404e),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),

              child: Row(
                children: [
                  Icon(Icons.restaurant_menu, color: Colors.white, size: 12),
                  Text("  Menu", style: TextStyle(color: Colors.white, fontSize: 12),)
                ],
              )
          ),
          FlatButton(
              onPressed: (){},
              color: Color(0xFF44404e),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),

              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.search, color: Colors.white, size: 12),
                  Text("  Search", style: TextStyle(color: Colors.white, fontSize: 12),)
                ],
              )
          )
        ],
      ),
    );
  }
}

class Challenge03Body extends StatelessWidget {
  const Challenge03Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 422,
      child: Stack(
        children: [
          Container(
            width: 325,
            height: 422,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                image: DecorationImage(image: AssetImage("assets/images/Coffee1.png"), fit: BoxFit.none)),
          ),
          Container(
            width: 325,
            height: 422,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.black38),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFF1f1e2c),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "30%",
                    style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: "MyriadPro-Regular"),
                  ),
                  Text(
                    "Discount",
                    style: TextStyle(color: Color(0xFF81808e), fontSize: 8, fontFamily: "MyriadPro-Regular"),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Coffee", style: TextStyle(color: Colors.white, fontSize: 23, fontFamily: "MyriadPro-Bold"),),
                  Text("Fresh Drink", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "MyriadPro-Regular"),)
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Challenge03HeaderButtons extends StatelessWidget {
  const Challenge03HeaderButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlineButton(
            highlightedBorderColor: Color(0xFF81808e),
            borderSide: BorderSide(color: Color(0xFF81808e)),
            focusColor: Color(0xFF81808e),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Fresh Drink",
                style: TextStyle(color: Color(0xFF81808e), fontFamily: "MyriadPro-Regular"),
              ),
            ),
          ),
          OutlineButton(
            highlightedBorderColor: Color(0xFF81808e),
            borderSide: BorderSide(color: Color(0xFF81808e)),
            focusColor: Color(0xFF81808e),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Free Drink",
                style: TextStyle(color: Color(0xFF81808e), fontFamily: "MyriadPro-Regular"),
              ),
            ),
          ),
          OutlineButton(
            highlightedBorderColor: Color(0xFF81808e),
            borderSide: BorderSide(color: Color(0xFF81808e)),
            focusColor: Color(0xFF81808e),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Happy Hour",
                style: TextStyle(color: Color(0xFF81808e), fontFamily: "MyriadPro-Regular"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Challenge03Header extends StatelessWidget {
  const Challenge03Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tonight",
                  style: TextStyle(color: Colors.white, fontSize: 27, fontFamily: "MyriadPro-Bold"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Monday, Nov 25",
                    style: TextStyle(color: Color(0xFF81808e), fontSize: 11, fontFamily: "MyriadPro-Regular"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                width: 90,
                height: 135,
                decoration: BoxDecoration(
                    color: Color(0xFF302e3c),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(color: Color(0xFF1f1e2c), shape: BoxShape.circle),
                        child: Center(
                            child: Text(
                          "3",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                      Image.asset("assets/images/coffee-tray.png"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        r"""33$""",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "MyriadPro-Regular"),
                      ),
                    ),
                    Text("Total Price",
                        style: TextStyle(color: Color(0xFF81808e), fontSize: 8, fontFamily: "MyriadPro-Regular")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
