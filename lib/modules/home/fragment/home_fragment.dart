import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';

class HomeFragment extends StatefulWidget {
  HomeFragment({Key? key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  HomeStore _homeStoreStore = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
    _homeStoreStore.loadLeagues(onFailed: (exceptionMessage) {
      //
    });
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

      if (_homeStoreStore.leaguelist.isEmpty) {
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
        itemCount: _homeStoreStore.leaguelist.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              title: Text(_homeStoreStore.leaguelist[i].name),
            ),
          );
        },
      );
    });
  }
}
