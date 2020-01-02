import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _page1(),
            _page2(),
          ],
        )
      ),
    );
  }

Widget  _page1() {
    return Stack(
      children: <Widget>[
        _color(),
        Container(
          width: double.infinity,
            child: Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover,)
        ),
        _text(),
      ],
    );
  }

  Widget  _page2() {
    return Stack(
      children: <Widget>[
        _color(),
        Center(
          child: RaisedButton(
              shape: StadiumBorder(),
              color: Colors.blue,
              child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text('Bienvenido', style: TextStyle(fontSize: 30, color: Colors.white), ),
                      ),
              onPressed: (){},
          ),
        ),

      ],
    );
  }

  Widget _color() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _text() {

    final textStyle = TextStyle( color: Colors.white, fontSize: 50.0,);

    return SafeArea(
      child: Column(
        children: <Widget>[
          Text('10°', style: textStyle,),
          Text('Wednesday', style: textStyle,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,),
        ],
      ),
    );

  }

}

