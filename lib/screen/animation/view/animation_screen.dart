import 'package:flutter/material.dart';

class Animatoin_screen extends StatefulWidget {
  const Animatoin_screen({Key? key}) : super(key: key);

  @override
  State<Animatoin_screen> createState() => _Animatoin_screenState();
}

class _Animatoin_screenState extends State<Animatoin_screen> {
  bool isAni = false;
  bool isOpe = false;
  bool isCon = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          elevation: 0,
          title: Text("Animation"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              AnimatedAlign(
                duration: Duration(seconds: 2),
                alignment:
                    isAni == false ? Alignment.topLeft : Alignment.topRight,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isAni ? Colors.white : Colors.red),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isAni = !isAni;
                  });
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isAni ? Colors.white : Colors.red),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "start",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: isOpe == false ? 0 : 1,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: isOpe ? Colors.green : Colors.white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isOpe = !isOpe;
                  });
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isOpe ? Colors.green : Colors.white),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Opacity",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(isCon ? 100 : 0),
                    color: isCon == false ? Colors.white : Colors.yellow),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isCon = !isCon;
                  });
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isCon == false ? Colors.white : Colors.yellow),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Container",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
