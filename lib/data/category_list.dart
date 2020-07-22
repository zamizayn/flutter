import 'package:haahooui/data/category.dart';

class CategoryList {
  List<Category> _categories;

  CategoryList() {
    _categories = [];
    _categories.add(Category('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRX6aaZ9ziXNi0j2dHc_e02f-0zm9EX4VfjYg&usqp=CAU', 'Bakery and Foods'));
    _categories.add(Category('', 'Cleaning and Household'));
    _categories.add(Category('', 'Fish'));
    _categories.add(Category('', 'Fruits and Vegetables'));
    _categories.add(Category('', 'Meat'));
    _categories.add(Category('', 'Breads'));
  }

  List<Category> get categories => _categories;

  set categories(List<Category> value) {
    _categories = value;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryList &&
          runtimeType == other.runtimeType &&
          _categories == other._categories;

  @override
  int get hashCode => _categories.hashCode;

  @override
  String toString() {
    return 'CategoryList{_categories: $_categories}';
  }
}
