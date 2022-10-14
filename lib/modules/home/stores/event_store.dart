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

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  ObservableList<EventData> eventlist = ObservableList<EventData>();

  @action
  Future getAllEventList({
    Function? onSuccess,
  }) async {
    try {
      isLoading = true;
      eventlist.clear();
      errorMessage = null;
      var teams = await _repo.getAllEventResponse();
      for (var element in teams.data) {
        eventlist.add(element);
      }
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      await _repo.getAllEventResponse();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.getAllEventResponse();
      isLoading = false;
      errorMessage = e.toString();
    }
    //
  }
}
