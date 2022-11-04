import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/detail/store/detail_store.dart';

class OverviewFragment extends StatelessWidget {
  const OverviewFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailStore _detailStore = Modular.get<DetailStore>();
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Summary List",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Divider(),
                (_detailStore.summarylist.isNotEmpty)
                    ? Column(
                        children: _detailStore.summarylist
                            .map(
                              (element) => Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    // color: Colors.greenAccent,
                                  ),
                                  child: Text(_detailStore.getTeamName(
                                      id: element.teamId!))),
                            )
                            .toList(),
                      )
                    : Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red.shade100),
                        child: Text(
                          "No Summary List",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w700),
                        ),
                      ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Table List",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Divider(),
                (_detailStore.tablelist.isNotEmpty)
                    ? Column(
                        children: _detailStore.tablelist
                            .map(
                              (element) => Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    // color: Colors.greenAccent,
                                  ),
                                  child: Row(
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: _detailStore.getTeamLogo(
                                            id: element.teamId!),
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        width: 32,
                                        height: 32,
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(_detailStore.getTeamName(
                                          id: element.teamId!)),
                                    ],
                                  )),
                            )
                            .toList(),
                      )
                    : Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red.shade100),
                        child: Text(
                          "No Table List",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w700),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
