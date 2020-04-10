import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'alas.dart';
import 'tinggi.dart';
import 'luas.dart';





class InputSegitiga extends StatefulWidget {
  @override
  _InputSegitigaState createState() => _InputSegitigaState();
}

class _InputSegitigaState extends State<InputSegitiga> {

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
            //backgroundColor: Colors.blue[50],
            appBar: AppBar(
              //backgroundColor: Colors.blue[900],
              centerTitle: true,
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              title: Text('MENGHITUNG SEGITIGA'),
            ),
            
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child:
                    Image.asset('images/a.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                 Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => InputAlasSegitiga()),
                         );
                       },
                       
                       color: Colors.blue,
                        textColor: Colors.red,
                       child: Text(
                         'MENGHITUNG ALAS SEGITIGA',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),

                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => InputTinggiSegitiga()),
                         );
                       },
                       
                       color: Colors.blue,
                        textColor: Colors.red,
                       child: Text(
                         'MENGHITUNG TINGGI SEGITIGA',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),

                   Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => InputLuasSegitiga()),
                         );
                       },
                       
                       color: Colors.blue,
                        textColor: Colors.red,
                       child: Text(
                         'MENGHITUNG LUAS SEGITIGA',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),

                ],
              ),
            ),
          bottomNavigationBar: BottomAppBar(
            //color: Colors.transparent,
            child: Container(
              height: 60,
              color: Colors.black54,
              alignment: Alignment.center,
              child: Text(
                'Developed by Idham Kholid',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            //elevation: 0,
          ),
        );
  }
}