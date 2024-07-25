class DataModel {
  String? title;
  String? price;
  String? description;
  String? category;
  String? image;
  int? id;
  int? rate;
  int? count;

  DataModel(
      {required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.id,
      required this.count,
      required this.rate});

  factory DataModel.frommap({required Map data}) {
    return DataModel(
        title: data['title'],
        price: data['price'],
        description: data['description'],
        category: data['category'],
        image: data['image'],
        id: data['id'],
        count: data['count'],
        rate: data['rate']);
  }
}
