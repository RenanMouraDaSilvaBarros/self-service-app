import 'package:flutter/material.dart';

excluirAlerta(BuildContext context,
    {required String message, required Function excluir}) {
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
                      RichText(
                        text: TextSpan(
                            text: "Tem certeza que deseja excluir",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' $message',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red)),
                              const TextSpan(text: ' ?'),
                            ]),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () async {
                                
                                await excluir();
                                
                              },
                              child: const Text("Sim")),
                          const Expanded(child: Text("")),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: (() => Navigator.of(context).pop()),
                              child: const Text("Não"))
                        ],
                      ),
                    ],
                  )),
            ),
          ));
}
