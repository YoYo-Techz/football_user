import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class LiveFragment extends StatelessWidget {
  const LiveFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 0.5,
              child: Container(
                height: 45,
                width: double.infinity,
                padding: EdgeInsets.all(5),
                child: Center(child: Text("1080P")),
              ),
            ),
            Card(
              elevation: 0.5,
              child: Container(
                height: 45,
                width: double.infinity,
                padding: EdgeInsets.all(5),
                child: Center(child: Text("720P")),
              ),
            ),
          ],
        ),
      );
    });
  }
}
