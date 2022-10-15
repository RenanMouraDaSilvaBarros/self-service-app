import 'package:flutter/material.dart';

import '../components/drop-down.dart';
import 'dart:math' as math;

class FoodPlatescreen extends StatefulWidget {
  const FoodPlatescreen({Key? key}) : super(key: key);

  @override
  State<FoodPlatescreen> createState() => _FoodPlatescreenState();
}

class _FoodPlatescreenState extends State<FoodPlatescreen> {
  List iten = [
    'assets/copo-de-agua.png',
    'assets/carne.png',
    'assets/red-beans.png',
  ];
  List iten2 = [
    'assets/copo-de-agua.png',
    'assets/carne.png',
    'assets/red-beans.png',
    'assets/arroz.png',
    'assets/peixe.png',
    'assets/copo-de-agua.png',
    'assets/carne.png',
    'assets/red-beans.png',
    'assets/arroz.png',
    'assets/peixe.png',
    'assets/copo-de-agua.png',
    'assets/carne.png',
    'assets/red-beans.png',
    'assets/arroz.png',
    'assets/peixe.png',
    'assets/copo-de-agua.png',
    'assets/carne.png',
    'assets/red-beans.png',
    'assets/arroz.png',
    'assets/peixe.png'
  ];

  Widget itens() {
    return Container(
      height: 110,
      color: Colors.grey,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          itemCount: iten.length,
          itemBuilder: (context, i) {
            return Card(
              child: Column(
                children: [
                  Image.asset(
                    iten[i],
                    height: 80,
                    fit: BoxFit.fitHeight,
                  ),
                  Text("Frango")
                ],
              ),
            );
          }),
    );
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
          Divider(
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
                    itemCount: iten.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return RotatedBox(
                        quarterTurns: -2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(iten[index]),
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
          itens(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            iten.add('assets/arroz.png');
          });
        },
        icon: const Icon(Icons.check),
        label: const Text('Concluir prato'),
      ),
    );
  }
}
