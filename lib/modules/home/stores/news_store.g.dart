// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsStore on _NewsStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_NewsStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_NewsStoreBase.errorMessage');

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$currentPageAtom = Atom(name: '_NewsStoreBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$totalPageAtom = Atom(name: '_NewsStoreBase.totalPage');

  @override
  int? get totalPage {
    _$totalPageAtom.reportRead();
    return super.totalPage;
  }

  @override
  set totalPage(int? value) {
    _$totalPageAtom.reportWrite(value, super.totalPage, () {
      super.totalPage = value;
    });
  }

  final _$totalCountAtom = Atom(name: '_NewsStoreBase.totalCount');

  @override
  int? get totalCount {
    _$totalCountAtom.reportRead();
    return super.totalCount;
  }

  @override
  set totalCount(int? value) {
    _$totalCountAtom.reportWrite(value, super.totalCount, () {
      super.totalCount = value;
    });
  }

  final _$isPageAvaliableAtom = Atom(name: '_NewsStoreBase.isPageAvaliable');

  @override
  bool get isPageAvaliable {
    _$isPageAvaliableAtom.reportRead();
    return super.isPageAvaliable;
  }

  @override
  set isPageAvaliable(bool value) {
    _$isPageAvaliableAtom.reportWrite(value, super.isPageAvaliable, () {
      super.isPageAvaliable = value;
    });
  }

  final _$newlistAtom = Atom(name: '_NewsStoreBase.newlist');

  @override
  ObservableList<News> get newlist {
    _$newlistAtom.reportRead();
    return super.newlist;
  }

  @override
  set newlist(ObservableList<News> value) {
    _$newlistAtom.reportWrite(value, super.newlist, () {
      super.newlist = value;
    });
  }

  final _$getNewsListAsyncAction = AsyncAction('_NewsStoreBase.getNewsList');

  @override
  Future<dynamic> getNewsList({required bool isRefresh, required bool isInit}) {
    return _$getNewsListAsyncAction
        .run(() => super.getNewsList(isRefresh: isRefresh, isInit: isInit));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
currentPage: ${currentPage},
totalPage: ${totalPage},
totalCount: ${totalCount},
isPageAvaliable: ${isPageAvaliable},
newlist: ${newlist}
    ''';
  }
}
