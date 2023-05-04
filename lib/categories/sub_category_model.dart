class SubCategoryModel {
  late String id;
  late String categoryId;
  late String name;
  late int createdDate;

  SubCategoryModel({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.createdDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'categoryId': this.categoryId,
      'name': this.name,
      'createdDate': this.createdDate,
    };
  }

  factory SubCategoryModel.fromMap(Map<String, dynamic> map) {
    return SubCategoryModel(
      id: map['id'] as String,
      categoryId: map['categoryId'] as String,
      name: map['name'] as String,
      createdDate: map['createdDate'] as int,
    );
  }
}
