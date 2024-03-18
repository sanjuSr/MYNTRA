import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/other/login.dart';
import 'package:myntra/UI/Pages/other/steal&deals.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:card_swiper/card_swiper.dart';

import '../profile/logins.dart';


class fashion extends StatelessWidget {
  const fashion({super.key});

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

  List<String> images1 = [
    "assets/images/61.jpeg",
    "assets/images/62.jpeg",
    "assets/images/63.jpeg",
    "assets/images/64.jpeg",
    "assets/images/65.jpeg",
    "assets/images/66.jpeg",
    "assets/images/67.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => shirt()));
                        },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                          children:[ Column(
                            children: [
                              SizedBox(height: 15,),
                              Container(
                                decoration:BoxDecoration(
                                  color: Colors.blue[200],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)
                                  )
                                ) ,
                                height: 65,
                                width: 85,
                                // child: Image.asset("assets/images/shirt1.png",),
                              ),
                              Center(child: Text("Shirts",
                              style: TextStyle(
                                color: Colors.brown[500]
                              ),))
                            ],
                          ),
                            Positioned(child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Image.asset("assets/images/shirt1.png",height: 80,width: 65,),
                            ))
                      ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => shirt()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("T-Shirts",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Image.asset("assets/images/tshirt.png",height: 80,width: 85,))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Jeans",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset("assets/images/jeans.png",height: 80,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Casual Shoes",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(left: 5,top: 10),
                                child: Image.asset("assets/images/nike.png",height: 80,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                  //      Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Sports Shoes",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: Image.asset("assets/images/adidas.png",height: 80,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                     //   Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Trousers",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(
                                child: Image.asset("assets/images/trou.png",height: 80,width: 85,),
                              )
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Flip-Flop",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top: 8),
                                child: Image.asset("assets/images/flip.png",height: 80,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                   //     Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Headphones",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top: 5),
                                child: Image.asset("assets/images/airpod.png",height: 70,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                  //      Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Perfumes",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top: 5),
                                child: Image.asset("assets/images/spry.png",height: 80,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                  //      Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Watches",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top: 5),
                                child: Image.asset("assets/images/watch.png",height: 70,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                  //      Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Center(child: Text("Kurta Sets",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),))
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset("assets/images/kurtha.png",height: 80,width: 65,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                 //       Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Dresses",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Image.asset("assets/images/dre.png",height: 80,width: 85,))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                //        Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Kurtas",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset("assets/images/kur.png",height: 75,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                //        Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("T-shits",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image.asset("assets/images/ts.png",height: 70,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
               //         Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Jeans",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(
                                child: Image.asset("assets/images/lj.png",height: 80,width: 85,),
                              )
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
            //            Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Kids Wear",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(
                                child: Image.asset("assets/images/kids.png",height: 80,width: 85,),
                              )
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
              //          Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Sarees",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(
                                child: Image.asset("assets/images/sare.png",height: 80,width: 85,),
                              )
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                 //       Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Heals",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top: 15),
                                child: Image.asset("assets/images/heal.png",height: 70,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                   //     Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Handbags",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top: 5),
                                child: Image.asset("assets/images/bag1.png",height: 80,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                  //      Navigator.push(context, MaterialPageRoute(builder: (context) => stealDeal()));
                      },
                      child: Container(
                        height: 100,
                        // color: Colors.green,
                        child: Stack(
                            children:[ Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  decoration:BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)
                                      )
                                  ) ,
                                  height: 65,
                                  width: 85,
                                  // child: Image.asset("assets/images/shirt1.png",),
                                ),
                                Text("Jewellery",
                                  style: TextStyle(
                                      color: Colors.brown[500]
                                  ),)
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only( top:20),
                                child: Image.asset("assets/images/je.png",height: 70,width: 85,),
                              ))
                            ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
              ),
              SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 17),
                  child: GestureDetector(
                    onTap: () {

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => login(),
                      //   ),
                      // );

                    },
                    child: Container(
                      height: 30,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 80,),
                          Text("Sign Up For Exciting Deals!",
                          style: TextStyle(
                            color: Colors.white
                          ),),
                          SizedBox(width: 5,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[500],
                            borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 10,),
              Container(
                height: 259,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  GestureDetector(
                      onTap: () {

                      },
                      child: Image.asset("assets/images/20.jpeg",fit: BoxFit.fill,)),
                  Positioned(child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 59),
                        child: GestureDetector(
                          onTap: () {

                          },
                            child: Image.asset("assets/images/21.jpeg",height: 140,)),
                      ),
                      SizedBox(width: 200,),
                      Padding(
                        padding: const EdgeInsets.only(top: 56),
                        child: GestureDetector(
                            child: GestureDetector(
                                onTap: () {

                                },
                                child: Image.asset("assets/images/22.jpeg",height: 140,))),
                      ),
                    ],
                  ),)
                ]
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      height: 100,
                      width: 250,
                      color: Colors.white,
                      child: Image.asset("assets/images/23.jpeg",fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 250,
                      color: Colors.white,
                      child: Image.asset("assets/images/24.jpeg",fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 250,
                      color: Colors.white,
                      child: Image.asset("assets/images/25.jpeg",fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 250,
                      color: Colors.white,
                      child: Image.asset("assets/images/26.jpeg",fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("CONTINUE BROWSING THESE BRANDS",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      height: 280,
                      width: 170,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/27.jpeg"),
                          SizedBox(height: 5,),
                          Text("TOMICA",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("TOY VEHICLES",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 280,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/28.jpeg"),
                          SizedBox(height: 5,),
                          Text("DREAMLAND",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("SCHOOL ESSENTIAL",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 280,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/29.jpeg"),
                          SizedBox(height: 5,),
                          Text("CARLTON LONDON",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("BOOTS",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 280,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/30.jpeg"),
                          SizedBox(height: 5,),
                          Text("RASH'EMS",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("TOY VEHICLES",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 280,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/31.jpeg"),
                          SizedBox(height: 5,),
                          Text("KALINI",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("KURTAS",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                    SizedBox(width: 20,)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Image.asset("assets/images/32.jpeg"),
              Row(
                children: [
                  SizedBox(width: 100,),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text("Deal Ends In"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: SlideCountdownSeparated(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange[500]
                      ),
                      duration: Duration(
                          hours: 2,
                          minutes: 59,
                          seconds: 59
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 300,
                  width: 925,
                  color: Colors.green[100],
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      height: 300,
                      width: 175,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/33.jpeg")),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 300,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/34.jpeg")),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 300,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/35.jpeg")),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 300,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/36.jpeg")),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 300,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/37.jpeg")),
                    ),
                    SizedBox(width: 15,)
                  ],
                ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("FEATURE BRANDS",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(width: 200,),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("AD",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      height: 270,
                      width: 220,
                      color: Colors.grey[300],
                       child: ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: Image.asset("assets/images/38.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 270,
                      width: 220,
                      color: Colors.grey[300],
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/39.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 270,
                      width: 220,
                      color: Colors.grey[300],
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/40.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 270,
                      width: 220,
                      color: Colors.grey[300],
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/41.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 270,
                      width: 220,
                      color: Colors.grey[300],
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/42.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 15,)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                color: Colors.lightBlueAccent[100],
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      child: Column(
                        children: [
                          Stack(
                            children:[ Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Text("TRENDING MEN'S WEAR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                    Image.asset("assets/images/43.png",height: 25,width: 25,)
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Text("Dapper Fits To Rocky Every Look!",style: TextStyle(fontSize: 12),),
                                    Image.asset("assets/images/44.png",height: 20,width: 20,),
                                    Image.asset("assets/images/45.png",height: 20,width: 20,)
                                  ],
                                ),
                              ],
                            ),
                              Positioned(child: Padding(
                                padding: const EdgeInsets.only(left: 260),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.pinkAccent,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                    onPressed: (){},
                                    child: Text("Explore More",style: TextStyle(fontSize: 12,color: Colors.white),)),
                              ))
                           ]
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/46.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Daily Wear"),
                                    Text("UNDER 499",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/47.jpeg")),
                                    SizedBox(height: 5),
                                    Text("Party Hits"),
                                    Text("UNDER 699",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/48.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Party Wear"),
                                    Text("UNDER 999",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/49.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Festive Fits"),
                                    Text("UNDER 799",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/50.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Casual Wear"),
                                    Text("UNDER 499",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/51.jpeg")),
                                    SizedBox(height: 5),
                                    Text("Activewear"),
                                    Text("UNDER 599",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/52.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Workwear"),
                                    Text("UNDER 799",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.lightBlueAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/53.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Innerwear"),
                                    Text("UNDER 399",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
                 Container(
                  height: 265,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.lightBlueAccent[100],
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("EXPLORE SUPER SAVER BEALS",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Image.asset("assets/images/55.png",height: 25,width: 25,),
                          Image.asset("assets/images/56.png",height: 25,width: 25,),
                        ],
                      ),
                     SizedBox(height: 15,),
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           SizedBox(width: 20,),
                           Container(
                             height: 200,
                             width: 160,
                             child:  Image.asset("assets/images/56.jpeg",fit: BoxFit.fill,),
                           ),
                           SizedBox(width: 10,),
                           Container(
                             height: 200,
                             width: 160,
                             color: Colors.red,
                             child:  Image.asset("assets/images/57.jpeg",fit: BoxFit.fill,),
                           ),
                           SizedBox(width: 10,),
                           Container(
                             height: 200,
                             width: 160,
                             child:  Image.asset("assets/images/58.jpeg",fit: BoxFit.fill,),
                           ),
                           SizedBox(width: 10,),
                           Container(
                             height: 200,
                             width: 160,
                             child:  Image.asset("assets/images/59.jpeg",fit: BoxFit.fill,),
                           ),
                           SizedBox(width: 10,),
                           Container(
                             height: 200,
                             width: 160,
                             child:  Image.asset("assets/images/60.jpeg",fit: BoxFit.fill,),
                           ),
                           SizedBox(width: 20,),
                         ],
                       ),
                     )
                    ],
                  ),
                ),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("POPULAR BRANDS",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 200,),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("AD",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 185,
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


              SizedBox(height: 15,),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                color: Colors.pinkAccent[100],
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      child: Column(
                        children: [
                          Stack(
                              children:[ Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Text("BEST SELLING WOMENS'S WEAR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                      Image.asset("assets/images/68.png",height: 20,width: 25,)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Text("Up Your Glamour Quotient!",style: TextStyle(fontSize: 12),),
                                      Image.asset("assets/images/44.png",height: 20,width: 20,),
                                      Image.asset("assets/images/45.png",height: 20,width: 20,)
                                    ],
                                  ),
                                ],
                              ),
                                Positioned(child: Padding(
                                  padding: const EdgeInsets.only(left: 260),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.pinkAccent,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                      ),
                                      onPressed: (){},
                                      child: Text("Explore More",style: TextStyle(fontSize: 12,color: Colors.white),)),
                                ))
                              ]
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/69.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Weds Wear"),
                                    Text("UNDER 1199",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/73.jpeg")),
                                    SizedBox(height: 5),
                                    Text("Ethnic Wear"),
                                    Text("UNDER 499",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/71.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Party Hits"),
                                    Text("UNDER 899",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/72.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Loungewear"),
                                    Text("UNDER 599",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/74.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Festive Fits"),
                                    Text("UNDER 999",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/75.jpeg")),
                                    SizedBox(height: 5),
                                    Text("Workwear"),
                                    Text("UNDER 499",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/76.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Casual Wear"),
                                    Text("UNDER 499",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 160,
                                width: 90,
                                color: Colors.pinkAccent[100],
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/images/77.jpeg")),
                                    SizedBox(height: 5,),
                                    Text("Sportswear"),
                                    Text("UNDER 599",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 265,
                width: MediaQuery.of(context).size.width,
                color: Colors.pinkAccent[100],
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("EXPLORE SUPER SAVER BEALS",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Image.asset("assets/images/55.png",height: 25,width: 25,),
                        Image.asset("assets/images/56.png",height: 25,width: 25,),
                      ],
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Container(
                            height: 200,
                            width: 160,
                            child:  Image.asset("assets/images/78.jpeg",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 160,
                            color: Colors.red,
                            child:  Image.asset("assets/images/79.jpeg",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 160,
                            child:  Image.asset("assets/images/80.jpeg",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 160,
                            child:  Image.asset("assets/images/82.jpeg",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 160,
                            child:  Image.asset("assets/images/82.jpeg",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('DISCOVER MYNTRA',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      height: 230,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/83.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 230,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/84.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 230,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/85.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 230,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/86.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 230,
                      width: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/87.jpeg",fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 20,)
                  ],
                ),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      )
    );
  }
}

