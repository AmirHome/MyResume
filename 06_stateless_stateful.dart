/*
* Widget stateless statefull
* */
/*
main() {
  runApp(
    MaterialApp(
      home: PageDetail(),
    )
  );
}
* */
import 'package:flutter/material.dart';

class PageDetail extends StatefulWidget {

  @override
  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Page Detail '),
        backgroundColor: Colors.teal,
      ),
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _sectionContainer(text: ' Container One ', color: Colors.green),
        _sectionContainer(text: ' Container Two ', color: Colors.white),
        _sectionContainer(text: ' Container Three ', color: Colors.red),
      ],
    );
  }

  Widget _sectionContainer({String text, Color color}) {
    return Container(
      child: Text(text, style: TextStyle(fontSize: 40),),
      decoration: BoxDecoration( color: color),
    );
  }
}
