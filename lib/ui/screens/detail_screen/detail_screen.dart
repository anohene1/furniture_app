import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furnitureapp/models/constants.dart';
import 'dart:ui';

import 'package:furnitureapp/models/products.dart';

class DetailScreen extends StatefulWidget {
  final Products selectedProduct;
  DetailScreen({this.selectedProduct}) {}

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D40A8),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Stack(
          children: [

            //The gray background on top of the blue background... it's really just a container.
            Container(
              padding: EdgeInsets.all(kDefaultPaddding),
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                children: [

                  //The back and cart buttons.
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [Icon(Icons.arrow_back), Text("BACK")],
                          ),
                        ),
                        Icon(CupertinoIcons.shopping_cart)
                      ],
                    ),
                  ),

                  //The image and white circle. They're stacked just so the image won't be contained inside the circle.
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                      ),
                      Hero(
                        tag: widget.selectedProduct.image,
                        child: Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.selectedProduct.image),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),


                  //Product details.
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.selectedProduct.name, style: kDetailTitleText),
                        SizedBox(height: 20,),
                        Text(widget.selectedProduct.price, style: TextStyle(color: Colors.blue, fontSize: 20),),
                        SizedBox(height: 20,),
                        Text(widget.selectedProduct.description, style: TextStyle(fontSize: 13),)
                      ],
                    ),
                  )
                ],
              ),
            ),

            //The yellow container on the bottom. Supposed to house 2 gesture detectors but meh.
            //So you can wrap the rows in a gesture detector to do something if you wish.
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(40),
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFFFCA00),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //These are the rows you can wrap in gesture detectors
                    Row(
                      children: [
                        Icon(CupertinoIcons.conversation_bubble, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Chat', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.shopping_cart, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Add to cart", style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
