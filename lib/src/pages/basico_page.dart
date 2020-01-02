import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BasicoPage extends StatelessWidget {

  final title = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final subtitle = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: <Widget>[
                _image(),
                _imageData(),
                _actions(),
                _text(),
                _text(),
                _text(),
              ],
            )
        ),
      ),
    );
  } //end widget build


  Widget _image() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage('https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine-683x390.jpg'),
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }//end widget image


  Widget _imageData() {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago de tequesquitengo', style: title,),
                SizedBox(height: 6.0),
                Text('Rebaja por temporada', style: subtitle,),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 20.0,),
          Text('41', style: TextStyle(fontSize: 15.0),),
        ],
      ),
    );
  }//end widget imageData

  Widget _actions() {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _showIcon(Icons.call, 'CALL'),
          _showIcon(Icons.near_me, 'ROUTE'),
          _showIcon(Icons.share, 'SHARE'),
        ],
      ),
    );

  }//end widget actions

 Widget _showIcon(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 30.0, color: Colors.blue,),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),),

      ],
    );
 }

  Widget _text() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit sit amet nisi semper vehicula. Vestibulum efficitur consectetur massa, nec rutrum turpis porta a. Maecenas mollis augue dolor, sed pretium nisl efficitur sed. Fusce elementum sem vitae velit ultrices, dictum auctor tortor mattis. Duis lacinia convallis magna, at vehicula mauris eleifend eget. Nullam feugiat volutpat nibh eu rhoncus. In suscipit diam libero, ut maximus libero hendrerit sed. Pellentesque tellus lorem, congue pretium leo eu, aliquet maximus lorem. Integer et molestie nunc. Quisque tempus urna non cursus commodo. Proin condimentum aliquam arcu, sit amet fermentum mauris condimentum nec. Nullam molestie nibh in laoreet elementum.', textAlign: TextAlign.justify,),

    );
  }

} //END Class BasicoPage
