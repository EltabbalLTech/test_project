import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/src/models/app_model.dart';

final itemSelectionProvider =
ChangeNotifierProvider<ItemSelectionViewModel>(
      (ref) => ItemSelectionViewModel(),);

class ItemSelectionViewModel extends ChangeNotifier {
  final List<AppModel> selectedList = [];

  isSelected(AppModel item) => selectedList.contains(item);

  addItems(List<AppModel> items) {
    selectedList.addAll(items);
  }

  removeItem(AppModel item) {
    selectedList.remove(item);
  }
}

