import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../core/errors/value_error.dart';

@immutable
abstract class ValueObject<S, F> {
  const ValueObject();
  Either<F, S> get value;

  //Throws [ValueError] containing the [ValueFailure]
  //id = identity - same as writing (right) => right
  S getValueOrCrash() => value.fold((failure) => throw ValueError<F>(failure), id);

  bool isRight() => value.isRight();
  bool isLeft() => value.isLeft();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<S, F> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}
