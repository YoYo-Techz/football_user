import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/constant/configs.dart';
import 'package:myfootball/models/data/matchs.dart';
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
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CM Sport"),
        ),
        body: Container());
  }

  // Widget _storelist() {
  //   return Observer(builder: (context) {
  //     if (_homeStoreStore.isLoading) {
  //       return Center(
  //         child: CircularProgressIndicator(
  //           valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
  //         ),
  //       );
  //     }

  //     if (_homeStoreStore.matchsList.isEmpty) {
  //       return Column(
  //         children: [
  //           Expanded(
  //             child: Text(
  //               "Empty",
  //             ),
  //           ),
  //           _homeStoreStore.errorMessage != null
  //               ? Padding(
  //                   padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
  //                   child: Text(
  //                     _homeStoreStore.errorMessage!,
  //                     style: TextStyle(color: Colors.red),
  //                   ),
  //                 )
  //               : SizedBox()
  //         ],
  //       );
  //     }

  //     return Column(
  //       children: [
  //         Container(
  //           margin: EdgeInsets.all(2),
  //           child: Row(
  //             children: [
  //               GestureDetector(
  //                 onTap: (() {
  //                   _homeStoreStore.mathcIndexChange(0);
  //                 }),
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: [
  //                     Container(
  //                       margin: EdgeInsets.all(5),
  //                       padding: EdgeInsets.only(
  //                           left: 8, right: 8, top: 5, bottom: 5),
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(5),
  //                         color: Colors.red.shade50,
  //                       ),
  //                       child: Row(
  //                         children: [
  //                           Icon(Icons.live_tv, color: Colors.red),
  //                           SizedBox(
  //                             width: 5,
  //                           ),
  //                           Text("Live",
  //                               style: TextStyle(
  //                                 color: Colors.red.shade900,
  //                               )),
  //                         ],
  //                       ),
  //                     ),
  //                     Container(
  //                       height: 4,
  //                       width: 75,
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(5),
  //                           color: (_homeStoreStore.mathcIndex == 0)
  //                               ? Colors.red.shade200
  //                               : Colors.transparent),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               GestureDetector(
  //                 onTap: (() {
  //                   _homeStoreStore.mathcIndexChange(1);
  //                 }),
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: [
  //                     Container(
  //                       margin: EdgeInsets.only(
  //                         top: 5,
  //                         bottom: 2,
  //                       ),
  //                       padding: EdgeInsets.only(
  //                           left: 8, right: 8, top: 5, bottom: 5),
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(5),
  //                         color: Colors.blue,
  //                       ),
  //                       child: Row(
  //                         children: [
  //                           Icon(Icons.today, color: Colors.white),
  //                           SizedBox(
  //                             width: 5,
  //                           ),
  //                           Text("Today",
  //                               style: TextStyle(color: Colors.white)),
  //                         ],
  //                       ),
  //                     ),
  //                     Container(
  //                       height: 4,
  //                       width: 85,
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(5),
  //                           color: (_homeStoreStore.mathcIndex == 1)
  //                               ? Colors.blue.shade200
  //                               : Colors.transparent),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 width: 3,
  //               ),
  //               GestureDetector(
  //                 onTap: (() {
  //                   _homeStoreStore.mathcIndexChange(2);
  //                 }),
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: [
  //                     Container(
  //                       margin: EdgeInsets.only(top: 5, bottom: 2),
  //                       padding: EdgeInsets.only(
  //                           left: 8, right: 8, top: 5, bottom: 5),
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(5),
  //                         color: Colors.blue,
  //                       ),
  //                       child: Row(
  //                         children: [
  //                           Icon(Icons.sports_football_rounded,
  //                               color: Colors.white),
  //                           SizedBox(
  //                             width: 5,
  //                           ),
  //                           Text("All Match",
  //                               style: TextStyle(color: Colors.white)),
  //                         ],
  //                       ),
  //                     ),
  //                     Container(
  //                       height: 4,
  //                       width: 100,
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(5),
  //                           color: (_homeStoreStore.mathcIndex == 2)
  //                               ? Colors.blue.shade200
  //                               : Colors.transparent),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         //
  //         (_homeStoreStore.mathcIndex == 0)
  //             ? _liveMatch()
  //             : (_homeStoreStore.mathcIndex == 1)
  //                 ? _todayMatch()
  //                 : _allMatch(),
  //       ],
  //     );
  //   });
  // }

  // Widget _allMatch() {
  //   return Expanded(
  //     child: ListView.builder(
  //       itemCount: _homeStoreStore.matchsList.length,
  //       itemBuilder: (context, i) {
  //         // _homeStoreStore.matchs!.data[i].name
  //         var data = _homeStoreStore.matchsList[i];
  //         return _mapItem(matchs: data);
  //       },
  //     ),
  //   );
  // }

  // Widget _liveMatch() {
  //   return Expanded(
  //     child: ListView.builder(
  //       itemCount: _homeStoreStore.livematchsList.length,
  //       itemBuilder: (context, i) {
  //         // _homeStoreStore.matchs!.data[i].name
  //         var data = _homeStoreStore.livematchsList[i];
  //         return _mapItem(matchs: data);
  //       },
  //     ),
  //   );
  // }

  // Widget _todayMatch() {
  //   return Expanded(
  //     child: ListView.builder(
  //       itemCount: _homeStoreStore.todaymatchsList.length,
  //       itemBuilder: (context, i) {
  //         // _homeStoreStore.matchs!.data[i].name
  //         var data = _homeStoreStore.todaymatchsList[i];
  //         return _mapItem(matchs: data);
  //       },
  //     ),
  //   );
  // }

  Widget _mapItem({required Matchs matchs}) {
    return GestureDetector(
      onTap: () {
        if (matchs.status == "idle") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            padding: EdgeInsets.all(8),
            content: Text('ပွဲစဥ်မစသေးပါ'),
            backgroundColor:  Colors.red.shade500,
          ));
        } else if (matchs.status == "started") {
          RouteUtils.changeRoute<PlayerModule>(PlayerRoute.root,
              args: matchs.url);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                padding: EdgeInsets.all(8),
              content: Text('ပွဲစဥ်ပြီးဆုံးသွားပါပြီ'),
              backgroundColor: Colors.red.shade500,
            ),
          );
        }
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
                                Config.basefootballUrl + matchs.teamOne!.logo!)),
                      ),
                      Text(
                        matchs.teamOne!.name!,
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
                      (matchs.status != "idle")
                          ? Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[200],
                              ),
                              child: Text(
                                matchs.score!,
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
                              child: (matchs.teamTwo != null)
                                  ? Image.network(Config.basefootballUrl +
                                      matchs.teamTwo!.logo!)
                                  : Icon(Icons.play_arrow)),
                        ),
                        Text(
                          matchs.teamTwo?.name ?? "hello",
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
                        "Date : ${matchs.date}",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Time : ${matchs.time}",
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
                        color: (matchs.status == "idle")
                            ? Colors.green
                            : (matchs.status == "started")
                                ? Colors.green
                                : Colors.grey[200]),
                    child: (matchs.status == "idle")
                        ? Text(
                            "ပွဲစဥ်မစသေးပါ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          )
                        : (matchs.status == "started")
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
  }

}
