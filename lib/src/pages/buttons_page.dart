import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

enum _cellSide { left, right }

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Size tamagno = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: _buttonBar(context),
      body: Stack(
        children: <Widget>[
          _background(),
          SingleChildScrollView(
            child: Column(
               children: <Widget>[
                 _title(),
                 _Buttons(tamagno),
               ],
            ),
          )
        ],
      )
    );
  }

  Widget _background() {

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
            colors:[
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ] ),
      ),
    );

    final box = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(236, 98, 188, 1.0),
                    Color.fromRGBO(241, 142, 172, 1.0)
                  ]
              )
          ),
        )
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -50,
            child: box
        ),
      ],

    );
 }


  Widget _title() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify Transaction', style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),),
            SizedBox(height: 10,),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 15.0 )),
          ],
        ),
      ),
    );

  }


  Widget _buttonBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),//color de fondo
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) ) ),

      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon (Icons.calendar_today),
            title: Text('Cal'),
          ),
          BottomNavigationBarItem(
            icon: Icon (Icons.pie_chart),
            title: Text('Cal'),
          ),
          BottomNavigationBarItem(
            icon: Icon (Icons.supervised_user_circle),
            title: Text('Cal'),
          ),
        ],
      ),
    );

  }


 Widget _Buttons( Size size) {

    return Table(
      children: [
        TableRow(
            children: [
              _createButton( size, _cellSide.left, Colors.blue, Icons.border_all, 'General' ),
              _createButton( size, _cellSide.right, Colors.purpleAccent, Icons.directions_bus, 'Bus' ),
            ]
        ),
        TableRow(
            children: [
              _createButton( size, _cellSide.left, Colors.pinkAccent, Icons.shop, 'Buy' ),
              _createButton( size, _cellSide.right,  Colors.orange, Icons.insert_drive_file, 'File' ),
            ]
        ),
        TableRow(
            children: [
              _createButton( size, _cellSide.left, Colors.blueAccent, Icons.movie_filter, 'Entertaiment' ),
              _createButton( size, _cellSide.right, Colors.green, Icons.cloud, 'Grocery' ),
            ]
        ),
        TableRow(
            children: [
              _createButton( size, _cellSide.left, Colors.red, Icons.collections, 'Photos' ),
              _createButton( size, _cellSide.right, Colors.teal, Icons.help_outline, 'General' ),
            ]
        )
      ],
    );

 }

 Widget _createButton(Size size, _cellSide cellSide, Color color, IconData icon, String text) {

   final double lado = size.width * (0.50 - 0.02 * 3);

   final double margen = size.width * 0.02;

   return Container(
     height: lado,
     width: lado,
     margin: EdgeInsets.only(
       left: margen * (cellSide == _cellSide.left ? 2.0 : 1.0),
       right: margen * (cellSide == _cellSide.right ? 2.0 : 1.0),
       top: margen,
       bottom: margen,
     ),
    decoration: BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(lado * 0.2),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(lado * 0.2),
      child: BackdropFilter(
        filter: ImageFilter.blur(
        sigmaX: 7.5,
        sigmaY: 7.5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: lado * 0.40,
              width: lado * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(lado * 0.40),
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.white,
                    color,
                  ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: lado * 0.20,
              ),
            ),
            Text(text, style: TextStyle(color: color, fontSize: lado * 0.1,),),
          ],
        ),
      )
    ),
   );


   /*return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
        child: Container(
          height: 150,
          width: 150,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 10,),
              CircleAvatar(
                backgroundColor: color,
                radius: 30.0,
                child: Icon(icon, color: Colors.white,),
              ),
              Text(text, style: TextStyle(color: color, fontSize: 18),),
              SizedBox(height: 10,),
            ],
          ),

        ),
      ),
    );*/

 }


}
