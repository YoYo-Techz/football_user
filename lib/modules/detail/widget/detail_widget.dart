import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/detail/fragment/hxh_fragment.dart';
import 'package:myfootball/modules/detail/fragment/line_up_fragment.dart';
import 'package:myfootball/modules/detail/fragment/live_fragment.dart';
import 'package:myfootball/modules/detail/fragment/overview_fragment.dart';
import 'package:myfootball/modules/detail/store/detail_store.dart';

class DetailWidget extends StatefulWidget {
  final int id;
  final String season;
  DetailWidget({Key? key, required this.id, required this.season})
      : super(key: key);

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  DetailStore _detailStore = Modular.get<DetailStore>();

  @override
  void initState() {
    super.initState();
    _detailStore.getEventDetail(id: widget.id, season: widget.season);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (_detailStore.isLoading) {
        // loading
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (_detailStore.errorMessage.isNotEmpty) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
              child: Text(
            _detailStore.errorMessage,
            style: const TextStyle(
                color: Colors.red, fontWeight: FontWeight.w700, fontSize: 15),
          )),
        );
      }
      return DefaultTabController(
        length: _detailStore.tablength,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: (_detailStore.eventDetail!.data!
                                                        .home!.logo ==
                                                    null ||
                                                _detailStore.eventDetail!.data!
                                                    .home!.logo!.isEmpty ||
                                                _detailStore.eventDetail!.data!
                                                    .home!.logo!
                                                    .contains("null") ||
                                                _detailStore.eventDetail!.data!
                                                        .home ==
                                                    null)
                                            ? Image.asset(
                                                "assets/logo/icon.png",
                                              )
                                            : CachedNetworkImage(
                                                imageUrl: _detailStore
                                                        .eventDetail!
                                                        .data!
                                                        .home!
                                                        .logo ??
                                                    "",
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
                                                placeholder: (context, url) =>
                                                    CircularProgressIndicator(),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        Icon(Icons.error),
                                              )),
                                  ),
                                  Text(
                                    _detailStore.eventDetail!.data!.home!.name!,
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
                                      (_detailStore.eventDetail!.data!.goals!
                                                      .away !=
                                                  null ||
                                              _detailStore.eventDetail!.data!
                                                      .goals!.home !=
                                                  null)
                                          ? " ${_detailStore.eventDetail!.data!.goals!.home} - ${_detailStore.eventDetail!.data!.goals!.away} "
                                          : _detailStore.eventDetail!.data!
                                                  .status!.long ??
                                              "",
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: (_detailStore.eventDetail!
                                                          .data!.goals!.away !=
                                                      null ||
                                                  _detailStore.eventDetail!
                                                          .data!.goals!.home !=
                                                      null)
                                              ? Colors.blue
                                              : Colors.red,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13),
                                    ),
                                  )
                                ],
                              ))),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: (_detailStore.eventDetail!.data!
                                                      .away!.logo ==
                                                  null ||
                                              _detailStore.eventDetail!.data!
                                                  .away!.logo!.isEmpty ||
                                              _detailStore.eventDetail!.data!
                                                  .away!.logo!
                                                  .contains("null") ||
                                              _detailStore.eventDetail!.data!
                                                      .away ==
                                                  null)
                                          ? Image.asset(
                                              "assets/logo/icon.png",
                                              // width: 165,
                                              // height: 165,
                                            )
                                          : CachedNetworkImage(
                                              imageUrl: _detailStore
                                                      .eventDetail!
                                                      .data!
                                                      .away!
                                                      .logo ??
                                                  "",
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
                                              placeholder: (context, url) =>
                                                  CircularProgressIndicator(),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      Icon(Icons.error),
                                            )),
                                ),
                                Text(
                                  _detailStore.eventDetail!.data!.away?.name ??
                                      "",
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
                    ),
                    TabBar(
                      unselectedLabelColor: Colors.grey[600],
                      labelColor: Colors.green,
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      tabs: [
                        Tab(text: "Overview"),
                        Tab(text: "Live"),
                        Tab(text: "Line-Up"),
                        Tab(text: "H2H"),
                      ],
                    )
                  ],
                ),
                preferredSize: Size.fromHeight(kToolbarHeight * 2.2)),
          ),
          body: TabBarView(
            children: [
              OverviewFragment(),
              LiveFragment(),
              LineUpFragment(),
              H2HFragment(),
            ],
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _detailStore.dispose();
    super.dispose();
  }
}
