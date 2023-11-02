import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///Product State
class ProductState extends Equatable {
  ///constructor for the `ProductState` class.Default theme light
  const ProductState({this.themeMode = ThemeMode.light});

  ///ThemeMode value
  final ThemeMode themeMode;

  @override
  List<Object?> get props => [themeMode];

  ///copyWith
  ProductState copyWith({
    ThemeMode? themeMode,
  }) {
    return ProductState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
