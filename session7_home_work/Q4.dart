void main() {
  Product p1 = Product();
  Product p2 = Product();
  p1.price = 100;
  print(p1.price);
  print(p2.price);
}

class Product {
  String? name;
  double price = 0;
}
