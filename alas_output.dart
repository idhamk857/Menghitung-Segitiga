import 'package:flutter/material.dart';
import 'dart:math';


class AlasResult extends StatelessWidget {

  AlasResult({@required this.luas_segitiga, @required this.tinggi_segitiga});
  final int luas_segitiga;
  final int tinggi_segitiga;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
      alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
            
            ),),
            new Text(
            "Alas : ${2*luas_segitiga/(tinggi_segitiga)} cm",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blueAccent
            ),
            ),
            
            

          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('BACK',
            style: TextStyle(
              fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}