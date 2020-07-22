import 'package:haahooui/data/shop.dart';

class ShopList {
  List<Shop> _shops = [];

  ShopList() {
    _shops.add(Shop(' ', 'Lulu Hyper Market'));
    _shops.add(Shop(' ', 'Big Basket'));
    _shops.add(Shop(' ', 'Mini Super Market'));
    _shops.add(Shop(' ', 'Lakshmi Super Market'));
    _shops.add(Shop(' ', 'Lakshmi Super Market'));
    _shops.add(Shop(' ', 'Lakshmi Super Market'));
  }

  List<Shop> get shops => _shops;

  set shops(List<Shop> value) {
    _shops = value;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopList &&
          runtimeType == other.runtimeType &&
          _shops == other._shops;

  @override
  int get hashCode => _shops.hashCode;

  @override
  String toString() {
    return 'ShopList{_shops: $_shops}';
  }
}
