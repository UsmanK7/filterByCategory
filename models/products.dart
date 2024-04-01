class Products {
  final String name;
  final String category;
  Products({required this.name, required this.category});
}

final List<Products> productList = [
  Products(name: "Fish", category: "Food"),
  Products(name: "Sandwitch", category: "Food"),
  Products(name: "Roast", category: "Food"),
  Products(name: "Biryani", category: "Food"),
  Products(name: "Apple", category: "Fruits"),
  Products(name: "Bananana", category: "Fruits"),
  Products(name: "Lobia", category: "Vegetable"),
  Products(name: "Band Gobi", category: "Vegetable"),
];
