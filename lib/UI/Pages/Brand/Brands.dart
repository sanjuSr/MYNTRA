import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Home/MyntraButton.dart';
import 'package:myntra/UI/Pages/Home/Shopping-bag.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:card_swiper/card_swiper.dart';


class brand extends StatefulWidget {
  const brand({super.key});

  @override
  State<brand> createState() => _brandState();
}

class _brandState extends State<brand> {
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
        child: Image.asset("assets/images/b02.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/b09.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/b03.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/b019.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/b04.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/bo6.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/b07.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/b08.jpeg")
    ),
    Container(

        child: Image.asset("assets/images/bo5.jpeg")
    ),
  ];

  List<String> images1 = [
    "assets/images/b31.jpeg",
    "assets/images/b32.jpeg",
    "assets/images/b33.jpeg",
    "assets/images/b34.jpeg",
    "assets/images/b35.jpeg",
    "assets/images/b36.jpeg",
    "assets/images/b37.jpeg",
    "assets/images/b38.jpeg",
    "assets/images/b39.jpeg",
  ];

  List<String> images2 = [
    "assets/images/b82.jpeg",
    "assets/images/b83.jpeg",
    "assets/images/b84.jpeg",
    "assets/images/b85.jpeg",
    "assets/images/b86.jpeg",
    "assets/images/b87.jpeg",
  ];

  List<String> images3 = [
    "assets/images/12.jpeg",
    "assets/images/13.jpeg",
    "assets/images/14.jpeg",
  ];

  List<String> images4 = [
    "assets/images/15.jpeg",
    "assets/images/16.jpeg",
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
                    builder: (context) => sBag(accessedFrom: 'brand'),
                  ),
                );
              },
              icon: Icon(Icons.shopping_bag_outlined),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/b01.jpeg"),
            Center(
              child: FlutterCarousel(
                items: sliders,
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  // enlargeCenterPage: true,
                  viewportFraction:1 ,
                  height: 325,
                  slideIndicator: CircularSlideIndicator(
                    currentIndicatorColor: Colors.black,
                    indicatorBackgroundColor: Colors.grey
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("BRANDS IN THE SPOTLIGHT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontFamily: AutofillHints.creditCardName
              ),),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 165,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        images1[index],
                        // fit: BoxFit.fill,
                      );
                    },
                    itemCount: images1.length,
                    autoplay: true,
                    autoplayDelay: 3000,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.grey,
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("FRESH LAUNCHES",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b20.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("ADIDAS X Stella McCartney",
                            style: TextStyle(
                              fontSize: 12
                            ),),
                            SizedBox(width: 15,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b21.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Vibrant Ethnic Picks",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 55,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b22.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Trending Ethnic Style",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b23.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Stylish Ethinic Edit",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 65,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b24.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Dazzligly Sarees",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 75,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b25.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Freshest Ethnic Looks",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 45,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b26.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Modern Indian Wear",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b27.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Standout Accessories",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b28.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Stunning Jewellery",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 65,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b29.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Text("Bold/Body-Positive Styles",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 25,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("TRENDY WESTERN WEAR",style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 8,),
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/b40.jpeg")),
                      Center(child: Image.asset("assets/images/b43.png",height: 46,width: 46,)),
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/b41.jpeg")),
                      Center(child: Image.asset("assets/images/b45.jpeg",height: 47,width: 90,)),
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/b42.jpeg")),
                      Center(child: Image.asset("assets/images/b44.png",height: 45,width: 46,)),
                    ],
                  ),
                ),
                SizedBox(width: 8,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  width: 130,
                  child: Image.asset("assets/images/b46.jpeg") ,
                ),
                SizedBox(width: 6,),
                Container(
                  height: 160,
                  width: 120,
                  child: Image.asset("assets/images/b47.jpeg") ,
                ),
                SizedBox(width: 6,),
                Container(
                  height: 160,
                  width: 130,
                  child: Image.asset("assets/images/b48.jpeg") ,
                )
              ],
            ),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 8,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b50.jpeg")),
                  Center(child: Image.asset("assets/images/b49.png",height: 42,width: 90,)),
                ],
              ),
            ),
            SizedBox(width: 8,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b52.jpeg")),
                  Center(child: Image.asset("assets/images/b54.png",height: 46,width: 90,)),
                ],
              ),
            ),
            SizedBox(width: 8,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b51.jpeg")),
                  Center(child: Image.asset("assets/images/b55.png",height: 45,width: 80,)),
                ],
              ),
            ),
            SizedBox(width: 8,),
          ],
        ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("MOST LOVED ETHNIC WEAR",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b56.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Flaunt Your style",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 65,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b57.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Your Style Guide",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 65,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b58.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Ethinic Styles",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 84,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b59.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Trendy Ethnic Wear",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b60.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Regal Ethnic Picks",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 55,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b61.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Contemporary Ethnic",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 40,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b62.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Modern Ethnic Vibes",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 40,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b63.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Modern Indian Wear",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 40,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b64.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Exquisite Ethnic Wear",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 40,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b65.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Trending Ethnic Style",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 40,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15 ,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("STYLISH FOOTWEAR",style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),


            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b66.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Comfy&Fun!",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 90,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b67.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("One Shop For Trendy Fits",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 25),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b68.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("For Styles As Playful As You",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 7,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b69.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Fashion Is Comfort",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 60,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b70.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Hot To Trot",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 105,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("BEST SELLING SPORTS FITS",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  height: 180,
                  width: 180,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b73.jpeg")),
                ),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  height: 180,
                  width: 180,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b74.jpeg")),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  height: 180,
                  width: 180,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b75.jpeg")),
                ),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  height: 180,
                  width: 180,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/b76.jpeg")),
                )
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("INTERNATIONAL BRANDS",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b77.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Most-Coveted Styles",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b78.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Keep 'em Guessing",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 55),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b79.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Be Party Ready",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 77,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b80.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("In The Mood For Style",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 45,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b81.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("American Style",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 80,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("CUTE KIDS WEAR",style: TextStyle(fontWeight: FontWeight.bold),),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 200,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        images2[index],
                        // fit: BoxFit.fill,
                      );
                    },
                    itemCount: images2.length,
                    autoplay: true,
                    autoplayDelay: 3000,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.grey,
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("GLAM ESSENTIALS",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 380,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b88.jpeg",fit: BoxFit.fill,)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 380,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b89.jpeg",fit: BoxFit.fill,)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 380,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b90.jpeg",fit: BoxFit.fill,)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 380,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b91.jpeg",fit: BoxFit.fill,)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 380,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/b92.jpeg",fit: BoxFit.fill,)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("MUST-HAVE WATCHES & WEARABLES",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/1.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("As Timeless As You",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/2.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                             Text("Set The Right Mood",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 55),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/3.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Timeless Watches",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 60,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/4.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Groove To Your Own Beat",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 25,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/5.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Your Stylish Self",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 70,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/6.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("It's Show Time!",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 80,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("FOR #HOMELY VIBES",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 200,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        images3[index],
                        // fit: BoxFit.fill,
                      );
                    },
                    itemCount: images3.length,
                    autoplay: true,
                    autoplayDelay: 3000,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.grey,
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("POPULAR JEWELLERY PICKS",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/7.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Modern Accessories",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/8.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("A Sparkling Affair",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 55),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/9.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Standout Accessories",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 45,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/10.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Hand Crafted Jewellery",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 25,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // color: Colors.red,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/11.jpeg",height: 145,)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Best Of Jewellery",
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            SizedBox(width: 70,),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:  BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("BEST OF LINGERIE & LOUNGWEAR",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 160,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        images4[index],
                        // fit: BoxFit.fill,
                      );
                    },
                    itemCount: images4.length,
                    autoplay: true,
                    autoplayDelay: 3000,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.grey,
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Image.asset("assets/images/17.jpeg"),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("Style is a way to say who you are without having to speak"),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text("Rachel Zoe",
              style: TextStyle(color: Colors.grey[500]),),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

