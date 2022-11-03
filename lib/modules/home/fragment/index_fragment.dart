import 'package:flutter/material.dart';
import 'package:myfootball/modules/home/fragment/event_fragment.dart';
import 'package:myfootball/modules/home/fragment/leagues_list_fragment.dart';
import 'package:myfootball/modules/home/fragment/team_list_fragment.dart';

class IndexFragment extends StatefulWidget {
  IndexFragment({Key? key}) : super(key: key);

  @override
  State<IndexFragment> createState() => _IndexFragmentState();
}

class _IndexFragmentState extends State<IndexFragment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            // indicatorColor: Colors.white,
            labelStyle: TextStyle(color: Colors.black),

            unselectedLabelStyle: TextStyle(color: Colors.black), //For U
            tabs: [
              // Tab(
              //     child: Text(
              //   "Home",
              //   style: TextStyle(color: Colors.black),
              // )),
              Tab(
                child: Text(
                  "Match",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "leagues",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Teams",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          title: Text('CM Sport'),
        ),
        body: TabBarView(
          children: [
            // HomeFragment(),
            TodayEventFragment(),
            LeaguesFragment(),
            TeamListFragment()
          ],
        ),
      ),
    );
  }
}
