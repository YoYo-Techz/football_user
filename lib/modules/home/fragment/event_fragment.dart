import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/modules/detail/detail_module.dart';
import 'package:myfootball/modules/detail/detail_routes.dart';
import 'package:myfootball/modules/home/stores/event_store.dart';
import 'package:myfootball/utils/rotue_utils.dart';

class TodayEventFragment extends StatefulWidget {
  TodayEventFragment({Key? key}) : super(key: key);

  @override
  State<TodayEventFragment> createState() => _TodayEventFragmentState();
}

class _TodayEventFragmentState extends State<TodayEventFragment> {
  EventStore _eventStore = Modular.get<EventStore>();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _eventStore.getNowEventList(isRefresh: false, isInit: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EasyRefresh(
      onLoad: () =>
          _eventStore.getNowEventList(isRefresh: false, isInit: false),
      onRefresh: () =>
          _eventStore.getNowEventList(isRefresh: true, isInit: false),
      child: Observer(builder: (context) {
        if (_eventStore.isLoading) {
          return Center(
            child: SizedBox(
              height: 38,
              child: Lottie.asset('assets/lottie/footbll.json'),
            ),
          );
        }
        if (_eventStore.eventlist.isEmpty) {
          return Column(
            children: [
              Expanded(
                child: Text(
                  "Empty",
                ),
              ),
              _eventStore.errorMessage != null
                  ? Padding(
                      padding:
                          EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
                      child: Text(
                        _eventStore.errorMessage!,
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : SizedBox()
            ],
          );
        }
        return SingleChildScrollView(
          child: Column(
            children: _eventStore.eventlist
                .map((element) => _evemtItem(event: element))
                .toList(),
          ),
        );
      }),
    ));
  }

  Widget _evemtItem({required Event event}) {
    return GestureDetector(
      onTap: () {
        RouteUtils.changeRoute<DetailModule>(DetailRoutes.root,args: [
          event.id,event.league?.season ?? ""
        ]);
      },
      child: Card(
        // elevation: 0,
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
                            child: (event.home!.logo == null ||
                                    event.home!.logo!.isEmpty ||
                                    event.home!.logo!.contains("null") ||
                                    event.home == null)
                                ? Image.asset(
                                    "assets/logo/icon.png",
                                  )
                                : CachedNetworkImage(
                                    imageUrl: event.home!.logo ?? "",
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  )),
                      ),
                      Text(
                        event.home!.name!,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )
                    ],
                  )),
                  Expanded(
                    flex: 2,
                      child: Center(
                          child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("VS"),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200],
                        ),
                        child: Text(
                          (event.goals!.away != null ||
                                  event.goals!.home != null)
                              ? " ${event.goals!.home} - ${event.goals!.away} "
                              : event.status!.long ?? "",
                          maxLines: 1,
                          style: TextStyle(
                              color: (event.goals!.away != null ||
                                      event.goals!.home != null)
                                  ? Colors.blue
                                  : Colors.red,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      )
                    ],
                  ))),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: (event.away!.logo == null ||
                                      event.away!.logo!.isEmpty ||
                                      event.away!.logo!.contains("null") ||
                                      event.away == null)
                                  ? Image.asset(
                                      "assets/logo/icon.png",
                                      // width: 165,
                                      // height: 165,
                                    )
                                  : CachedNetworkImage(
                                      imageUrl: event.away!.logo ?? "",
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    )),
                        ),
                        Text(
                          event.away?.name ?? "",
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              // color: Colors.grey[600],
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
                        "Date : ${event.time!}",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Time : ${event.timeReadable}",
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
                      ),
                      child: Text(
                        event.timeStatus.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
