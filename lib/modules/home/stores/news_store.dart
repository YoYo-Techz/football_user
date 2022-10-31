// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/data/news.dart';
import 'package:myfootball/modules/home/repositories/home_repo.dart';

part 'news_store.g.dart';

class NewsStore = _NewsStoreBase with _$NewsStore;

abstract class _NewsStoreBase with Store {
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
  ObservableList<News> newlist = ObservableList<News>();

  @action
  Future getNewsList({
    required bool isRefresh,
    required bool isInit,
  }) async {
    try {
      if (isRefresh == true) {
        newlist.clear();
        currentPage = 1;
        isPageAvaliable = true;
        isLoading = false;
      } else if (isInit == true) {
        newlist.clear();
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
      if (isPageAvaliable == true) {
        var response = await _repo.getNewList(
          page: currentPage,
        );
        if (response != null) {
          newlist.addAll(response.data);
          isLoading = false;
          currentPage = response.pagination.currentPage ?? 1;
          totalPage = response.pagination.lastPage;
          totalCount = response.pagination.total;
          isLoading = false;
        }
      }
    } catch (e) {
      isLoading = false;
      errorMessage = e.toString();
    }
  }
}
