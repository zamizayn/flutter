class Shop {
  String _image;
  String _shopName;

  Shop(String image, String shopName) {
    this.image = image;
    this.shopName = shopName;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get shopName => _shopName;

  set shopName(String value) {
    _shopName = value;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Shop &&
          runtimeType == other.runtimeType &&
          _image == other._image &&
          _shopName == other._shopName;

  @override
  int get hashCode => _image.hashCode ^ _shopName.hashCode;

  @override
  String toString() {
    return 'Shop{_image: $_image, _shopName: $_shopName}';
  }
}
