import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignChallenge05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Five",
      theme: ThemeData(primaryColor: Color(0xFF744240), cursorColor: Color(0xFF744240)),
      home: Scaffold(body: Challenge05widget()),
    );
  }
}

class Challenge05widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFF1b1b1b), Color(0xFF222222)])),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Challenge05LoginLogoWidget(),
            Challenge05SocialMedia(
              size: size,
            ),
            Challenge05TextFieldsWidget(),
            Challenge05ButtonsDividerWidget()
          ],
        ),
      ),
    );
  }
}

class Challenge05ButtonsDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          minWidth: 300,
          height: 50,
          onPressed: (){},
          color: Color(0xFF8fc153),
          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 22, fontFamily: "MuseoSans-300")),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Divider(
            color: Color(0xFF744240),
          ),
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          minWidth: 300,
          height: 50,
          onPressed: (){},
          color: Color(0xFFd5953b),
          child: Text("Create New Account", style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "MuseoSans-300")),
        ),
      ],
    );
  }
}


class Challenge05LoginLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20.0),
          child: Text(
            "Login to",
            style: TextStyle(color: Color(0xFF8fc153), fontFamily: "HelveticaNeue-Medium", fontSize: 24),
          ),
        ),
        Text("Logo", style: TextStyle(color: Colors.white, fontFamily: "MuseoSans-100", fontSize: 48)),
      ],
    );
  }
}


class Challenge05TextFieldsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
          child: TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              hintText: "Email",
                hintStyle: TextStyle(color: Colors.white, fontFamily: "MuseoSans-100", fontSize: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xFF744240), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xFF744240), width: 2))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white, fontFamily: "MuseoSans-100", fontSize: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xFF744240), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xFF744240), width: 2))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 60),
          child: Text(
            "I forgot my password?",
            style: TextStyle(color: Color(0xFF8fc153), fontFamily: "MuseoSans-100", fontSize: 20),
          ),
        ),
      ],
    );
  }
}

class Challenge05SocialMedia extends StatelessWidget {
  Size size;

  Challenge05SocialMedia({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "LOGIN WITH",
                style: TextStyle(color: Colors.white, fontFamily: "MuseoSans-300", fontSize: 12),
              ),
              Text(
                "FACEBOOK",
                style: TextStyle(color: Color(0xFF385aaf), fontFamily: "MuseoSans-300", fontSize: 12),
              )
            ],
          ),
          Container(
            width: 175,
            height: 100,
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xFF744240))),
                  child: Center(child: FaIcon(FontAwesomeIcons.facebookF, size: 40, color: Color(0xFF385aaf))),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Color(0xFF1f1f1f),
                      shape: BoxShape.circle,
                      //border: Border.all(color: Color(0xFF1b1b1b))
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF1f1f1f), shape: BoxShape.circle, border: Border.all(color: Color(0xFF744240))),
                    child: Center(child: FaIcon(FontAwesomeIcons.twitter, size: 40, color: Color(0xFF00b9ef))),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LOGIN WITH",
                style: TextStyle(color: Colors.white, fontFamily: "MuseoSans-300", fontSize: 12),
              ),
              Text(
                "TWITTER",
                style: TextStyle(color: Color(0xFF00b9ef), fontFamily: "MuseoSans-300", fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
