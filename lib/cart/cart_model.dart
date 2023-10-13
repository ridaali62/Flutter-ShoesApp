class Cart {
  late final int? id;
  final String? productName;
  final int? initialPrice;
  final int? productPrice;
  final String? currency;
  final String? image;
  Cart({
    this.id,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.currency,
    required this.image,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productName = res['productName'],
        initialPrice = res['initialPrice'],
        productPrice = res['iproductPrice'],
        currency = res['currency'],
        image = res['image'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productName': productName,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'currency': currency,
      'image': image,
    };
  }
}
