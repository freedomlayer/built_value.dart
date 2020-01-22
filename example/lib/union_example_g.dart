// GENERATED CODE - DO NOT MODIFY BY HAND

part of union;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

/*
Serializer<SimpleValue> _$simpleValueSerializer = new _$SimpleValueSerializer();

class _$SimpleValueSerializer implements StructuredSerializer<SimpleValue> {
  @override
  final Iterable<Type> types = const [SimpleValue, _$SimpleValue];
  @override
  final String wireName = 'SimpleValue';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'anInt',
      serializers.serialize(object.anInt, specifiedType: const FullType(int)),
    ];
    if (object.aString != null) {
      result
        ..add('aString')
        ..add(serializers.serialize(object.aString,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SimpleValue deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'anInt':
          result.anInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aString':
          result.aString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

*/


enum _$SimpleUnionType {
  empty,
  integer,
  tuple,
  string,
  fooInt,
  fooString,
}

class _$SimpleUnion extends SimpleUnion {
  final _$SimpleUnionType _type;
  final List<Object> _values;

  factory _$SimpleUnion([void Function(SimpleUnionBuilder) updates]) =>
      (new SimpleUnionBuilder()..update(updates)).build();

  _$SimpleUnion._(this._type, this._values) : super._() {
    if (_type == null) {
      // TODO: Better exception to throw here?
      throw Exception('SimpleUnion: null type');
    }
    if (_values == null) {
      // TODO: Better exception to throw here?
      throw Exception('SimpleUnion: null value');
    }
  }

  @override
  T match<T>({
      @required T Function () empty,
      @required T Function (int) integer,
      @required T Function (int, String) tuple,
      @required T Function (String) string,
      @required T Function (Foo<int>) fooInt,
      @required T Function (Foo<String>) fooString,
    }) {
    switch (_type) {
      case _$SimpleUnionType.empty:
        return empty();
      case _$SimpleUnionType.integer:
        return integer(_values[0]);
      case _$SimpleUnionType.tuple:
        return tuple(_values[0], _values[1]);
      case _$SimpleUnionType.string:
        return string(_values[0]);
      case _$SimpleUnionType.fooInt:
        return fooInt(_values[0]);
      case _$SimpleUnionType.fooString:
        return fooString(_values[0]);
      default:
        // TODO: Better exception to throw here?
        throw Exception('unknown type');
    }
  }

  @override
  SimpleUnion rebuild(void Function(SimpleUnionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleUnionBuilder toBuilder() => new SimpleUnionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleUnion &&
        other.match(
          empty: () => _type == _$SimpleUnionType.empty,
          integer: (otherValue0) => _type == _$SimpleUnionType.integer && _values[0] == otherValue0,
          tuple: (otherValue0, otherValue1) => _type == _$SimpleUnionType.empty && _values[0] == otherValue0 && _values[1] == otherValue1,
          string: (otherValue0) => _type == _$SimpleUnionType.string && _values[0] == otherValue0,
          fooInt: (otherValue0) => _type == _$SimpleUnionType.fooInt && _values[0] == otherValue0,
          fooString: (otherValue0) => _type == _$SimpleUnionType.fooString && _values[0] == otherValue0,
        );
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, _type.hashCode), _values.hashCode));
  }

  @override
  String toString() => (newBuiltValueToStringHelper('SimpleUnion')
        ..add('value', _values)
        ..add('type', _type))
      .toString();
}

class SimpleUnionBuilder implements Builder<SimpleUnion, SimpleUnionBuilder> {
  _$SimpleUnion _$v;

  void empty() {
    _$v = _$SimpleUnion._(_$SimpleUnionType.empty, []);
  }
  void integer(int value0) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.integer, [value0]);
  }
  void tuple(int value0, String value1) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.tuple, [value0, value1]);
  }
  void string(String value0) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.string, [value0]);
  }
  void fooInt(Foo<int> value0) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.fooInt, [value0]);
  }
  void fooString(Foo<String> value0) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.fooString, [value0]);
  }

  SimpleUnionBuilder();

  @override
  void replace(SimpleUnion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimpleUnion;
  }

  @override
  void update(void Function(SimpleUnionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleUnion build() {
    if (_$v == null) {
      throw new ArgumentError.notNull('SimpleUnion');
    }
    final _$result = _$v;
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
