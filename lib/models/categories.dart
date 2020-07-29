import 'package:furnitureapp/models/enums.dart';


//The category selector on the main screen are built from these categories.
class Category {
  String category;
  ProductCategory type;
  Category({this.category, this.type}){}
}

var allCategories = [
  Category(
    category: "All",
    type: ProductCategory.all
  ),
  Category(
    category: "Sofa",
    type: ProductCategory.sofa
  ),
  Category(
      category: "Lounge",
      type: ProductCategory.lounge
  ),
  Category(
    category: "Park bench",
    type: ProductCategory.park_bench
  ),
  Category(
      category: "Dining Chair",
      type: ProductCategory.dining
  ),
  Category(
      category: "Armchair",
      type: ProductCategory.armchair
  ),
  Category(
      category: "Stool",
      type: ProductCategory.stool
  ),

];