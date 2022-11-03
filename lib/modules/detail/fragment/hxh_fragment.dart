import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/detail/store/detail_store.dart';

class H2HFragment extends StatelessWidget {
  const H2HFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailStore _detailStore = Modular.get<DetailStore>();
    return Observer(builder: (context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: _detailStore.h2hlist
                      .map(
                        (element) => Card(
                          elevation: 0.1,
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                CachedNetworkImage(
                                                  imageUrl: element.home!.logo ?? "",
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
                                                  width: 35,
                                                  height: 35,
                                                  placeholder: (context, url) =>
                                                      CircularProgressIndicator(),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Icon(Icons.error),
                                                ),
                                                Text(
                                                  element.home!.name ?? "",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              element.goals!.home ?? "",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                CachedNetworkImage(
                                                  imageUrl: element.away!.logo ?? "",
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
                                                  width: 35,
                                                  height: 35,
                                                  placeholder: (context, url) =>
                                                      CircularProgressIndicator(),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Icon(Icons.error),
                                                ),
                                                Text(
                                                  element.away!.name ?? "",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              element.goals!.away ?? "",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    element.status!.long.toString(),
                                    style: TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
