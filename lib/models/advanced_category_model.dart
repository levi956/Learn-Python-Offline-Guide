class AdvancedCategoryModel {
  String name;
  String image;

  AdvancedCategoryModel(this.name, this.image);
}

List<AdvancedCategoryModel> advanced = AdvancedCategoryData.map(
    (item) => AdvancedCategoryModel(item['name'], item['image'])).toList();

// ignore: non_constant_identifier_names
var AdvancedCategoryData = [
  {
    'name': 'Objects',
    'image': 'assets/images/Object_PYTHON.png',
  },
  {
    'name': 'Sorting',
    'image': 'assets/images/Sorting_PYTHON.png',
  },
  {
    'name': 'Error and Exception handling',
    'image': 'assets/images/Error_PYTHON.png',
  },
];
