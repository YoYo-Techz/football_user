import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:myfootball/modules/home/stores/leagues_store.dart';

class LeaguesFragment extends StatefulWidget {
  LeaguesFragment({Key? key}) : super(key: key);

  @override
  State<LeaguesFragment> createState() => _LeaguesFragmentState();
}

class _LeaguesFragmentState extends State<LeaguesFragment> {
  LeaguesStore _leaguesStore = Modular.get<LeaguesStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _leaguesStore.getLeaguesList(isRefresh: false, isInit: true);
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        onLoad: () => _leaguesStore.getLeaguesList(isRefresh: false, isInit: false),
      onRefresh: () =>
          _leaguesStore.getLeaguesList(isRefresh: true, isInit: false),
      child: Observer(
        builder: (context) {
          if (_leaguesStore.isLoading) {
          return Center(
            child: SizedBox(
              height: 38,
              child: Lottie.asset('assets/lottie/footbll.json'),
            ),
          );
        }
        if (_leaguesStore.leauagelist.isEmpty) {
          return Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Empty",
                  ),
                ),
              ),
              _leaguesStore.errorMessage != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
                      child: Text(
                        _leaguesStore.errorMessage!,
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : SizedBox()
            ],
          );
        }
        return SingleChildScrollView(
          child: Column(
            children: _leaguesStore.leauagelist
                .map(
                  (element) => ListTile(title: Text(element.name ?? ""),)
                )
                .toList(),
          ),
        );
        }
      ),
    );
  }
}
