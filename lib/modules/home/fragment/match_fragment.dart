import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/constant/configs.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';

class MatchFragment extends StatefulWidget {
  MatchFragment({Key? key}) : super(key: key);

  @override
  _MatchFragmentState createState() => _MatchFragmentState();
}

class _MatchFragmentState extends State<MatchFragment> {
  HomeStore _homeStoreStore = Modular.get<HomeStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeStoreStore.loadMatchs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Football"),
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

      if (_homeStoreStore.matchs!.data.isEmpty) {
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

      return ListView.builder(
        itemCount: _homeStoreStore.matchs!.data.length,
        itemBuilder: (context, i) {
          // _homeStoreStore.matchs!.data[i].name
          return Card(elevation: 0,
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
                                child: Image.network(Config.basefootballUrl +
                                    _homeStoreStore
                                        .matchs!.data[i].teamOne!.img!)),
                          ),
                          Text(
                            _homeStoreStore.matchs!.data[i].teamOne!.name!,
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
                          (_homeStoreStore.matchs!.data[i].status != "idle")
                              ? Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color : Colors.grey[200],),
                                child: Text(
                                    _homeStoreStore.matchs!.data[i].score!,
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
                                              .matchs!.data[i].teamTwo !=
                                          null)
                                      ? Image.network(Config.basefootballUrl +
                                          _homeStoreStore
                                              .matchs!.data[i].teamTwo!.img!)
                                      : Icon(Icons.play_arrow)),
                            ),
                            Text(
                              _homeStoreStore.matchs!.data[i].teamTwo?.name ??
                                  "hello",
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
                            "Date : ${_homeStoreStore.matchs!.data[i].date}",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Time : ${_homeStoreStore.matchs!.data[i].time}",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green),
                        child:
                            (_homeStoreStore.matchs!.data[i].status == "idle")
                                ? Text(
                                    "ပွဲစဥ်မစသေးပါ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  )
                                : (_homeStoreStore.matchs!.data[i].status ==
                                        "started")
                                    ? Text(
                                        "ပွဲစဥ်စနေပါပြီ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      )
                                    : Text(
                                        "ပွဲစဥ်ပြီးဆုံးသွားပါပြီ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
