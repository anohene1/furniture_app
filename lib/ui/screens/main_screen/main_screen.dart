import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furnitureapp/models/constants.dart';
import 'package:furnitureapp/models/enums.dart';
import 'package:furnitureapp/models/products.dart';
import 'package:furnitureapp/services/products_list_builder.dart';
import 'package:furnitureapp/ui/components/category_list_item.dart';
import 'package:furnitureapp/ui/components/product_card.dart';
import 'package:furnitureapp/ui/components/searchbox.dart';
import 'package:furnitureapp/models/categories.dart';
import 'package:furnitureapp/ui/screens/detail_screen/detail_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  ProductCategory selectedCategory;
  final productCategories = allCategories;


  @override
  void initState() {
    super.initState();
    selectedCategory = ProductCategory.all;
    categorizeProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1D40A8),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                ),
              ),
              Align(
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(left: kDefaultPaddding, right: kDefaultPaddding, top: kDefaultPaddding),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Marthy's Deco",
                              style: kTitleText,
                            ),
                            Icon(
                              CupertinoIcons.bell,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SearchBox(
                          onChanged: (value){
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //This is the category selector horizontal list view
                        Container(
                          height: 45,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productCategories.length,
                            itemBuilder: (context, index) {
                              return CategoryListItem(
                                onTap: (){
                                  setState(() {
                                    selectedCategory = productCategories[index].type;
                                  });
                                },
                                decoration: selectedCategory ==
                                    productCategories[index].type
                                    ? kSelectedCategory
                                    : null,
                                name: productCategories[index].category,
                              );
                            },
                          ),
                        ),
                        //SizedBox(height: 40,),

                        //This is the products list view.
                        Expanded(
                          child: buildProductList(selectedCategory: selectedCategory)
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
