import 'package:selfserviceapp/model/item_model.dart';

List<ItemModel> itemsMock = [
  ItemModel.fromJson({
    "id": "12345",
    "idCategory": "123",
    "image": "assets/arroz.png",
    "idSaller": "123",
    "name": "arroz",
    "price": 2.0,
    "saleLimitQuantity": {"maximum": 2, "minimum": 0},
    "description":'thuba thuba thuba thuba',
    "enable": true
  }),
  ItemModel.fromJson({
    "id": "12345",
    "idCategory": "123",
    "idSaller": "123",
    "image": "assets/carne.png",
    "name": "carne",
    "price": 2.0,
    "saleLimitQuantity": {"maximum": 2, "minimum": 0},
    "description":'thuba thuba thuba thuba',
    "enable": true
  }),
  ItemModel.fromJson({
    "id": "12345",
    "idCategory": "123",
    "idSaller": "123",
    "image": "assets/frango.png",
    "name": "frango",
    "price": 3.0,
    "saleLimitQuantity": {"maximum": 2, "minimum": 0},
    "description":'thuba thuba thuba thuba',
    "enable": true
  }),
  ItemModel.fromJson({
    "id": "12345",
    "idCategory": "123",
    "idSaller": "123",
    "name": "peixe",
    "image": "assets/peixe.png",
    "price": 4.0,
    "saleLimitQuantity": {"maximum": 2, "minimum": 0},
    "description":'thuba thuba thuba thuba',
    "enable": true
  }),
  ItemModel.fromJson({
    "id": "12345",
    "idCategory": "123",
    "idSaller": "123",
    "name": "Limonada",
    "image": "assets/limonada.png",
    "price": 4.0,
    "saleLimitQuantity": {"maximum": 2, "minimum": 0},
    "description":'thuba thuba thuba thuba',
    "enable": true
  }),
];




// //item
// {
//     "id": "12345",
//     "idCategory": "123",
//     "idSaller": "123",
//     "name": "arroz",
//     "price": "number",
//     "saleLimitQuantity": {
//       "maximum": 2,
//       "minimum": 0
//     },
//     "enable": true
// }


// //category
// {
//     "_id": "objectId",
//     "name": "string",
//     "createdAt": "date",
//     "updateAt": "date",
//     "deletedAt": "date"
// }

// //foodPlate
// {
//     "_id": "objectId",
//      "idUser": "objectId",
//      "idSaller": "objectId",
//     "itens": [  "item1", "item2"],
//     "createdAt": "date",
//     "updateAt": "date",
//     "deletedAt": "date"
// }


