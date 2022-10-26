class CategoryModel {
  String? sId;
  String? name;
  String? createdAt;
  String? updateAt;
  String? deletedAt;

  CategoryModel(
      {this.sId, this.name, this.createdAt, this.updateAt, this.deletedAt});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['createdAt'] = createdAt;
    data['updateAt'] = updateAt;
    data['deletedAt'] = deletedAt;
    return data;
  }
}
