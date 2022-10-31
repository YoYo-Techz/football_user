import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:myfootball/modules/home/stores/teams_store.dart';

class TeamListFragment extends StatefulWidget {
  TeamListFragment({Key? key}) : super(key: key);

  @override
  State<TeamListFragment> createState() => _TeamListFragmentState();
}

class _TeamListFragmentState extends State<TeamListFragment> {
  TeamsStore _teamsStore = Modular.get<TeamsStore>();

  @override
  void initState() {
    super.initState();
    _teamsStore.getLeaguesList(isRefresh: false, isInit: true);
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      onLoad: () => _teamsStore.getLeaguesList(isRefresh: false, isInit: false),
      onRefresh: () =>
          _teamsStore.getLeaguesList(isRefresh: true, isInit: false),
      child: Observer(builder: (context) {
        if (_teamsStore.isLoading) {
          return Center(
            child: SizedBox(
              height: 38,
              child: Lottie.asset('assets/lottie/footbll.json'),
            ),
          );
        }
        if (_teamsStore.teamslist.isEmpty) {
          return Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Empty",
                  ),
                ),
              ),
              _teamsStore.errorMessage != null
                  ? Padding(
                      padding:
                          EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
                      child: Text(
                        _teamsStore.errorMessage!,
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : SizedBox()
            ],
          );
        }
        return SingleChildScrollView(
          child: Column(
            children: _teamsStore.teamslist
                .map(
                  (element) => Card(
                    elevation: 0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          (element.logo == null ||
                                  element.logo!.isEmpty ||
                                  element.logo!.contains("null") ||
                                  element.logo == "")
                              ? Image.asset(
                                  "assets/logo/icon.png",
                                  width: 40,
                                  height: 40,
                                )
                              // : Image.network(
                              //     element.image ?? "",
                              //     height: 40,
                              //     width: 40,
                              //   ),
                              : CachedNetworkImage(
                                  imageUrl: element.logo ?? "",
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  width: 40,
                                  height: 40,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            element.name ?? "",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      }),
    );
  }
}
