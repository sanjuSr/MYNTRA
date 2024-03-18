import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Home/Curtains.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _NotificationState();
}

class _NotificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                }, icon: Icon(Icons.arrow_back)),
        title: Text(
          "NOTIFICATIONS",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[ Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[200],
              ),
                Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left:15,top: 15 ),
                      child: SizedBox(
                                        height: 130,
                                        width: 360,
                                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                          )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => curtains()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Row(
                                children: [
                                  // Icon(Icons.house,color: Colors.yellow,),
                                  Text("Revamp your room",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16
                                  ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Image.asset("assets/images/home.png",height: 20,width: 20,),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Text("With Curtains & sheers | URBAN SPACE &",
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Cortina",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 20),
                              child: Text("16 hours ago",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),),
                            )
                          ],
                        )),
                                      ),
                    ))
              ]
            ),
          ],
        ),
      ),
    );
  }
}
