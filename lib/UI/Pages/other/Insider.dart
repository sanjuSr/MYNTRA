import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';
import 'package:myntra/UI/Pages/other/login.dart';

import '../profile/logins.dart';

class insider extends StatefulWidget {
  const insider({super.key});

  @override
  State<insider> createState() => _insiderState();
}

class _insiderState extends State<insider> {
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
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("MYNTRA INSIDER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      // backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.asset("assets/images/19.jpeg",fit: BoxFit.fill,)
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Column(
                children: [
                  Stack(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(top: 600),
                        child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        color: Colors.black,
                        child: Column(
                          children: [
                            SizedBox(
                              child: ElevatedButton(
                                  onPressed: (){

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => login(),
                                      ),
                                    );

                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:Colors.pinkAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  child: Text("LOG IN",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                              width: 350,
                            ),
                            SizedBox(height: 10,),
                            Text("By enrolling you agree to",style: TextStyle(color: Colors.grey),),
            
                            GestureDetector(
                              onTap: () {
            
                              },
                              child: Container(
                                child: Text("Insider Terms & Conditions",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
                              ),
                            )
                          ],
                        ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Positioned(
                            child: SizedBox(
                                child: Container(
                                  height: 600,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/images/88.jpeg"),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Become An INSIDER!",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 22),),
                                        ),
                                        SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Join the insider programme and earn",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Supercoins with every purchase and much",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("more.Log in now!",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("New Goal Criteria",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15,right: 15),
                                          child: Container(
                                            height: 160,
                                            width: 500,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.grey[800],
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(width: 10,),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 15),
                                                      child: Image.asset("assets/images/89.png",width: 40,height: 40,),
                                                    ),
                                                    SizedBox(width: 20,),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        Text("Rs.0",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                                                        Text("You've Spent",style: TextStyle(color: Colors.white),),
                                                      ],
                                                    ),
                                                    SizedBox(width: 140,),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        Text("Rs.4000",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                        SizedBox(height: 5,),
                                                        Text("Goal",style: TextStyle(color: Colors.white),)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 15,),
                                                Divider(height: 1,
                                                color: Colors.white,),
                                                Row(
                                                  children: [
                                                    SizedBox(width: 10,),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 15),
                                                      child: Image.asset("assets/images/89.png",width: 40,height: 40,),
                                                    ),
                                                    SizedBox(width: 20,),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        Text("0/2",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                                                        Text("Your Orders",style: TextStyle(color: Colors.white),),
                                                      ],
                                                    ),
                                                    SizedBox(width: 140,),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        Text("2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                        SizedBox(height: 5,),
                                                        Text("Goal",style: TextStyle(color: Colors.white),)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20,right: 10),
                                          child: Text("Note:Recent purchases will only reflect in the goal once the",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text("return window is over",style: TextStyle(color: Colors.grey,fontSize: 12)),
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Benefits Of Joining The Program",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 22),),
                                        ),
                                        SizedBox(height: 15,),
                                        Row(
                                          children: [
                                            SizedBox(width: 15,),
                                            Image.asset("assets/images/90.jpeg",height: 60,width: 60,),
                                            SizedBox(width: 10,),
                                            Text("Early Acess to The Sales",style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white
                                            ),)
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15,right: 15),
                                          child: Divider(color: Colors.grey,),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            SizedBox(width: 15,),
                                            Image.asset("assets/images/91.jpeg",height: 60,width: 60,),
                                            SizedBox(width: 10,),
                                            Text("Insider Exclusive Rewards & Benefits",style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white
                                            ),)
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15,right: 15),
                                          child: Divider(color: Colors.grey,),
                                        ),
                                        SizedBox(height: 15,),
                                        Row(
                                          children: [
                                            SizedBox(width: 15,),
                                            Image.asset("assets/images/92.jpeg",height: 60,width: 60,),
                                            SizedBox(width: 10,),
                                            Text("Free Shipping On All Purchases",style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white
                                            ),)
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("How does it work",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 22),),
                                        ),
                                        SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Earn SuperCoins With every purchase.",style: TextStyle(color: Colors.grey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("You can get upto 3 SuperCoins for every Rs.100 spent.",style: TextStyle(color: Colors.grey),),
                                        ),
                                        SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15,right: 15),
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(5),
                                              child: Image.asset("assets/images/93.jpeg")),
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Rewards",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 22),),
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Use your SuperCoins to get exciting rewards",style: TextStyle(color: Colors.grey),),
                                        ),
                                        SizedBox(height: 15,),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 15,),
                                              Container(
                                                height: 280,
                                                width: 280,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset("assets/images/94.jpeg",fit: BoxFit.fill,),
                                                ),
                                              ),SizedBox(width: 15,),
                                              Container(
                                                height: 280,
                                                width: 280,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset("assets/images/95.jpeg",fit: BoxFit.fill,),
                                                ),
                                              ),
                                              SizedBox(width: 15,),
                                              Container(
                                                height: 280,
                                                width: 280,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset("assets/images/96.jpeg",fit: BoxFit.fill,),
                                                ),
                                              ),
                                              SizedBox(width: 15,),
                                              Container(
                                                height: 280,
                                                width: 280,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset("assets/images/97.jpeg",fit: BoxFit.fill,),
                                                ),
                                              ),
                                              SizedBox(width: 15,),
                                              Container(
                                                height: 280,
                                                width: 280,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset("assets/images/98.jpeg",fit: BoxFit.fill,),
                                                ),
                                              ),
                                              SizedBox(width: 15,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Image.asset("assets/images/99.jpeg"),
                                        SizedBox(height: 15,)
                                        


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      )
                   ]
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
