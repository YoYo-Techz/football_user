import 'package:flutter/material.dart';
import 'package:myfootball/modules/home/fragment/channel_fragment.dart';
import 'package:myfootball/modules/home/fragment/home_fragment.dart';
import 'package:myfootball/modules/home/fragment/match_fragment.dart';
import 'package:myfootball/modules/home/fragment/new_fragment.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
    with TickerProviderStateMixin<HomeWidget> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  List<Widget> _fragment = [
    HomeFragment(),
    MatchFragment(),
    // NewsFragmet(),
    ChannelFragment()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(index: _currentIndex, children: _fragment),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: destination.icon,
              backgroundColor: destination.color,
              label: destination.title);
        }).toList(),
      ),
    );
  }
}

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final Widget icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', Icon(Icons.home), Colors.teal),
  Destination(
      'Match',
      ImageIcon(
        AssetImage("assets/icon/match.png"),
      ),
      Colors.cyan),
  // Destination('News', Icons.feed, Colors.orange),
  Destination('Channel', Icon(Icons.tv), Colors.orange),
];
