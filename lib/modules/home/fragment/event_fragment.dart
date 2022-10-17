import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/models/data/event_data.dart';
import 'package:myfootball/modules/home/stores/event_store.dart';

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
    _eventStore.getAllEventList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Observer(builder: (context) {
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
                  .map(
                    (element) => _mapItem(eventData: element),
                  )
                  .toList(),
            ),
          );
        }));
  }

  Widget _mapItem({required EventData eventData}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eventData.league!.name!,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children:
                eventData.event!.map((p0) => _evemtItem(event: p0)).toList(),
          )
        ],
      ),
    );
  }

  Widget _evemtItem({required Event event}) {
    return GestureDetector(
      onTap: () {
        // if (matchs.status == "idle") {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     padding: EdgeInsets.all(8),
        //     content: Text('ပွဲစဥ်မစသေးပါ'),
        //     backgroundColor: Colors.red.shade500,
        //   ));
        // } else if (matchs.status == "started") {
        //   RouteUtils.changeRoute<PlayerModule>(PlayerRoute.root,
        //       args: matchs.url);
        // } else {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(
        //       padding: EdgeInsets.all(8),
        //       content: Text('ပွဲစဥ်ပြီးဆုံးသွားပါပြီ'),
        //       backgroundColor: Colors.red.shade500,
        //     ),
        //   );
        // }
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
                            child: (event.home!.image == null ||
                                    event.home!.image!.isEmpty ||
                                    event.home!.image!.contains("null") ||
                                    event.home == null)
                                ? Image.asset(
                                    "assets/logo/icon.png",
                                  )
                                : Image.network(event.home!.image ?? "")),
                      ),
                      Text(
                        event.home!.name!,
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
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200],
                        ),
                        child: Text(
                          event.ss ?? "0-0",
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.blue,
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
                              child: (event.away!.image == null ||
                                      event.away!.image!.isEmpty ||
                                      event.away!.image!.contains("null") ||
                                      event.away == null)
                                  ? Image.asset(
                                      "assets/logo/icon.png",
                                      // width: 165,
                                      // height: 165,
                                    )
                                  : Image.network(event.away!.image ?? "")),
                        ),
                        Text(
                          event.away?.name ?? "",
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
