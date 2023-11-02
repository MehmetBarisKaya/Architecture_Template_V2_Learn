// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';
import 'package:architecture_template_v2/product/state/view_model/product_state.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends BaseCubit<ProductState> {
  ProductViewModel() : super(const ProductState());

  //Change the mode
  void changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
