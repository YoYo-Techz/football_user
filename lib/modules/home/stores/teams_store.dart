import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/data/teams_data.dart';
import 'package:myfootball/modules/home/repositories/home_repo.dart';

part 'teams_store.g.dart';

class TeamsStore = _TeamsStoreBase with _$TeamsStore;

abstract class _TeamsStoreBase with Store {
  //
  HomeRepository _repo = Modular.get<HomeRepository>();

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
  ObservableList<TeamsData> teamslist = ObservableList<TeamsData>();

  @action
  Future getLeaguesList({
    required bool isRefresh,
    required bool isInit,
  }) async {
    try {
      if (isRefresh == true) {
        teamslist.clear();
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
        var teams = await _repo.getTemasList(page: currentPage);
        for (var element in teams.data!) {
          teamslist.add(element);
        }
        isLoading = false;
        currentPage = teams.pagination!.currentPage ?? 1;
        totalPage = teams.pagination!.lastPage;
        totalCount = teams.pagination!.total;
      }
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
