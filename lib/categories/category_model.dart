import 'package:benchmark/categories/sub_category_model.dart';

class CategoryModel {
  late String id;
  late String name;
  late int createdDate;
  List<SubCategoryModel> subCategories = [];

  CategoryModel({
    required this.id,
    required this.name,
    required this.createdDate,
    this.subCategories = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'createdDate': this.createdDate,
      'subCategories': this.subCategories.map((e) => e.toMap()).toList(),
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    List categoryList = map['subCategories'] ?? [];

    return CategoryModel(
      id: map['id'],
      name: map['name'],
      createdDate: map['createdDate'],
      subCategories: List.generate(
        categoryList.length,
        (index) => SubCategoryModel.fromMap(
          categoryList[index],
        ),
      ),
    );
  }
}
