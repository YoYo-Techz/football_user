import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/constant/configs.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';
import 'package:myfootball/modules/player/player_module.dart';
import 'package:myfootball/modules/player/player_route.dart';
import 'package:myfootball/utils/rotue_utils.dart';
import 'package:myfootball/version_check/version_check.dart';

class ChannelFragment extends StatefulWidget {
  ChannelFragment({Key? key}) : super(key: key);

  @override
  State<ChannelFragment> createState() => _ChannelFragmentState();
}

class _ChannelFragmentState extends State<ChannelFragment> {
  HomeStore _homeStore = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
   
    _homeStore.loadChannels();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CM Sport"),
      ),
      body: _storelist(),
    );
  }

  Widget _storelist() {
    return Observer(builder: (context) {
//
      if (_homeStore.isLoading) {
        return Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        );
      }
//
      if (_homeStore.channellist.isEmpty) {
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
//
      return ListView.builder(
        itemCount: _homeStore.channellist.length,
        itemBuilder: (context, i) {
          var data = _homeStore.channellist[i];
          return GestureDetector(
            onTap: () {
              RouteUtils.changeRoute<PlayerModule>(PlayerRoute.root,
                  args: data.link);
            },
            child: Card(
              child: Container(
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    Image.network(
                      Config.basefootballUrl + _homeStore.channellist[i].img!,
                      width: 68,
                      height: 68,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      _homeStore.channellist[i].name,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
