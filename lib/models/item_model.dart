class ItemModel {
  // all the properties a item will have.
  final int id;
  final String title;
  final int price;
  final String productPhoto;
  final String description;
  bool isAddedToCart;

  // passing every property we must need is in the required,
  //and rest just passed the value manually
  ItemModel({
    required this.id,
    required this.title,
    required this.price,
    required this.productPhoto,
    required this.description,
    this.isAddedToCart = false,
  });
}
