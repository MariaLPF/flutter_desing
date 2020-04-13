//import 'dart:js';
//import 'dart:js';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _buttonsRounded(),
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar:  _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp() {
    Widget gradient = _gradientBackgroundApp();
    Widget pinkBox  = _pingkBox();
        return Stack(
          children: <Widget>[
            gradient,
            Positioned(child: pinkBox, top: -75.0)
            
          ],
        );
      }
    
  Widget _gradientBackgroundApp() {
        final gradient = Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: <Color>[
                Color.fromRGBO(52, 54, 101, 1.0),
                Color.fromRGBO(35, 37, 57, 1.0),
              ])
          ),
        );
        return gradient;
      }
    
  Widget _pingkBox() {
        return Transform.rotate(
          angle: -pi/5.0,
          child: Container(
            width: 360.0,
            height: 360.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0)
                ]
              ),
              borderRadius: BorderRadius.circular(80.0),
            ),
          )
        );
      }

  Widget _titles(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transact', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0),)
          ]
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.
        copyWith( caption: TextStyle(color:Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          ),
        ]),
    );

  }

  Widget _buttonsRounded(){
    return Table(
      children: [
        TableRow(
          children:[
            _createButtonRound(Colors.blue, Icons.border_all, 'General'),
            _createButtonRound(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children:[
            _createButtonRound(Colors.pinkAccent, Icons.directions_transit, 'Tren'),
            _createButtonRound(Colors.greenAccent, Icons.calendar_today, 'Hoy'),
          ]
        ),
        TableRow(
          children:[
            _createButtonRound(Colors.orange, Icons.directions_walk, 'Caminar'),
            _createButtonRound(Colors.brown, Icons.shop, 'Tienda'),
          ]
        ),
        TableRow(
          children:[
            _createButtonRound(Colors.grey, Icons.insert_drive_file, 'Files'),
            _createButtonRound(Colors.blueAccent, Icons.camera, 'Camara'),
          ]
        )
      ],
    );
  }
  Widget _createButtonRound(Color colorItem, IconData iconItem, String textItem){
    return /*BackdropFilter(
      filter: ImageFilter.blur(sigmaX:0.7, sigmaY:0.7),
      child:*/ Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: colorItem,
              radius: 35.0,
              child: Icon(iconItem, color: Colors.white, size: 30.0),
            ),
            Padding(padding: EdgeInsets.only(top:20.0),),
            Text(textItem, style: TextStyle(color:colorItem),)
          ],
        ),
    //  ),
    );
  }
          


}