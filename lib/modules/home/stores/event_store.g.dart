// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EventStore on _EventStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_EventStoreBase.isLoading');

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

  final _$errorMessageAtom = Atom(name: '_EventStoreBase.errorMessage');

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

  final _$eventlistAtom = Atom(name: '_EventStoreBase.eventlist');

  @override
  ObservableList<EventData> get eventlist {
    _$eventlistAtom.reportRead();
    return super.eventlist;
  }

  @override
  set eventlist(ObservableList<EventData> value) {
    _$eventlistAtom.reportWrite(value, super.eventlist, () {
      super.eventlist = value;
    });
  }

  final _$getAllEventListAsyncAction =
      AsyncAction('_EventStoreBase.getAllEventList');

  @override
  Future<dynamic> getAllEventList({Function? onSuccess}) {
    return _$getAllEventListAsyncAction
        .run(() => super.getAllEventList(onSuccess: onSuccess));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
eventlist: ${eventlist}
    ''';
  }
}
