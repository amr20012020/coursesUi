import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details({Key? key, required this.photo, required this.text}) : super(key: key);
  String photo;
  String text;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("RouteAppOne"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Bg.jpg"),
              fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children:
              [
                Image.asset("assets/${widget.photo}.jpeg"),
                SizedBox(
                  height: 10,
                ),
                Text(widget.text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
