import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/modules/home/repositories/home_repo.dart';

part 'leagues_store.g.dart';

class LeaguesStore = _LeaguesStoreBase with _$LeaguesStore;

abstract class _LeaguesStoreBase with Store {
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
  ObservableList<League> leauagelist = ObservableList<League>();

  @action
  Future getLeaguesList({
    required bool isRefresh,
    required bool isInit,
  }) async {
    try {
      if (isRefresh == true) {
        leauagelist.clear();
        currentPage = 1;
        isPageAvaliable = true;
        isLoading = false;
      } else if (isInit == true) {
        leauagelist.clear();
        currentPage = 1;
        isPageAvaliable = true;
        isLoading = true;
      } else if (isInit == false) {
        if (totalPage! >= currentPage) {
          currentPage++;
          isLoading = false;
        } else {
          isPageAvaliable = false;
        }
      }

      errorMessage = null;
      if (isPageAvaliable == true) {
        var leagues = await _repo.getLeagues(page: currentPage);
        for (var element in leagues.data!) {
          leauagelist.add(element);
        }
        isLoading = false;
        currentPage = leagues.pagination.currentPage ?? 1;
        totalPage = leagues.pagination.lastPage;
        totalCount = leagues.pagination.total;
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
