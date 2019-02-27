import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
 
 MyAppState createState() =>  MyAppState();

}

class MyAppState extends State<MyApp>{
  
  
  String st = 'My Own App';
  int si = 0;
  var rg =new Random();
  void tap(int i){
    
    setState(() {
     st = rg.nextInt(100).toString();
     si = 1 - si;
    });
    

  }

 @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: Text('My Practice'),
          ),
         body: new Center(
          child: new Text(st,style: TextStyle(
            fontSize: 30.0,
            color: Colors.blueAccent
          ),),
         ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('home')),
            BottomNavigationBarItem(icon: Icon(Icons.people),title:Text('people'))
          ],
          currentIndex: si,
          onTap: tap,
          fixedColor: Colors.deepOrange,

        ),
      ),
    );
  }

 
}