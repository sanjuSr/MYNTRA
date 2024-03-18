import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:myntra/UI/Pages/Home/MyntraButton.dart';
import 'package:myntra/UI/Pages/Home/Shopping-bag.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
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

  final List<Widget> sliders = [
    Container(
        child: Image.asset("assets/images/slide1.jpeg",fit:BoxFit.fill,)
    ),
    Container(

        child: Image.asset("assets/images/slide2.jpeg",fit:BoxFit.fill,)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyntraButton()));
              },
              child: Container(
                height: 40,
                width: 81,
                child: Row(
                  children: [
                    Text(
                      "Myntra",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 130),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sBag(accessedFrom: 'New'),
                  ),
                );
              },
              icon: Icon(Icons.shopping_bag_outlined),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/star.jpeg"),
            Center(
              child: FlutterCarousel(
                items: sliders,
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  // enlargeCenterPage: true,
                  viewportFraction: 1,
                  height: 430.0,
                  slideIndicator: CircularSlideIndicator(),
                ),
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(child: Image.asset("assets/images/ni.jpeg")),
            SizedBox(height: 10,),
            Image.asset("assets/images/one.jpeg"),
            SizedBox(height: 10,),
            Image.asset("assets/images/two.jpeg"),
            SizedBox(height: 10,),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Image.asset("assets/images/exe1.png"),
              ),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s1.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s2.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s3.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s4.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s5.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s6.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s7.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s8.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s9.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.white,
                    child:  Image.asset("assets/images/s10.jpeg",fit:BoxFit.fill,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Image.asset("assets/images/m1.jpeg"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 8,),
                  Container(
                    height: 220,
                    width: 190,
                    color: Colors.red,
                    child:  Image.asset("assets/images/s11.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 220,
                    width: 190,
                    color: Colors.red,
                    child:  Image.asset("assets/images/s12.jpeg",fit:BoxFit.fill,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 220,
                    width: 190,
                    color: Colors.red,
                    child:  Image.asset("assets/images/s13.jpeg",fit:BoxFit.fill,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("Shoes transform your body language and attitude.They lift",
                style: TextStyle(
                    fontSize: 13
                ),),
            ),
            Center(
              child: Text("you physically and emotionally.",style: TextStyle(
                  fontSize: 13
              ),),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text("Christian Louboutin",style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[500]
              ),),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
