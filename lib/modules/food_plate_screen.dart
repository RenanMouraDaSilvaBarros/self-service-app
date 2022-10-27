import 'package:flutter/material.dart';
import 'package:selfserviceapp/database/mock.dart';
import 'package:selfserviceapp/model/item_model.dart';

import '../components/drop-down.dart';

class FoodPlateScreen extends StatefulWidget {
  const FoodPlateScreen({Key? key}) : super(key: key);

  @override
  State<FoodPlateScreen> createState() => _FoodPlateScreenState();
}

class _FoodPlateScreenState extends State<FoodPlateScreen> {
List<ItemModel> itens = [];

 List<ItemModel> getItens(){
  return itensMock;
 }


  Widget generateItens(List<ItemModel> itens) {
    return Container(
      height: 110,
      color: Colors.grey,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          itemCount: itens.length,
          itemBuilder: (context, i) {
            return Card(
              child: Column(
                children: [
                  Image.asset(
                    itens[i].image!,
                    height: 80,
                    fit: BoxFit.fitHeight,
                  ),
                  Text(itens[i].name!)
                ],
              ),
            );
          }),
    );
  }

  @override
  void initState() {
    itens = getItens();
    print(itens);
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
          RotatedBox(
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
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: itenSize,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount:itens.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return RotatedBox(
                        quarterTurns: -2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(itens[index].image!),
                        ),
                      );
                    }),
              ),
            ),
          ),
          Container(
              height: 120,
              width: double.infinity,
              child: Image.asset(
                "assets/plate.png",
                fit: BoxFit.fitWidth,
              )),
          const DropdownButtonExample(),
          generateItens(itens),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            //itens.add('assets/arroz.png');
          });
        },
        icon: const Icon(Icons.check),
        label: const Text('Concluir prato'),
      ),
    );
  }
}
