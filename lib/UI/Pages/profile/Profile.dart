import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/other/login.dart';

import 'logins.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
        backgroundColor: Colors.white,
        title: Text("Profile",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color:Colors.grey[800]
                      ),
                    ),
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color:Colors.white
                      ),
                    ),
                  ],
                ),
                Positioned(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 20),
                      child: Container(
                        height: 120,
                        width:120 ,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.person_2_outlined,size: 80,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 125),
                      child: SizedBox(
                        width: 220,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                backgroundColor: Colors.pinkAccent[400]
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => login(),
                                ),
                              );
                                                      },
                            child: Text("LOG IN/SIGN UP",
                              style: TextStyle(
                                  color: Colors.white
                              ),)),
                      ),
                    )
                  ],
                ),
                )
              ],
            ),
            Container(
              height: 15,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
            ),
            SizedBox(
              height:70 ,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      )
                  ),
                  onPressed: (){},
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset("assets/images/openbox.png",height: 30,width: 30,),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ),
                          Positioned(child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 10),
                                      child: Text("Orders",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 5),
                                      child: Text("Check your order status",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12
                                        ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                        ],
                      )
                    ],
                  )),
            ),

            SizedBox(
              height:70 ,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      )
                  ),
                  onPressed: (){},
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset("assets/images/help.png",height: 30,width: 30,),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ),
                          Positioned(child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 10),
                                      child: Text("Help Center",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 5),
                                      child: Text("Help regarding your recent purchases",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12
                                        ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height:70 ,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      )
                  ),
                  onPressed: (){},
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset("assets/images/love.png",height: 30,width: 30,),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ),
                          Positioned(child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 10),
                                      child: Text("Whishlist",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 5),
                                      child: Text("Your most loved styles",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12
                                        ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                        ],
                      )
                    ],
                  )),
            ),
            Container(
              height: 15,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
            ),
            SizedBox(
              height:70 ,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      )
                  ),
                  onPressed: (){},
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset("assets/images/qr.png",height: 30,width: 30,),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ),
                          Positioned(child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,top: 23),
                                      child: Text("Scan for coupon",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                        ],
                      )
                    ],
                  )),
            ),
            Container(
              height: 15,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
            ),
            Container(
              width:MediaQuery.of(context).size.width ,
              color: Colors.green,
              child: Column(
                children: [
                  SizedBox(
                    height:50 ,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                            )
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 13),
                                  child: Text("FAQs",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12
                                    ),),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height:50 ,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                            )
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 10),
                                  child: Text("ABOUT US",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12
                                    ),),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height:50 ,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                            )
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 10),
                                  child: Text("TERMS OF USE",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12
                                    ),),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height:50 ,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                            )
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 10),
                                  child: Text("PRIVACY POLICY",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12
                                    ),),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 150),
                child: Text("BUILD 80110468",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
