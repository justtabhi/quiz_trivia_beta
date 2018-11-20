import 'package:flutter/material.dart';
import 'dart:async';
import '../ui/register.dart';


//const subtitle="Just need to simplify mathematical \nequations to earn exciting prizes \n1.quiz consist of 10 questions \n2.Time allowed is 10 sec for each question";
class Home extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return new HomeState();
    }
}
class HomeState extends State<Home>{
  
  Future<Null> showalert() async{
    return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
    return AlertDialog(
      
      title: Text('Simplify and Earn'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Just need to simplify mathematical'),
              Text('equations to earn exciting prizes'),
              Text('1.quiz consist of 10 questions'),
              Text('2.Time allowed is 10 sec for each question'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Register',style: new TextStyle(color: Colors.white),),
            color: Color(0xFF4B0082),
            onPressed: () {
              //Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new Register()));
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new Register()));
            },
          ),
        ],
    );
    }
    ); 
  }
  @override
    Widget build(BuildContext context) {

      return new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => showalert(),
                color: Color(0xFF4B0082),
                padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 40.0),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.book,color: Colors.white,size: 50.0,),
                    Text("Register @2",style: new TextStyle(color: Colors.white,fontSize: 40.0))
                  ],
                ),
              ),
              new Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0),)
                ],
              ),
              FlatButton(
                onPressed: () => {},
                color: Color(0xFF4B0082),
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 40.0),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.book,color: Colors.white,size: 45.0,),
                    Text("Buy Lives @1",style: new TextStyle(color: Colors.white,fontSize: 40.0))
                  ],
                ),
              ),
            ],
          ),
        );
      /*return new Center(
        child:
         new FloatingActionButton(
        child:  new Icon(Icons.add,size: 40.0,color: Colors.white,),
        backgroundColor: Color(0xFF4B0082),
        onPressed: () {},
      )
      );*/
      /*return new Card(
        color: Color(0xFF4B0082),
      child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const ListTile(
        leading: Icon(Icons.album),
        title: Text('Simplify and Earn',style: TextStyle(
                  color: Colors.white),),
        subtitle: Text(subtitle,style: TextStyle(color: Colors.white),)
      ),
      ButtonTheme.bar( // make buttons use the appropriate styles for cards
        child: ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('Register @1',style: new TextStyle(
                color: Colors.white,
              ),),
              color: Colors.deepOrangeAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  ),
);*/

    }
}