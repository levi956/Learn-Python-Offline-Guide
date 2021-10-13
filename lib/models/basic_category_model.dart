class BasicCategoryModel {
  String name;
  String image;

  BasicCategoryModel(this.name, this.image);
}

List<BasicCategoryModel> basics = BasicCategoryData.map(
    (item) => BasicCategoryModel(item['name'], item['image'])).toList();

// ignore: non_constant_identifier_names
var BasicCategoryData = [
  {
    'name': 'Intro',
    'image': 'assets/images/Intro_PYTHON.png',
  },
  {
    'name': 'Variables',
    'image': 'assets/images/Variables_PYTHON.png',
  },
  {
    'name': 'Operators',
    'image': 'assets/images/Operations_PYTHON.png',
  },
  {
    'name': 'Data Types',
    'image': 'assets/images/Data_Types_PYTHON.png',
  },
  {
    'name': 'Control Flow',
    'image': 'assets/images/Control_Flow_PYTHON.png',
  },
];
