class ItemModel {
  String? id;
  String? idCategory;
  String? idSaller;
  String? name;
  String? image;
  double? price;
  SaleLimitQuantity? saleLimitQuantity;
  String? description;
  bool? enable;

  ItemModel(
      {this.id,
      this.idCategory,
      this.idSaller,
      this.name,
      this.image,
      this.price,
      
      this.saleLimitQuantity,
      this.description,
      this.enable});

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idCategory = json['idCategory'];
    idSaller = json['idSaller'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    saleLimitQuantity = json['saleLimitQuantity'] != null
        ? new SaleLimitQuantity.fromJson(json['saleLimitQuantity'])
        : null;
    description = json['description'];
    enable = json['enable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idCategory'] = this.idCategory;
    data['idSaller'] = this.idSaller;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    if (this.saleLimitQuantity != null) {
      data['saleLimitQuantity'] = this.saleLimitQuantity!.toJson();
    }
    data['description'] = this.description;
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
