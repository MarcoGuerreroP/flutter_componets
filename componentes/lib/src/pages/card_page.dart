

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



    return Card(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://image.shutterstock.com/image-photo/autumn-view-lake-federa-dolomites-260nw-1505964326.jpg'),
          ),
          Text('no tengo idea de que poner')
        ],
      ),

    );
  }


}




