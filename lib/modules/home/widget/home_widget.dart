import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  HomeStore _homeStoreStore = Modular.get<HomeStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeStoreStore.loadhome();
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

      if (_homeStoreStore.teams!.data.isEmpty) {
        return Column(
          children: [
            Expanded(
              child: Text(
                "Empty",
                style: TextStyle(
                  fontFamily: 'pyidaungsu',
                ),
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
        itemCount: _homeStoreStore.teams!.data.length,
        itemBuilder: (context, i) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text(_homeStoreStore.teams!.data[i].name),
                subtitle: Text(
                  _homeStoreStore.teams!.data[i].id.toString(),
                ),
              ));
        },
      );
    });
  }
}
