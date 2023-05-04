class ProductModel {
  late String id;
  late String name;
  late String description;
  late String imageUrl;
  late String brand;
  late double price;
  late String categoryId;
  late String subCategoryId;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.brand,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'description': this.description,
      'imageUrl': this.imageUrl,
      'price': this.price,
      'brand': this.brand,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
      price: map['price'],
      brand: map['brand'],
    );
  }
}
