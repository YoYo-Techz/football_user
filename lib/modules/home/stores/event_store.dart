import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/data/event.dart';
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

  // current page
  @observable
  int currentPage = 1;

  // Total page
  @observable
  int? totalPage;

  // Total page
  @observable
  int? totalCount;

  @observable
  bool isPageAvaliable = false;

  @observable
  ObservableList<Event> eventlist = ObservableList<Event>();

  @action
  Future getNowEventList({
    required bool isRefresh,
    required bool isInit,
  }) async {
    try {
      if (isRefresh == true) {
        eventlist.clear();
        currentPage = 1;
        isPageAvaliable = true;
      } else if (isInit == true) {
        isLoading = true;
        currentPage = 1;
        isPageAvaliable = true;
      } else if (isInit == false) {
        isLoading = false;
        if (totalPage! >= currentPage) {
          currentPage++;
          isPageAvaliable = true;
          print("current page $currentPage");
        } else {
          isPageAvaliable = false;
        }
      }
      errorMessage = null;
      if (isPageAvaliable == true) {
        var teams = await _repo.getEventByDate(
            date: '${now.year}-${now.month}-${now.day}', page: currentPage);
        for (var element in teams.data) {
          eventlist.add(element);
        }
        isLoading = false;
        currentPage = teams.pagination.currentPage ?? 1;
        totalPage = teams.pagination.lastPage;
        totalCount = teams.pagination.total;
      }
    } on SocketException {
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      isLoading = false;
      errorMessage = e.toString();
    }
    //
  }
}
