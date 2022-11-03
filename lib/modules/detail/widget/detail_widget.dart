import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {
  final int id;
  final String season;
  DetailWidget({Key? key, required this.id, required this.season})
      : super(key: key);

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //
        ],
      ),
    );
  }
}
