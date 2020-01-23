// Copyright (c) 2017, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library union;

// import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
// import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'union_example_g.dart';


class Foo<T> {
  T data;
  Foo(data): data = data;

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) {
      return true;
    }
    return other is Foo<T> &&
        data == other.data;
  }
}

final fooSerializer = FooSerializer<int>();

class FooSerializer<T> implements StructuredSerializer<Foo<T>> {
  @override
  final Iterable<Type> types = const [Foo];
  @override
  final String wireName = 'Foo';

  @override
  Iterable<Object> serialize(Serializers serializers, Foo<T> object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[serializers.serialize(object.data, specifiedType: FullType(T))];
  }

  @override
  Foo<T> deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {

    final iterator = serialized.iterator;
    iterator.moveNext();
    return Foo(serializers.deserialize(iterator.current, specifiedType: FullType(T)));
  }
}



/// Example of how to use built_value.
///
/// The value class must implement [Built]. It must be abstract, and have
/// fields declared as abstract getters. Finally, it must have a particular
/// constructor and factory, as shown here.
// @union
class SimpleUnion extends _$SimpleUnion {
  /// Example of how to make a built_value type serializable.
  ///
  /// Declare a static final [Serializer] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<SimpleUnion> get serializer => _$simpleUnionSerializer;

  SimpleUnion.empty(): super.empty();
  SimpleUnion.integer(int integer): super.integer(integer);
  SimpleUnion.tuple(int tupleInt, String tupleString): super.tuple(tupleInt, tupleString);
  SimpleUnion.string(String string): super.string(string);
  SimpleUnion.fooInt(Foo<int> fooInt): super.fooInt(fooInt);
  SimpleUnion.fooString(Foo<String> fooString): super.fooString(fooString);
}

