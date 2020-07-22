class Category {
  String _image;
  String _categoryName;

  Category(String image, String categoryName) {
    this.image = image;
    this.categoryName = categoryName;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get categoryName => _categoryName;

  set categoryName(String value) {
    _categoryName = value;
  }

  @override
  String toString() {
    return 'Category{_image: $_image, _categoryName: $_categoryName}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category &&
          runtimeType == other.runtimeType &&
          _image == other._image &&
          _categoryName == other._categoryName;

  @override
  int get hashCode => _image.hashCode ^ _categoryName.hashCode;
}
