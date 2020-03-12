

import 'package:flutter/material.dart';



class AlertPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed:(){
          Navigator.pop(context);
        },
      ),
        
    );
  }

  void _mostrarAlert(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){

        return AlertDialog(
          title:Text('titulo', style: TextStyle(color: Colors.red)),
          shape: RoundedRectangleBorder( borderRadius:BorderRadius.circular(20.0) ),
          
          
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              
              Text('Este es el contenido de la tarjeta', style: TextStyle(color: Colors.green)),
              FlutterLogo(size: 100.0),

            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () =>
                Navigator.of(context).pop(),
              
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),

          ],
          );
      }
    );
  }



}