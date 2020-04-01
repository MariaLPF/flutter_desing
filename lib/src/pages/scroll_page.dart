import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class  ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _imageBackground(),
        _headerTexts(),

      ],
    );
  }


  /*Widget _pagina2() {
  
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _buttonWelcome(),

      ],
    );
  }*/
  Widget _pagina2() {
  
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: _buttonWelcome(),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width:double.infinity,
      height:double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0)

    );
  }

  Widget _imageBackground() {
    return Container(
      width:double.infinity,
      height:double.infinity,
      child: Image(
        image: AssetImage('assets/images/scroll_img.png'),
        fit:BoxFit.cover
      )

    );
  }

  Widget _headerTexts() {
    final TextStyle textStyle = TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold );
    return SafeArea(
          child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:60.0)),
            Text('11º', style: textStyle,),
            Text('España',style: textStyle,),
            Expanded(child: Container()),
            Icon(Icons.keyboard_arrow_down, color: Colors.white,size: 70.0,)
          ],
        ),
    );
  }

  Widget _buttonWelcome() {
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(
          side: BorderSide(color:Colors.blue)
        ),
        elevation: 1.5,
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text('Bienvenido', style:TextStyle(fontSize:20.0))
        ),
        onPressed: (()=>print('Se a pulsado el boton'))
      )
    );
  }
}

