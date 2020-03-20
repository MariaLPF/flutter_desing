import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTileStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
    final textSubtitleStyle = TextStyle(color: Colors.grey, fontSize: 18.0);

    return Scaffold(
      body: Center(
        child: Column(
          
          children: <Widget>[
            Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')),
            
            Container(
              padding:EdgeInsets.symmetric(horizontal:30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Gray bridge and trees',style: textTileStyle),
                        //Padding(padding: EdgeInsets.only(top:7.0)),
                        SizedBox(height:7.0), //Efecto visual equivale al padding anterior
                        Text('Gablenz-Alemania', style: textSubtitleStyle)
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle(fontSize:20.0),),
                  
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}