class Ingredient {
  String name = 'New ingredient';
  double cost = 0.0;
  String? seller = '';
  int quantity = 0;
//  Image? _pic;
  // TODO: add pic

  Ingredient(String name, double cost, String seller) {
    this.name = name;
    this.cost = cost;
    this.quantity = quantity;
  }
  set sellerName(String newName) {
    this.seller = newName;
  }
}