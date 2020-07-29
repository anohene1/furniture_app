import 'package:flutter/material.dart';
import 'package:furnitureapp/models/constants.dart';


//This widget is the cards on the main screen.

class ProductCard extends StatelessWidget {

  Function onTap;
  String name;
  String price;
  String image;

  ProductCard({this.onTap, this.name, this.price, this.image}){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [

          //The white card that contains the name, price and image
          Container(
            height: 150,
            margin: EdgeInsets.only( top: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 15)
                  )
                ]
            ),

            //The name of the product on the card
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 20,
                  child: Container(
                      width: 150,
                      child: Text(name, style: kCardText,)),
                ),

                //The price tag of the product on the card
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.5),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(30)),

                    ),
                    child: Center(
                      child: Text(price),
                    ),
                  ),
                ),
              ],
            ),
          ),

        //the image of the furniture on the card
          Positioned(
              right: 10,
              bottom: 20,
              child: Hero(
                  tag: image,
                  child: Image.asset(image, height: 170, width: 170,))),
        ],
      ),
    );
  }
}
