// GENERATED CODE - DO NOT MODIFY BY HAND

part of channel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Channel> _$channelSerializer = new _$ChannelSerializer();

class _$ChannelSerializer implements StructuredSerializer<Channel> {
  @override
  final Iterable<Type> types = const [Channel, _$Channel];
  @override
  final String wireName = 'Channel';

  @override
  Iterable<Object?> serialize(Serializers serializers, Channel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Channel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChannelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Channel extends Channel {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String? img;
  @override
  final String? link;
  @override
  final String? status;

  factory _$Channel([void Function(ChannelBuilder)? updates]) =>
      (new ChannelBuilder()..update(updates)).build();

  _$Channel._({this.id, required this.name, this.img, this.link, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Channel', 'name');
  }

  @override
  Channel rebuild(void Function(ChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelBuilder toBuilder() => new ChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Channel &&
        id == other.id &&
        name == other.name &&
        img == other.img &&
        link == other.link &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), img.hashCode),
            link.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Channel')
          ..add('id', id)
          ..add('name', name)
          ..add('img', img)
          ..add('link', link)
          ..add('status', status))
        .toString();
  }
}

class ChannelBuilder implements Builder<Channel, ChannelBuilder> {
  _$Channel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ChannelBuilder();

  ChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _img = $v.img;
      _link = $v.link;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Channel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Channel;
  }

  @override
  void update(void Function(ChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Channel build() {
    final _$result = _$v ??
        new _$Channel._(
            id: id,
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Channel', 'name'),
            img: img,
            link: link,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
