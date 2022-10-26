class ItemModel {
  String? sId;
  String? idCategory;
  String? idSaller;
  String? name;
  String? price;
  SaleLimitQuantity? saleLimitQuantity;
  String? enable;
  String? createdAt;
  String? updateAt;

  ItemModel(
      {this.sId,
      this.idCategory,
      this.idSaller,
      this.name,
      this.price,
      this.saleLimitQuantity,
      this.enable,
      this.createdAt,
      this.updateAt});

  ItemModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    idCategory = json['idCategory'];
    idSaller = json['idSaller'];
    name = json['name'];
    price = json['price'];
    saleLimitQuantity = json['saleLimitQuantity'] != null
        ?  SaleLimitQuantity.fromJson(json['saleLimitQuantity'])
        : null;
    enable = json['enable'];
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['_id'] = sId;
    data['idCategory'] = idCategory;
    data['idSaller'] = idSaller;
    data['name'] = name;
    data['price'] = price;
    if (saleLimitQuantity != null) {
      data['saleLimitQuantity'] = saleLimitQuantity!.toJson();
    }
    data['enable'] = enable;
    data['createdAt'] = createdAt;
    data['updateAt'] = updateAt;
    return data;
  }
}

class SaleLimitQuantity {
  String? maximum;
  String? minimum;

  SaleLimitQuantity({this.maximum, this.minimum});

  SaleLimitQuantity.fromJson(Map<String, dynamic> json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['maximum'] = maximum;
    data['minimum'] = minimum;
    return data;
  }
}
