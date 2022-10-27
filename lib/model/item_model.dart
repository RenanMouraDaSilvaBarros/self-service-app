class ItemModel {
  String? id;
  String? idCategory;
  String? image;
  String? idSaller;
  String? name;
  double? price;
  SaleLimitQuantity? saleLimitQuantity;
  bool? enable;

  ItemModel(
      {this.id,
      this.idCategory,
      this.image,
      this.idSaller,
      this.name,
      this.price,
      this.saleLimitQuantity,
      this.enable});

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idCategory = json['idCategory'];
    image = json['image'];
    idSaller = json['idSaller'];
    name = json['name'];
    price = json['price'];
    saleLimitQuantity = json['saleLimitQuantity'] != null
        ? new SaleLimitQuantity.fromJson(json['saleLimitQuantity'])
        : null;
    enable = json['enable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idCategory'] = this.idCategory;
    data['image'] = this.image;
    data['idSaller'] = this.idSaller;
    data['name'] = this.name;
    data['price'] = this.price;
    if (this.saleLimitQuantity != null) {
      data['saleLimitQuantity'] = this.saleLimitQuantity!.toJson();
    }
    data['enable'] = this.enable;
    return data;
  }
}

class SaleLimitQuantity {
  int? maximum;
  int? minimum;

  SaleLimitQuantity({this.maximum, this.minimum});

  SaleLimitQuantity.fromJson(Map<String, dynamic> json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['maximum'] = this.maximum;
    data['minimum'] = this.minimum;
    return data;
  }
}
