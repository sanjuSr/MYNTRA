 import 'package:flutter/material.dart';

class Seeeee extends StatefulWidget {
  const Seeeee({super.key});

  @override
  State<Seeeee> createState() => _SeeeeeState();
}

class _SeeeeeState extends State<Seeeee> {
  @override
  Widget build(BuildContext context) {
    return   Row(
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
    );
  }
}
