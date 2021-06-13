import 'package:flutter/material.dart';

class NewsFragmet extends StatefulWidget {
  NewsFragmet({Key? key}) : super(key: key);

  @override
  _NewsFragmetState createState() => _NewsFragmetState();
}

class _NewsFragmetState extends State<NewsFragmet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News"),),
       body: Column(children: [
         //
       ],),
    );
  }
}