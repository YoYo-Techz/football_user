import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
          return Card(
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
                            child: CircleAvatar(child: Icon(Icons.play_arrow)),
                          ),
                          Text(_homeStoreStore
                              .matchs!.data[i].teamOne.first.name),
                        ],
                      )),
                      Expanded(child: Center(child: Text("VS"))),
                      Expanded(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(child: Icon(Icons.play_arrow)),
                          ),
                          Text(_homeStoreStore
                              .matchs!.data[i].teamTwo.first.name),
                        ],
                      ))
                    ],
                  ),
                  Divider(),
                  Text("Date : ${_homeStoreStore.matchs!.data[i].date}"),
                  Text("Time : ${_homeStoreStore.matchs!.data[i].time}")
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
