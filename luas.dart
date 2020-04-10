import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'luas_output.dart';




class InputLuasSegitiga extends StatefulWidget {
  @override
  _InputLuasSegitigaState createState() => _InputLuasSegitigaState();
}

class _InputLuasSegitigaState extends State<InputLuasSegitiga> {
  int alas = 0;
  int tinggi = 0;
  

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
              title: Text('MENGHITUNG LUAS SEGITIGA'),
            ),
            
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child:
                    Image.asset('',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  Container(
                       margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                     // color: Colors.yellow[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  alas = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('cm'),

                                  filled: true,
                                  hintText: 'Alas Segitiga'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('cm'),
                                  filled: true,
                                  hintText: 'Tinggi Segitiga'),
                            ),
                          ),
                        ],
                      )),

                  

                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => LuasResult(alas_segitiga: alas, tinggi_segitiga: tinggi)),
                         );
                       },
                       padding: EdgeInsets.only(top: 10, bottom: 10),
                       color: Colors.blue,
                       // textColor: Colors.red,
                       child: Text(
                         'HITUNG LUAS',
                         style:
                         TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                       ),
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