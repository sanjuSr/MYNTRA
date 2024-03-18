import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
                icon: Icon(Icons.arrow_back)),
            Text("Categories",style: TextStyle(color: Colors.grey),),
            SizedBox(width: 110,),
            IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.heart)),
            IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bag)),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,

            child: Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 145,
                  width: 110,

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                          onTap: () {

                          },
                          child: Image.asset("assets/images/100.jpeg",fit: BoxFit.fill,))),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 145,
                  width: 110,

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                          onTap: () {

                          },
                          child: Image.asset("assets/images/101.jpeg",fit: BoxFit.fill,))),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 145,
                  width: 110,

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                          onTap: () {

                          },
                          child: Image.asset("assets/images/102.jpeg",fit: BoxFit.fill,))),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,

            child: Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 145,
                  width: 110,

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                          onTap: () {

                          },
                          child: Image.asset("assets/images/100.jpeg",fit: BoxFit.fill,))),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 145,
                  width: 110,

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                          onTap: () {

                          },
                          child: Image.asset("assets/images/101.jpeg",fit: BoxFit.fill,))),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 145,
                  width: 110,

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                          onTap: () {

                          },
                          child: Image.asset("assets/images/102.jpeg",fit: BoxFit.fill,))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

