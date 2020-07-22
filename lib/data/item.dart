class Item {
  String _itemImage;
  String _itemName;
  String _itemPrice;

  Item(this._itemImage, this._itemName, this._itemPrice);

  String get itemImage => _itemImage;

  String get itemName => _itemName;

  String get itemPrice => _itemPrice;

  set itemPrice(String value) {
    _itemPrice = value;
  }

  set itemName(String value) {
    _itemName = value;
  }

  set itemImage(String value) {
    _itemImage = value;
  }

  @override
  String toString() {
    return 'Item{_itemImage: $_itemImage, _itemName: $_itemName, _itemPrice: $_itemPrice}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Item &&
          runtimeType == other.runtimeType &&
          _itemImage == other._itemImage &&
          _itemName == other._itemName &&
          _itemPrice == other._itemPrice;

  @override
  int get hashCode =>
      _itemImage.hashCode ^ _itemName.hashCode ^ _itemPrice.hashCode;
}
