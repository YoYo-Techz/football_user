import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/models/data/summary.dart';
import 'package:myfootball/models/data/table.dart';
import 'package:myfootball/models/response/event_detail_response.dart';
import 'package:myfootball/modules/detail/repositories/detail_repo.dart';

part 'detail_store.g.dart';

class DetailStore = _DetailStoreBase with _$DetailStore;

abstract class _DetailStoreBase with Store {
  DetailRepository _repo = Modular.get<DetailRepository>();

  @observable
  bool isLoading = false;

  @observable
  int tablength = 4;

  @observable
  String errorMessage = "";

  @observable
  EventDetailResponse? eventDetail;

  @observable
  ObservableList<Event> h2hlist = ObservableList<Event>();

  @observable
  ObservableList<Table> tablelist = ObservableList<Table>();

  @observable
  ObservableList<Summary> summarylist = ObservableList<Summary>();

  @action
  Future getEventDetail({required int id, required String season}) async {
    try {
      isLoading = true;
      var response = await _repo.getEventDetail(id: id, season: season);
      eventDetail = response;
      for (var i = 0; i < response.h2h.length; i++) {
        h2hlist.add(response.h2h[i]!);
      }
      for (var i = 0; i < response.table.length; i++) {
        tablelist.add(response.table[i]!);
      }
      for (var i = 0; i < response.summary.length; i++) {
        summarylist.add(response.summary[i]!);
      }
      print("summarylist: ${summarylist.length}");
      print("h2hlist: ${h2hlist.length}");
      print("tablelist: ${tablelist.length}");
      isLoading = false;
    } on SocketException {
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      isLoading = false;
      errorMessage = e.toString();
    }
  }

  @action
  void dispose() {
    h2hlist.clear();
    tablelist.clear();
    summarylist.clear();
    eventDetail = null;
    errorMessage = "";
  }
}
