import 'dart:async';
import 'package:selfserviceapp/model/item_model.dart';

import '../../../database/mock.dart';

class ItemBloc {
  final StreamController<List<ItemModel>> streamItems = StreamController();
  Sink<List<ItemModel>> get input => streamItems.sink;
  Stream<List<ItemModel>> get output => streamItems.stream;

  List<ItemModel> availableItems = [];
  List<ItemModel> itensFoodPlate = [];

  getItens() {
    availableItems = itemsMock;
  }

  addItem({ItemModel? item}) {
    itensFoodPlate.add(item!);
    input.add(itensFoodPlate);
  }

  removeItem({int? index}) {
    itensFoodPlate.removeAt(index!);
    input.add(itensFoodPlate);
  }

  getItemsByCategory({category}) {
    //availableItems
  }

  destroy() {}
}
