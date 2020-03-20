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
          
          children:<Widget> [
            _createImageHeader(),
            _createImageDescription(textTileStyle, textSubtitleStyle),
            _createAcctions(),
            _crearText()
            ]
          ),
      ),
    );
  }

  Widget _createImageHeader() {
    return Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'));
  }

  Widget _createImageDescription(TextStyle textTileStyle, TextStyle textSubtitleStyle){
    return Container(
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
          );
  }

  Widget _createAcctions() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _createAccionWidget(Icons.phone,"Llamar"),
          _createAccionWidget(Icons.near_me,"Ruta"),
          _createAccionWidget(Icons.share,"Compartir"),
        ],
    );
  }

  Widget _createAccionWidget(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height:5.0),
        Text(text.toUpperCase(), style: TextStyle(color:Colors.blue, fontSize:15.0),)
      ],
    );
  }

  Widget _crearText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:40.0, vertical:20.0),
      child: Text(
        'Eiusmod et sit est adipisicing irure esse pariatur sit. Sit dolor cupidatat aliqua nisi tempor ex eiusmod laborum eu veniam amet nulla fugiat. Ullamco amet esse nulla esse Lorem nisi laboris laboris velit qui nulla id.',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize:18.0),
      ),
    );
  }
}