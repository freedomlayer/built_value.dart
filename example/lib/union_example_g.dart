// GENERATED CODE - DO NOT MODIFY BY HAND

part of union;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleUnion> _$simpleUnionSerializer = new _$SimpleUnionSerializer();

class _$SimpleUnionSerializer implements StructuredSerializer<SimpleUnion> {
  @override
  final Iterable<Type> types = const [SimpleUnion, _$SimpleUnion];
  @override
  final String wireName = 'SimpleUnion';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleUnion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = object.match(
        empty: () => <Object>['empty'],
        integer: (value0) => <Object>[
              'integer',
              serializers.serialize(value0, specifiedType: const FullType(int))
            ],
        tuple: (value0, value1) => <Object>[
              'tuple',
              <Object>[serializers.serialize(value0, specifiedType: const FullType(int)),
              serializers.serialize(value1,
                  specifiedType: const FullType(String))]
            ],
        string: (value0) => <Object>[
              'string',
              serializers.serialize(value0,
                  specifiedType: const FullType(String))
            ],
        fooInt: (value0) {
          print('value0 = $value0');
          print(value0.data);
          return <Object>[
            'fooInt',
            serializers.serialize(value0, specifiedType: const FullType(Foo))
          ];
        },
        fooString: (value0) => <Object>[
              'fooString',
              serializers.serialize(value0, specifiedType: const FullType(Foo))
            ]);

    return result;
  }

  @override
  SimpleUnion deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {

    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final Object value = iterator.current;
    var result;
    switch (key) {
      case 'empty':
        result = SimpleUnion.empty();
        break;
      case 'integer':
        iterator.moveNext();
        result = SimpleUnion.integer(serializers.deserialize(value,
            specifiedType: const FullType(int)));
        break;
      case 'tuple':
        final iterator = (value as Iterable<Object>).iterator;
        iterator.moveNext();
        final dynamic value0 = iterator.current;
        iterator.moveNext();
        final dynamic value1 = iterator.current;

        result = SimpleUnion.tuple(
            serializers.deserialize(value0, specifiedType: const FullType(int)),
            serializers.deserialize(value1,
                specifiedType: const FullType(String)));
        break;
      case 'string':
        result = SimpleUnion.integer(serializers.deserialize(value,
            specifiedType: const FullType(String)));
        break;
      case 'fooInt':
        result = SimpleUnion.fooInt(serializers.deserialize(value,
            specifiedType: const FullType(Foo)));
        break;
      case 'fooString':
        result = SimpleUnion.fooInt(serializers.deserialize(value,
            specifiedType: const FullType(Foo)));
        break;
    }

    return result;
  }
}

enum _$SimpleUnionType {
  empty,
  integer,
  tuple,
  string,
  fooInt,
  fooString,
}

abstract class _$SimpleUnion {
  final _$SimpleUnionType _type;
  final List<Object> _values;

  _$SimpleUnion.empty(): _type = _$SimpleUnionType.empty, _values = [];
  _$SimpleUnion.integer(int integer): _type = _$SimpleUnionType.integer, _values = [integer];
  _$SimpleUnion.tuple(int tupleInteger, String tupleString): _type = _$SimpleUnionType.tuple, _values = [tupleInteger, tupleString];
  _$SimpleUnion.string(String string): _type = _$SimpleUnionType.string, _values = [string];
  _$SimpleUnion.fooInt(Foo<int> fooInt): _type = _$SimpleUnionType.fooInt, _values = [fooInt];
  _$SimpleUnion.fooString(Foo<String> fooString): _type = _$SimpleUnionType.fooString, _values = [fooString];

  T match<T>({
    @required T Function() empty,
    @required T Function(int) integer,
    @required T Function(int, String) tuple,
    @required T Function(String) string,
    @required T Function(Foo<int>) fooInt,
    @required T Function(Foo<String>) fooString,
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
  bool operator ==(Object other) {
    if (identical(other, this)) {
      return true;
    }
    if (other is _$SimpleUnion) {
      if (_type != other._type) {
        return false;
      }
      if (_values.length != other._values.length) {
        return false;
      }
      for (var i=0; i < _values.length; ++i) {
        if (_values[i] != other._values[i]) {
          return false;
        }
      }
      return true;
    } else {
      return false;
    }
  }

  @override
  int get hashCode {
    var curVal = $jc(0, _type.hashCode);
    for (final value in _values) {
      curVal = $jc(curVal, value.hashCode);
    }

    return $jf(curVal);
  }

  @override
  String toString() => (newBuiltValueToStringHelper('SimpleUnion')
        ..add('value', _values)
        ..add('type', _type))
      .toString();
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
