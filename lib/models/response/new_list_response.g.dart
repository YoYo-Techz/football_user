// GENERATED CODE - DO NOT MODIFY BY HAND

part of new_list_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewListResponse> _$newListResponseSerializer =
    new _$NewListResponseSerializer();

class _$NewListResponseSerializer
    implements StructuredSerializer<NewListResponse> {
  @override
  final Iterable<Type> types = const [NewListResponse, _$NewListResponse];
  @override
  final String wireName = 'NewListResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(News)])),
      'pagination',
      serializers.serialize(object.pagination,
          specifiedType: const FullType(Pagination)),
    ];

    return result;
  }

  @override
  NewListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(News)]))!
              as BuiltList<Object?>);
          break;
        case 'pagination':
          result.pagination.replace(serializers.deserialize(value,
              specifiedType: const FullType(Pagination))! as Pagination);
          break;
      }
    }

    return result.build();
  }
}

class _$NewListResponse extends NewListResponse {
  @override
  final BuiltList<News> data;
  @override
  final Pagination pagination;

  factory _$NewListResponse([void Function(NewListResponseBuilder)? updates]) =>
      (new NewListResponseBuilder()..update(updates)).build();

  _$NewListResponse._({required this.data, required this.pagination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'NewListResponse', 'data');
    BuiltValueNullFieldError.checkNotNull(
        pagination, 'NewListResponse', 'pagination');
  }

  @override
  NewListResponse rebuild(void Function(NewListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewListResponseBuilder toBuilder() =>
      new NewListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewListResponse &&
        data == other.data &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), pagination.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewListResponse')
          ..add('data', data)
          ..add('pagination', pagination))
        .toString();
  }
}

class NewListResponseBuilder
    implements Builder<NewListResponse, NewListResponseBuilder> {
  _$NewListResponse? _$v;

  ListBuilder<News>? _data;
  ListBuilder<News> get data => _$this._data ??= new ListBuilder<News>();
  set data(ListBuilder<News>? data) => _$this._data = data;

  PaginationBuilder? _pagination;
  PaginationBuilder get pagination =>
      _$this._pagination ??= new PaginationBuilder();
  set pagination(PaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  NewListResponseBuilder();

  NewListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewListResponse;
  }

  @override
  void update(void Function(NewListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewListResponse build() {
    _$NewListResponse _$result;
    try {
      _$result = _$v ??
          new _$NewListResponse._(
              data: data.build(), pagination: pagination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
