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
  integer,
  string,
  fooInt,
  fooString,
}

class _$SimpleUnion extends SimpleUnion {
  final _$SimpleUnionType _type;
  final Object _value;

  factory _$SimpleUnion([void Function(SimpleUnionBuilder) updates]) =>
      (new SimpleUnionBuilder()..update(updates)).build();

  /*
  _$SimpleUnion.fromInteger(int value): type = _SimpleUnionType.integer, value = value;
  _$SimpleUnion.fromString(String value): type = _SimpleUnionType.string, value = value;
  _$SimpleUnion.fromFooInt(Foo<Int> value): type = _SimpleUnionType.fooInt, value = value;
  _$SimpleUnion.fromFooInt(Foo<String> value): type = _SimpleUnionType.fooString, value = value;
  */

  _$SimpleUnion._(this._type, this._value) : super._() {
    if (_type == null) {
      // TODO: Better exception to throw here?
      throw Exception('SimpleUnion: null type');
    }
    if (_value == null) {
      // TODO: Better exception to throw here?
      throw Exception('SimpleUnion: null value');
    }
  }

  @override
  T match<T>({
      @required T Function (int) integer,
      @required T Function (String) string,
      @required T Function (Foo<int>) fooInt,
      @required T Function (Foo<String>) fooString,
    }) {
    switch (_type) {
      case _$SimpleUnionType.integer:
        return integer(_value);
      case _$SimpleUnionType.string:
        return string(_value);
      case _$SimpleUnionType.fooInt:
        return fooInt(_value);
      case _$SimpleUnionType.fooString:
        return fooString(_value);
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
          integer: (otherValue) => (_type == _$SimpleUnionType.integer && _value == otherValue),
          string: (otherValue) => (_type == _$SimpleUnionType.string && _value == otherValue),
          fooInt: (otherValue) => (_type == _$SimpleUnionType.fooInt && _value == otherValue),
          fooString: (otherValue) => (_type == _$SimpleUnionType.fooString && _value == otherValue),
        );
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, _type.hashCode), _value.hashCode));
  }

  @override
  String toString() => (newBuiltValueToStringHelper('SimpleUnion')
        ..add('value', _value)
        ..add('type', _type))
      .toString();
}

class SimpleUnionBuilder implements Builder<SimpleUnion, SimpleUnionBuilder> {
  _$SimpleUnion _$v;

  /*
  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  String _aString;
  String get aString => _$this._aString;
  set aString(String aString) => _$this._aString = aString;
  */

  set integer(int value) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.integer, value);
  }
  set string(String value) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.string, value);
  }
  set fooInt(Foo<int> value) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.fooInt, value);
  }
  set fooString(Foo<String> value) {
    _$v = _$SimpleUnion._(_$SimpleUnionType.fooString, value);
  }

  SimpleUnionBuilder();

  /*
  SimpleUnionBuilder get _$this {
    if (_$v != null) {
      _anInt = _$v.anInt;
      _aString = _$v.aString;
      _$v = null;
    }
    return this;
  }
  */

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
