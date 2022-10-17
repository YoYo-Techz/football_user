import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';

class ChannelFragment extends StatefulWidget {
  ChannelFragment({Key? key}) : super(key: key);

  @override
  State<ChannelFragment> createState() => _ChannelFragmentState();
}

class _ChannelFragmentState extends State<ChannelFragment> {


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
      body: Container()
    );
  }

//   Widget _storelist() {
//     return Observer(builder: (context) {
// //
//       if (_homeStore.isLoading) {
//         return Center(
//           child: CircularProgressIndicator(
//             valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
//           ),
//         );
//       }
// //
//       if (_homeStore.channellist.isEmpty) {
//         return Column(
//           children: [
//             Expanded(
//               child: Text(
//                 "Empty",
//               ),
//             ),
//             _homeStore.errorMessage != null
//                 ? Padding(
//                     padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 70),
//                     child: Text(
//                       _homeStore.errorMessage!,
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   )
//                 : SizedBox()
//           ],
//         );
//       }
// //
//       return ListView.builder(
//         itemCount: _homeStore.channellist.length,
//         itemBuilder: (context, i) {
//           var data = _homeStore.channellist[i];
//           return GestureDetector(
//             onTap: () {
//               RouteUtils.changeRoute<PlayerModule>(PlayerRoute.root,
//                   args: data.link);
//             },
//             child: Card(
//               child: Container(
//                 padding: EdgeInsets.all(4),
//                 child: Row(
//                   children: [
//                     Image.network(
//                       Config.basefootballUrl + _homeStore.channellist[i].img!,
//                       width: 50,
//                       height: 50,
//                       fit: BoxFit.fill,
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       _homeStore.channellist[i].name,
//                       style:
//                           TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       );
//     });
//   }

}
