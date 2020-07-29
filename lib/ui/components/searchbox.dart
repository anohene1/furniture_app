import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Search box on the main screen. You can set an onChanged or a controller. Of course you can do both as well
class SearchBox extends StatelessWidget {

  TextEditingController controller;
  Function onChanged;

  SearchBox({this.controller, this.onChanged}){}

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(CupertinoIcons.search, color: Colors.white,),
        hintText: "Search",
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
          filled: true,
          fillColor: Colors.white.withOpacity(0.5),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
          )
      ),
    );
  }
}
