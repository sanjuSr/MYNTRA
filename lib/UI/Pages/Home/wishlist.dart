import 'package:flutter/material.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';

class wishlist extends StatelessWidget {
  const wishlist({super.key});

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
  State<home> createState() => _HomeState();
}

class _HomeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
            icon: Icon(Icons.arrow_back)),
        title: Column(
          children: [
            Text("data")
          ],
        ),
      ),
    );
  }
}
