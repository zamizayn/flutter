import 'item.dart';

class ItemList {
  List<Item> _items = [];

  ItemList() {
    _items.add(Item(' ', 'Bread', '40'));
    _items.add(Item(' ', 'Chocolate', '70'));
    _items.add(Item(' ', 'Juice', '90'));
    _items.add(Item(' ', 'Meat', '250'));
    _items.add(Item(' ', 'Chicken', '100'));
    _items.add(Item(' ', 'Spices', '40'));
    _items.add(Item(' ', 'Apple', '60'));
    _items.add(Item(' ', 'Biscuits', '45'));
    _items.add(Item(' ', 'Bread', '40'));
    _items.add(Item(' ', 'Bread', '40'));
  }

  set items(List<Item> value) {
    _items = value;
  }

  List<Item> get items => _items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemList &&
          runtimeType == other.runtimeType &&
          _items == other._items;

  @override
  int get hashCode => _items.hashCode;

  @override
  String toString() {
    return 'ItemList{_items: $_items}';
  }
}
