/*
* Ui Cupertino Material Principle
* Container Center Column Row Alignment axis
* */

// import 'package:flutter/cupertino.dart'; // Theme Apple
import 'package:flutter/material.dart'; // Theme Google

main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('App Bar'),
          ),
          body: pageDetail(),
        ),
      )
  );
}

Widget pageDetail(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Text(' Container One '),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Text(' Container Two '),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.red
        ),
        child: Text(' Container Three '),
      )
    ],
  );
}

Widget helloBox(){
  return Center(
    child: Container(
      alignment: Alignment.center,
      height: 400,
      width: 300,
      decoration: BoxDecoration( color: Colors.green),
      child: Text(' Hello ', style: TextStyle(fontSize: 40)),
    ),
  );
}