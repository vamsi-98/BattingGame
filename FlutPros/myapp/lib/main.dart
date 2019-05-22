import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
 
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _score = 0;
  var rng =new Random();
  
  TextEditingController td = TextEditingController();
  
  void _incrementCounter() {
    
    setState(() {
       if(1 + rng.nextInt(9) == int.parse(td.text)){
          
         
         Fluttertoast.showToast(
        msg: "Your Score is"  + _score.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 2,
        backgroundColor: Colors.indigo
    );
    sleep(const Duration(seconds: 2));
     _score = 0;
       
       }else{
      _score = _score + int.parse(td.text);
       }
    });
  
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Batting Game"),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Push the button to bat:',
              
            ),
            Text(
              '$_score',
              style: Theme.of(context).textTheme.display1,
            ),
            Container(
              width: 100,
              
              child: TextField(
                controller: td,
                maxLength: 1,
                keyboardType: TextInputType.number,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Batting',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
