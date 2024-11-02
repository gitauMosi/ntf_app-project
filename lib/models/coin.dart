class CryptoCurrency {
  final String name;
  final double price;
  final String imgUrl;
  final double changeValue;
  final double changePercentage;

  CryptoCurrency({
    required this.name,
    required this.price,
    required this.imgUrl,
    required this.changeValue,
    required this.changePercentage,
  });

  // Method to create a CryptoCurrency from JSON (for API integration)
  factory CryptoCurrency.fromJson(Map<String, dynamic> json) {
    return CryptoCurrency(
      name: json['name'],
      price: json['price'],
      imgUrl: json['imgUrl'],
      changeValue: json['changeValue'],
      changePercentage: json['changePercentage'],
    );
  }

  // Method to convert a CryptoCurrency to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'imgUrl': imgUrl,
      'changeValue': changeValue,
      'changePercentage': changePercentage,
    };
  }
}
