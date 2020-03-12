import 'package:flutter/material.dart';



class AvatarPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Avatar Page'),
        actions: <Widget>[

          

          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.fntr6-2.fna.fbcdn.net/v/t1.0-9/p960x960/89177658_2808218652581037_5873300853099593728_o.jpg?_nc_cat=101&_nc_sid=85a577&_nc_ohc=jQEmlV6IoJgAX_r5EHt&_nc_ht=scontent.fntr6-2.fna&_nc_tp=6&oh=3c2f71770639c67d690b97d9bc54c780&oe=5E8DA310'),
              radius: 25.0,
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text('MG'),
              backgroundColor: Colors.pink,
            ),
            ),
        
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(40.0),
        children: <Widget>[
          _dor(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
    
    Widget _dor(){
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[


          FadeInImage(
            image: NetworkImage('https://scontent.fntr6-2.fna.fbcdn.net/v/t1.0-9/p960x960/89177658_2808218652581037_5873300853099593728_o.jpg?_nc_cat=101&_nc_sid=85a577&_nc_ohc=jQEmlV6IoJgAX_r5EHt&_nc_ht=scontent.fntr6-2.fna&_nc_tp=6&oh=3c2f71770639c67d690b97d9bc54c780&oe=5E8DA310'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            
            

          ),
          // Image(
          //   image: NetworkImage('https://image.shutterstock.com/image-photo/autumn-view-lake-federa-dolomites-260nw-1505964326.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(50.0),
            child: Text('"La belleza del rostro hermosea"')
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
            blurRadius: 30.0,
            spreadRadius: 10.0,
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
