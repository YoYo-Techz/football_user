import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    super.initState();
    _leaguesStore.getLeaguesList(isRefresh: false, isInit: true);
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      onLoad: () =>
          _leaguesStore.getLeaguesList(isRefresh: false, isInit: false),
      onRefresh: () =>
          _leaguesStore.getLeaguesList(isRefresh: true, isInit: false),
      child: Observer(builder: (context) {
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
                      padding:
                          EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
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
                  (element) => Card(
                    elevation: 0.3,
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
                                  width: 43,
                                  height: 43,
                                )
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
                                  width: 43,
                                  height: 43,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  element.name ?? "",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey.shade900,
                                  ),
                                ),
                                Text(
                                  element.round ?? "",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.network(
                            element.flag ?? "",
                            width: 30,
                            height: 30,
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(0.0),
                                    child: const CircularProgressIndicator()),
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
