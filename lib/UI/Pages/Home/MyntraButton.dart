import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';

class MyntraButton extends StatefulWidget {
  const MyntraButton({Key? key}) : super(key: key);

  @override
  State<MyntraButton> createState() => _MyntrButtonState();
}

class _MyntrButtonState extends State<MyntraButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              // Handle button press
              print("Button pressed");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 75,top: 30),
                    child: Image.asset(
                      "assets/images/Myntra.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Select Your Store",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: SizedBox(
               width: 350,
               child: ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child: GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                       },
                       child: Image.asset("assets/images/b1.jpeg")))),
         ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
                width: 350,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Image.asset("assets/images/b2.jpeg")))),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
                width: 350,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Image.asset("assets/images/b4.jpeg")))),
          ),
        ],
      ),
    );
  }
}
