import 'package:flutter/material.dart';

class AboutFragment extends StatefulWidget {
  AboutFragment({Key? key}) : super(key: key);

  @override
  State<AboutFragment> createState() => _AboutFragmentState();
}

class _AboutFragmentState extends State<AboutFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About App"),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("Version"),
              subtitle: Text("1.0.0"),
            ),
            ListTile(
              title: Text("Developer"),
              subtitle: Text("YoYo Tech"),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("info@kohtut.me"),
            )
          ],
        ));
  }
}
