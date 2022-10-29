import 'package:flutter/material.dart';
import 'package:selfserviceapp/model/item_model.dart';

alert(BuildContext context,
    {required ItemModel item, required Function function}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
            backgroundColor: Colors.white,
            title: Center(
              child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.name!,
                        style: const TextStyle(fontSize: 30),
                      ),
                      Divider(),
                      Text(item.description!),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                              ),
                              onPressed: () async {
                                await function();
                              },
                              child: const Text("Adicionar")),
                          const Expanded(child: Text("")),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: (() => Navigator.of(context).pop()),
                              child: const Text("Sair"))
                        ],
                      ),
                    ],
                  )),
            ),
          ));
}
