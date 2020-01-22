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
  Foo(data);
}

/// Example of how to use built_value.
///
/// The value class must implement [Built]. It must be abstract, and have
/// fields declared as abstract getters. Finally, it must have a particular
/// constructor and factory, as shown here.
// @union
abstract class SimpleUnion implements Built<SimpleUnion, SimpleUnionBuilder> {
  /// Example of how to make a built_value type serializable.
  ///
  /// Declare a static final [Serializer] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  // static Serializer<SimpleValue> get serializer => _$simpleValueSerializer;

  T match<T>({
      @required T Function (int) integer,
      @required T Function (String) string,
      @required T Function (Foo<int>) fooInt,
      @required T Function (Foo<String>) fooString,
    });

  factory SimpleUnion([void Function(SimpleUnionBuilder) updates]) =
      _$SimpleUnion;
  SimpleUnion._();
}

