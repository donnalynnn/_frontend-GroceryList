class GroceryList {
  int id;
  String product;
  GroceryList(this.id, this.product);
  factory GroceryList.fromJson(Map json) {
    return GroceryList(
      json["id"],
      json["body"],
    );
  }
  Map<String, String> toJson() {
    return {
      "id": "$id",
      "body": product,
    };
  }
}

class Author {
  int id;
  String product;
  Author(
    this.id,
    this.product,
  );
  factory Author.fromJson(Map json) {
    return Author(
      json["id"],
      json["body"],
    );
  }
}
