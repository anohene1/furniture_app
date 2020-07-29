import 'package:furnitureapp/models/enums.dart';


//All products. Self Explanatory🤷‍
class Products {
  String name;
  String price;
  String image;
  String description;
  ProductCategory category;

  Products(
      {this.name, this.image, this.price, this.description, this.category}) {}
}

var allProducts = [
  Products(
      name: "Classic Fabric Armchair",
      price: "\$169",
      image: "assets/images/armchair1.png",
      description:
          "Classic Fabric Armchair made in Australia with the finest cow leather from Texas. The wooden legs were made from a 200 year old oak tree. This chair is a unique piece of art.",
      category: ProductCategory.armchair),
  Products(
      name: "Catherine Highback Dining Chair",
      price: "\$72",
      image: "assets/images/lounge1.png",
      description:
          "The Catherine Highback Dining Chair is a very comfortable chair made with soft foam and fabric. Its legs are made from pine wood which were carefully treated to ensure it's very durable.",
      category: ProductCategory.dining),
  Products(
      name: "Ciestine Bar Stool Chair",
      price: "\$49",
      image: "assets/images/stool1.png",
      description:
          "The Ciestine Bar stool chair with a red-wood chair. It is very light-weight but very durable as well.",
      category: ProductCategory.stool),

  Products(
      name: "Poppy Mastic Tub Chair",
      price: "\$80",
      image: "assets/images/lounge3.png",
      description:
      "The Poppy Mastic Tub Chair is a very comfortable chair made with soft foam and suede. Its legs are made from pine wood which were carefully treated to ensure it's very durable.",
      category: ProductCategory.lounge),
  Products(
      name: "Victorian Sofa",
      price: "\$185",
      image: "assets/images/sofa6.png",
      description: "The Victorian Sofa is a timeless chair with fine fabric clading and ancient wood parts.",
      category: ProductCategory.sofa),
  Products(
      name: "Arysta Lounge Chair",
      price: "\$81",
      image: "assets/images/lounge4.png",
      description:"The Arysta Lounge Chair is made from soft foam and clad with fine suede to ensure its cozyness.",
      category: ProductCategory.lounge),
  Products(
      name: "White-wood Rocking Chair",
      price: "\$44",
      image: "assets/images/lounge5.png",
      description:"This is a white-wood rocking chair made from very durable wood materials.",
      category: ProductCategory.lounge),
  Products(
      name: "Valupak Sofa",
      price: "\$127",
      image: "assets/images/sofa1.png",
      description:"The Valupak Sofa was made with soft foam and clad with a very soft cotton fabric. Suitable for indoor lounges and living rooms.",
      category: ProductCategory.sofa),
  Products(
      name: "Brown Bar Stool",
      price: "\$38",
      image: "assets/images/stool2.png",
      description: "This is a brown wood stool for bars and kitchen island seating.",
      category: ProductCategory.stool),
  Products(
      name: "Two Seater Sofa With Throw Pillows",
      price: "\$227",
      image: "assets/images/sofa5.png",
      description: "This two-seater sofa comes with additional throw pillows at no cost.",
      category: ProductCategory.sofa),
  Products(
      name: "Rick Wooden Stool",
      price: "\$52",
      image: "assets/images/stool3.png",
      description: "The Rick Stool is a wooden masterpiece stool for kitchen island and bar seating.",
      category: ProductCategory.stool),
  Products(
      name: "Timeless Warren Sofa",
      price: "\$219",
      image: "assets/images/sofa2.png",
      description: "The Warren Sofa is timeless piece of art. It serves as a chair and a bed as well.",
      category: ProductCategory.sofa),
  Products(
      name: "Two Seater Sofa",
      price: "\$187",
      image: "assets/images/sofa3.png",
      description: "This is a two-seater sofa made with soft foam and fabric to make it very comfortable.",
      category: ProductCategory.sofa),
  Products(
      name: "Eames Armchair With Side Table",
      price: "\$189",
      image: "assets/images/armchair5.png",
      description: "The Eames Armchair is a very colorful and cozy armchair which comes with a side table. It can be used in living rooms and lounges.",
      category: ProductCategory.armchair),
  Products(
      name: "Velo Sofa",
      price: "\$126",
      image: "assets/images/sofa4.png",
      description: "The Velo Sofa is an Italian sofa made with waterproof material which makes it suitable for outdoors.",
      category: ProductCategory.sofa),


];


