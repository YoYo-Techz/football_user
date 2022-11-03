// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailStore on _DetailStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_DetailStoreBase.isLoading');

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

  final _$tablengthAtom = Atom(name: '_DetailStoreBase.tablength');

  @override
  int get tablength {
    _$tablengthAtom.reportRead();
    return super.tablength;
  }

  @override
  set tablength(int value) {
    _$tablengthAtom.reportWrite(value, super.tablength, () {
      super.tablength = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_DetailStoreBase.errorMessage');

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

  final _$eventDetailAtom = Atom(name: '_DetailStoreBase.eventDetail');

  @override
  EventDetailResponse? get eventDetail {
    _$eventDetailAtom.reportRead();
    return super.eventDetail;
  }

  @override
  set eventDetail(EventDetailResponse? value) {
    _$eventDetailAtom.reportWrite(value, super.eventDetail, () {
      super.eventDetail = value;
    });
  }

  final _$getEventDetailAsyncAction =
      AsyncAction('_DetailStoreBase.getEventDetail');

  @override
  Future<dynamic> getEventDetail({required int id, required String season}) {
    return _$getEventDetailAsyncAction
        .run(() => super.getEventDetail(id: id, season: season));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
tablength: ${tablength},
errorMessage: ${errorMessage},
eventDetail: ${eventDetail}
    ''';
  }
}
