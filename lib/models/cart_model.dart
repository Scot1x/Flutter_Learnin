import 'package:trial_app_2/models/catalog.dart';
import 'package:vxstate/vxstate.dart';

class Cartmodel {
  //Singleton class object created only once

  static final cartModel = Cartmodel.internal();

  Cartmodel.internal();

  factory Cartmodel() => cartModel;

  ///////
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  //get catalog

  CatalogModel get catalog => _catalog;

  //set catalog

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //get items in cart
  List<Items> get items => _itemIds.map((id) => _catalog.getbyid(id)).toList();

  //Get total price

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item

  void add(Items item) {
    _itemIds.add(item.id);
  }

  //Remove Item

  void remove(Items item) {
    _itemIds.remove(item.id);
  }
}
