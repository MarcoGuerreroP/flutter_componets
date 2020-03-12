

import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(40.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    ); 
  }
  
  Widget _cardTipo1(){

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius:BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assessment, color: Colors.red),
            title: Text('Soy el titulo de esta card'),
            subtitle: Text('Esta es la tarjeta la cual se va mostar lo sigueinte'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                padding: EdgeInsets.all(20),
                onPressed: (){},
              ),

            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(){



    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[


          FadeInImage(
            image: NetworkImage('https://image.shutterstock.com/image-photo/autumn-view-lake-federa-dolomites-260nw-1505964326.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            fadeInCurve: Curves.bounceIn,
            
            

          ),
          // Image(
          //   image: NetworkImage('https://image.shutterstock.com/image-photo/autumn-view-lake-federa-dolomites-260nw-1505964326.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('no tengo idea de que poner')
          ),
        ],
      ),

    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        // color: Colors.red
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)

          ),

        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,

      ),
    );
    
    





  


  }


}




