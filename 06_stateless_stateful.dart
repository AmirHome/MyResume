/*
* Widget stateless statefull
* */

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: PageDetail(),
  ));
}

class PageDetail extends StatefulWidget {
  @override
  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State&lt;PageDetail&gt; {
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

  Widget _sectionContainer({required String text, required Color color}) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
      decoration: BoxDecoration(color: color),
    );
  }
}
