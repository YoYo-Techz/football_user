import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/constant/configs.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';
import 'package:myfootball/modules/player/player_module.dart';
import 'package:myfootball/modules/player/player_route.dart';
import 'package:myfootball/utils/rotue_utils.dart';

class MatchFragment extends StatefulWidget {
  MatchFragment({Key? key}) : super(key: key);

  @override
  _MatchFragmentState createState() => _MatchFragmentState();
}

class _MatchFragmentState extends State<MatchFragment> {
  HomeStore _homeStoreStore = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
    _homeStoreStore.loadMatchs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CM Sport"),
        ),
        body: _storelist());
  }

  Widget _storelist() {
    return Observer(builder: (context) {
      if (_homeStoreStore.isLoading) {
        return Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        );
      }

      if (_homeStoreStore.matchsList.isEmpty) {
        return Column(
          children: [
            Expanded(
              child: Text(
                "Empty",
              ),
            ),
            _homeStoreStore.errorMessage != null
                ? Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
                    child: Text(
                      _homeStoreStore.errorMessage!,
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : SizedBox()
          ],
        );
      }

      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red.shade50,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.live_tv, color: Colors.red),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Live",
                          style: TextStyle(
                            color: Colors.red.shade900,
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.today, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Today", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 2),
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.sports_football_rounded,
                              color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Text("All Match",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      height: 4,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade200),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _homeStoreStore.matchsList.length,
              itemBuilder: (context, i) {
                // _homeStoreStore.matchs!.data[i].name
                var data = _homeStoreStore.matchsList[i];
                return GestureDetector(
                  onTap: () {
                    RouteUtils.changeRoute<PlayerModule>(PlayerRoute.root,
                        args: data.url);
                  },
                  child: Card(
                    elevation: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Image.network(
                                            Config.basefootballUrl +
                                                _homeStoreStore.matchsList[i]
                                                    .teamOne!.img!)),
                                  ),
                                  Text(
                                    _homeStoreStore
                                        .matchsList[i].teamOne!.name!,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  )
                                ],
                              )),
                              Expanded(
                                  child: Center(
                                      child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("VS"),
                                  ),
                                  (_homeStoreStore.matchsList[i].status !=
                                          "idle")
                                      ? Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.grey[200],
                                          ),
                                          child: Text(
                                            _homeStoreStore
                                                .matchsList[i].score!,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13),
                                          ),
                                        )
                                      : Container()
                                ],
                              ))),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: (_homeStoreStore
                                                      .matchsList[i].teamTwo !=
                                                  null)
                                              ? Image.network(
                                                  Config.basefootballUrl +
                                                      _homeStoreStore
                                                          .matchsList[i]
                                                          .teamTwo!
                                                          .img!)
                                              : Icon(Icons.play_arrow)),
                                    ),
                                    Text(
                                      _homeStoreStore
                                              .matchsList[i].teamTwo?.name ??
                                          "hello",
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date : ${_homeStoreStore.matchsList[i].date}",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Time : ${_homeStoreStore.matchsList[i].time}",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:
                                        (_homeStoreStore.matchsList[i].status ==
                                                "idle")
                                            ? Colors.green
                                            : (_homeStoreStore
                                                        .matchsList[i].status ==
                                                    "started")
                                                ? Colors.green
                                                : Colors.grey[200]),
                                child: (_homeStoreStore.matchsList[i].status ==
                                        "idle")
                                    ? Text(
                                        "ပွဲစဥ်မစသေးပါ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      )
                                    : (_homeStoreStore.matchsList[i].status ==
                                            "started")
                                        ? Text(
                                            "ပွဲစဥ်စနေပါပြီ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13),
                                          )
                                        : Text(
                                            "ပွဲစဥ်ပြီးဆုံးသွားပါပြီ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13),
                                          ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
