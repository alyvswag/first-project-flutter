class CommonModel {
  List<ProductsModel> products;
  List<CategoryModel> category;
  CommonModel(this.products, this.category);

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    final List productsJson = json['products'];
    final List categoryJson = json['category'];

    return CommonModel(
      productsJson.map(e)=>ProductsModel.fromJson(e).toList(),
      productsJson.map(e)=>CategoryModel.fromJson(e).toList(),
    );
  }
}

class ProductsModel {
  final int id;
  final int kategori;
  final String isim;
  final String resim;
  ProductsModel(this.id, this.kategori, this.isim, this.resim);

  ProductsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        kategori = json['kategori'],
        isim = json['isim'],
        resim = json['resim'];
}

class CategoryModel {
  final int id;
  final String isim;
  CategoryModel(this.id, this.isim);

  CategoryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        isim = json['isim'];
}
