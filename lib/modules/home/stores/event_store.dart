import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/data/event_data.dart';
import 'package:myfootball/modules/home/repositories/home_repo.dart';

part 'event_store.g.dart';

class EventStore = _EventStoreBase with _$EventStore;

abstract class _EventStoreBase with Store {
  //
  HomeRepository _repo = Modular.get<HomeRepository>();

  DateTime now = DateTime.now();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  ObservableList<EventData> eventlist = ObservableList<EventData>();

  @action
  Future getNowEventList({
    Function? onSuccess,
    required bool isRefresh,
  }) async {
    try {
      (!isRefresh) ? isLoading = true : isLoading = false;
     
      eventlist.clear();
      errorMessage = null;
      var teams = await _repo.getEventByDate(
          date: '${now.year}-${now.month}-${now.day}');
      for (var element in teams.data) {
        eventlist.add(element);
      }
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      await _repo.getEventByDate(date: '${now.year}-${now.month}-${now.day}');
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.getEventByDate(date: '${now.year}-${now.month}-${now.day}');
      isLoading = false;
      errorMessage = e.toString();
    }
    //
  }
}
