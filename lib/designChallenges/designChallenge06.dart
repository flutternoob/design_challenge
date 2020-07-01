import 'package:flutter/material.dart';

class DesignChallenge06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Challenge Six",
      home: Scaffold(
        body: Challenge06Widget(),
      ),
    );
  }
}

class Challenge06Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Challenge06HeaderWidget(size: size),
            Container(
              height: size.height*0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("Departure", style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                              Text("Sun, 26 Mar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 1,
                          color: Colors.grey[300]
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 80.0, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("Return", style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                              Text("Mon, 27 Mar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Divider(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("What would you like to do...", style: TextStyle(color: Colors.grey),),
                  ),
                ],
              ),
            ),
            Challenge06FooterWidget(size: size)
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFFfe5933),
            child: Container(width: 40, height: 40,child: Image.asset("assets/images/globe.png")),
          ),
        )
      ],
    );
  }
}

class Challenge06FooterWidget extends StatelessWidget {
  const Challenge06FooterWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height*0.1,
      decoration: BoxDecoration(
        color: Color(0xFF133c8b)
      ),
      child: Center(child: Text("SEARCH", style: TextStyle(color: Colors.white),)),
    );
  }
}

class Challenge06HeaderWidget extends StatelessWidget {
  const Challenge06HeaderWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height*0.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/map.png"),
          fit: BoxFit.fill
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.menu, color: Colors.white, size: 25),
                SizedBox(width: size.width*0.25),
                Text("APP NAME", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 40),
            child: Text("WHERE DO YOU\nWANT TO GO?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 36),),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: "Enter Destination...",
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
                filled: true,
                prefixIcon: Icon(Icons.room, color: Color(0xFF1081e0), size: 34),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                )
              ),
            ),
          )
        ],
      )
    );
  }
}
