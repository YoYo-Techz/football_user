import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/constant/configs.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';
import 'package:myfootball/version_check/version_check.dart';

class HomeFragment extends StatefulWidget {
  HomeFragment({Key? key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  HomeStore _homeStore = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
    _homeStore.loadLeagues();
    _homeStore.initConfig();
  
    checkVersion();
  }

  checkVersion() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      print("force update? : ${_homeStore.forceUpdate}");
      if (_homeStore.forceUpdate) {
        showVersionDialog(context, _homeStore.releaseNote!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CM Sport"),
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 8,
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("assets/logo/cover_os.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Expanded(child: _storelist()),
          ],
        ));
  }

  Widget _storelist() {
    return Observer(builder: (context) {
      if (_homeStore.isLoading) {
        return Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        );
      }

      if (_homeStore.leaguelist.isEmpty) {
        return Column(
          children: [
            Expanded(
              child: Text(
                "Empty",
              ),
            ),
            _homeStore.errorMessage != null
                ? Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
                    child: Text(
                      _homeStore.errorMessage!,
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : SizedBox()
          ],
        );
      }

      return ListView.builder(
        itemCount: _homeStore.leaguelist.length,
        itemBuilder: (context, i) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      image: DecorationImage(
                        image: NetworkImage(Config.basefootballUrl +
                            _homeStore.leaguelist[i].img),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(_homeStore.leaguelist[i].name),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
