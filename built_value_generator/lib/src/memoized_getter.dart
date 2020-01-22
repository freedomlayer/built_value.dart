library built_value_generator.memoized_getter;

import 'package:analyzer/dart/element/element.dart';
import 'package:built_value_generator/src/dart_types.dart';
import 'package:built_value_generator/src/metadata.dart'
    show metadataToStringValue;

class MemoizedGetter {
  String returnType;
  String name;

  MemoizedGetter({this.returnType, this.name});

  static Iterable<MemoizedGetter> fromClassElement(ClassElement classElement) {
    return classElement.fields
        .where((field) =>
            field.getter != null &&
            !field.getter.isAbstract &&
            field.getter.metadata.any(
                (metadata) => metadataToStringValue(metadata) == 'memoized'))
        .map((field) => MemoizedGetter(
            returnType: DartTypes.getName(field.getter.returnType),
            name: field.displayName))
        .toList();
  }
}
