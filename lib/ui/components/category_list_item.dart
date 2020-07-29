import 'package:flutter/material.dart';


//The category selector widget.
class CategoryListItem extends StatelessWidget {
  
  Function onTap;
  String name;
  BoxDecoration decoration;
  
  CategoryListItem({this.onTap, this.decoration, this.name}){}
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 45,
          padding: EdgeInsets.only(left: 30, right: 30),
          margin: EdgeInsets.all(5),
          child: Center(
              child: Text(
                name,
                //productCategories[index].category,
                style: TextStyle(color: Colors.white),
              )),
          decoration: decoration
      ),
    );
  }
}
