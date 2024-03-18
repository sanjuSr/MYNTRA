import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Brand/Brands.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';
import 'package:myntra/UI/Pages/New/New.dart';

class sBag extends StatefulWidget {
  final String accessedFrom;

  const sBag({Key? key, required this.accessedFrom}) : super(key: key);

  @override
  State<sBag> createState() => _sBagState();
}

class _sBagState extends State<sBag> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(accessedFrom: widget.accessedFrom),
    );
  }
}

class home extends StatefulWidget {
  final String accessedFrom;

  const home({Key? key, required this.accessedFrom}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  if (widget.accessedFrom == 'home') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  } else if (widget.accessedFrom == 'New') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => New(),
                      ),
                    );
                  }else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => brand(),
                      ),
                    );
                  }
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(width: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "SHOPPING BAG",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 120,),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
            ],
          ),
          SizedBox(height: 60,),
          Center(child: Image.asset("assets/images/bag.png",width: 200,)),
          SizedBox(height: 30,),
          Center(
            child: Text(
              "Hey, it feel so light",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Text("There is nothing in your bag.let's add some items."),
          ),
        ],
      ),
    );
  }
}
