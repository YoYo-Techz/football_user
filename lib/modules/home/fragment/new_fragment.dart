import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:myfootball/modules/home/stores/home_store.dart';
import 'package:myfootball/modules/home/stores/news_store.dart';

class NewsFragmet extends StatefulWidget {
  NewsFragmet({Key? key}) : super(key: key);

  @override
  _NewsFragmetState createState() => _NewsFragmetState();
}

class _NewsFragmetState extends State<NewsFragmet> {
  NewsStore _newsStore = Modular.get<NewsStore>();

  @override
  void initState() {
    super.initState();
    _newsStore.getNewsList(isRefresh: false, isInit: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CM Sport"),
        ),
        body: EasyRefresh(
          onLoad: () => _newsStore.getNewsList(isRefresh: false, isInit: false),
          onRefresh: () =>
              _newsStore.getNewsList(isRefresh: true, isInit: false),
          child: Observer(builder: (context) {
            if (_newsStore.isLoading) {
              return Center(
                child: SizedBox(
                  height: 38,
                  child: Lottie.asset('assets/lottie/footbll.json'),
                ),
              );
            }
            if (_newsStore.newlist.isEmpty) {
              return Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Empty",
                      ),
                    ),
                  ),
                  _newsStore.errorMessage != null
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20, bottom: 70),
                          child: Text(
                            _newsStore.errorMessage!,
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      : SizedBox()
                ],
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: _newsStore.newlist
                    .map((element) => Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CachedNetworkImage(
                              imageUrl: element.image,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                width: 130,
                                height: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              ),
                              errorWidget: (context, url, error) => Icon(
                                  Icons.error), // TODO: implement errorWidget
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    element.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.grey.shade900,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    element.description,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade800,
                                        fontSize: 14),
                                    maxLines: 3,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )))
                    .toList(),
              ),
            );
          }),
        ));
  }
}
