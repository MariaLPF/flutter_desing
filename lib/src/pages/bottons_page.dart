import 'dart:math';

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
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar:  BottomNavigationBar(
          items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          ),
        ]
      ),
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

  Widget _bottomNavigationBar(){

    

  }

}