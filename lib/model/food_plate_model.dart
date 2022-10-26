class FoodPlateModel {
  String? id;
  String? idUser;
  String? idSaller;
  List<String>? itens;
  String? createdAt;
  String? updateAt;
  String? deletedAt;

  FoodPlateModel(
      {this.id,
      this.idUser,
      this.idSaller,
      this.itens,
      this.createdAt,
      this.updateAt,
      this.deletedAt});

  FoodPlateModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    idUser = json['idUser'];
    idSaller = json['idSaller'];
    itens = json['itens'].cast<String>();
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = id;
    data['idUser'] = idUser;
    data['idSaller'] = idSaller;
    data['itens'] = itens;
    data['createdAt'] = createdAt;
    data['updateAt'] = updateAt;
    data['deletedAt'] = deletedAt;
    return data;
  }
}
