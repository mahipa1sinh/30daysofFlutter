import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel.internal();
  CartModel.internal();

  factory CartModel() => cartModel;
  //catalog field
  late CatalogModel _catalog;

  //collection of IDs
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //getting total price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //adding Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
