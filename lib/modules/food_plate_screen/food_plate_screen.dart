import 'package:flutter/material.dart';
import 'package:selfserviceapp/components/alert.dart';
import 'package:selfserviceapp/database/mock.dart';
import 'package:selfserviceapp/model/item_model.dart';

import '../../components/drop-down.dart';
import 'bloc/item_bloc.dart';
import 'package:selfserviceapp/components/alert.dart';

class FoodPlateScreen extends StatefulWidget {
  const FoodPlateScreen({Key? key}) : super(key: key);

  @override
  State<FoodPlateScreen> createState() => _FoodPlateScreenState();
}

class _FoodPlateScreenState extends State<FoodPlateScreen> {
  ItemBloc itemBloc = ItemBloc();

  List<ItemModel> getItens() {
    return itemsMock;
  }

  Widget availableItems({List<ItemModel>? items}) {
    return Container(
      height: 110,
      color: Colors.grey,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          itemCount: items!.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => alert(context,
                  message: items[index].description!,
                  title: items[index].name!, onConfirmed: () {
                    itemBloc.addItem(item: items[index]);
                    Navigator.pop(context);
              }),
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      items[index].image!,
                      height: 80,
                      fit: BoxFit.fitHeight,
                    ),
                    Text(items[index].name!)
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget foodPlateItem({ItemModel? foodPlateItem, int? index}) {
    return RotatedBox(
      quarterTurns: -2,
      child: GestureDetector(
        onLongPress: () => itemBloc.removeItem(index: index),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Image.asset(foodPlateItem!.image!),
        ),
      ),
    );
  }

  Widget foodPlate() {
    return SizedBox(
        height: 120,
        width: double.infinity,
        child: Image.asset(
          "assets/plate.png",
          fit: BoxFit.fitWidth,
        ));
  }

  @override
  void initState() {
    itemBloc.getItens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    double itenSize = sizeScreen.width / 6;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Faça seu prato"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 50,
          ),
          StreamBuilder<List<ItemModel>>(
              stream: itemBloc.output,
              builder: (context, snapshot) {
                print('renderizando');
                return RotatedBox(
                  quarterTurns: -2,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3)),
                    child: Scrollbar(
                      thumbVisibility: true,
                      child: GridView.builder(
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: itenSize,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: itemBloc.itensFoodPlate.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return foodPlateItem(
                                foodPlateItem: itemBloc.itensFoodPlate[index],
                                index: index);
                          }),
                    ),
                  ),
                );
              }),
          const DropdownButtonExample(),
          foodPlate(),
          availableItems(items: itemBloc.availableItems),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.check),
        label: const Text('Concluir prato'),
      ),
    );
  }
}
