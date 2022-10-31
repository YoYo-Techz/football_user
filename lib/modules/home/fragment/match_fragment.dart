import 'package:flutter/material.dart';

class MatchFragment extends StatefulWidget {
  MatchFragment({Key? key}) : super(key: key);

  @override
  _MatchFragmentState createState() => _MatchFragmentState();
}

class _MatchFragmentState extends State<MatchFragment> {

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

  // Widget _mapItem({required Matchs matchs}) {
  //   return GestureDetector(
  //     onTap: () {
  //       if (matchs.status == "idle") {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //           padding: EdgeInsets.all(8),
  //           content: Text('ပွဲစဥ်မစသေးပါ'),
  //           backgroundColor:  Colors.red.shade500,
  //         ));
  //       } else if (matchs.status == "started") {
  //         RouteUtils.changeRoute<PlayerModule>(PlayerRoute.root,
  //             args: matchs.url);
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //               padding: EdgeInsets.all(8),
  //             content: Text('ပွဲစဥ်ပြီးဆုံးသွားပါပြီ'),
  //             backgroundColor: Colors.red.shade500,
  //           ),
  //         );
  //       }
  //     },
  //     child: Card(
  //       elevation: 0,
  //       child: Container(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Expanded(
  //                     child: Column(
  //                   children: [
  //                     Padding(
  //                       padding: const EdgeInsets.all(5.0),
  //                       child: CircleAvatar(
  //                           backgroundColor: Colors.transparent,
  //                           child: Image.network(
  //                               Config.basefootballUrl + matchs.teamOne!.logo!)),
  //                     ),
  //                     Text(
  //                       matchs.teamOne!.name!,
  //                       maxLines: 1,
  //                       textAlign: TextAlign.center,
  //                       style: TextStyle(
  //                           color: Colors.grey[600],
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 15),
  //                     )
  //                   ],
  //                 )),
  //                 Expanded(
  //                     child: Center(
  //                         child: Column(
  //                   children: [
  //                     Padding(
  //                       padding: const EdgeInsets.all(8.0),
  //                       child: Text("VS"),
  //                     ),
  //                     (matchs.status != "idle")
  //                         ? Container(
  //                             padding: EdgeInsets.all(5),
  //                             decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(5),
  //                               color: Colors.grey[200],
  //                             ),
  //                             child: Text(
  //                               matchs.score!,
  //                               maxLines: 1,
  //                               style: TextStyle(
  //                                   color: Colors.blue,
  //                                   fontWeight: FontWeight.w700,
  //                                   fontSize: 13),
  //                             ),
  //                           )
  //                         : Container()
  //                   ],
  //                 ))),
  //                 Expanded(
  //                   child: Column(
  //                     children: [
  //                       Padding(
  //                         padding: const EdgeInsets.all(5.0),
  //                         child: CircleAvatar(
  //                             backgroundColor: Colors.transparent,
  //                             child: (matchs.teamTwo != null)
  //                                 ? Image.network(Config.basefootballUrl +
  //                                     matchs.teamTwo!.logo!)
  //                                 : Icon(Icons.play_arrow)),
  //                       ),
  //                       Text(
  //                         matchs.teamTwo?.name ?? "hello",
  //                         maxLines: 1,
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             color: Colors.grey[600],
  //                             fontWeight: FontWeight.w600,
  //                             fontSize: 15),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //             Divider(),
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       "Date : ${matchs.date}",
  //                       style: TextStyle(
  //                           color: Colors.grey[700],
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 14),
  //                     ),
  //                     SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       "Time : ${matchs.time}",
  //                       style: TextStyle(
  //                           color: Colors.grey[700],
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 14),
  //                     )
  //                   ],
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.all(5),
  //                   width: 130,
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(5),
  //                       color: (matchs.status == "idle")
  //                           ? Colors.green
  //                           : (matchs.status == "started")
  //                               ? Colors.green
  //                               : Colors.grey[200]),
  //                   child: (matchs.status == "idle")
  //                       ? Text(
  //                           "ပွဲစဥ်မစသေးပါ",
  //                           textAlign: TextAlign.center,
  //                           style: TextStyle(
  //                               color: Colors.white,
  //                               fontWeight: FontWeight.w400,
  //                               fontSize: 13),
  //                         )
  //                       : (matchs.status == "started")
  //                           ? Text(
  //                               "ပွဲစဥ်စနေပါပြီ",
  //                               textAlign: TextAlign.center,
  //                               style: TextStyle(
  //                                   color: Colors.white,
  //                                   fontWeight: FontWeight.w400,
  //                                   fontSize: 13),
  //                             )
  //                           : Text(
  //                               "ပွဲစဥ်ပြီးဆုံးသွားပါပြီ",
  //                               textAlign: TextAlign.center,
  //                               style: TextStyle(
  //                                   color: Colors.grey,
  //                                   fontWeight: FontWeight.w400,
  //                                   fontSize: 13),
  //                             ),
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

}
