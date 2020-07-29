import 'package:flutter/material.dart';
import 'package:furnitureapp/models/enums.dart';
import 'package:furnitureapp/models/products.dart';
import 'package:furnitureapp/ui/components/product_card.dart';
import 'package:furnitureapp/ui/screens/detail_screen/detail_screen.dart';

final products = allProducts;


//Arrays to group products based on their categories
var armchairs = [];
var sofas = [];
var park_benches = [];
var stools = [];
var dining = [];
var lounge = [];


//Function to put products in their respective array categories
void categorizeProducts(){
  allProducts.forEach((product) {
    if (product.category == ProductCategory.armchair){
      armchairs.add(product);
    } else if(product.category == ProductCategory.sofa){
      sofas.add(product);
    }else if(product.category == ProductCategory.park_bench){
      park_benches.add(product);
    }else if(product.category == ProductCategory.stool){
      stools.add(product);
    }else if(product.category == ProductCategory.dining){
      dining.add(product);
    }else if(product.category == ProductCategory.lounge){
      lounge.add(product);
    }
  });
}


//Build widgets based on product categories (My bad, I know I should've used switch statements but it initially had only three categories😐)
Widget buildProductList({ProductCategory selectedCategory}) {
  if (selectedCategory == ProductCategory.all) {
    if (products.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: products[index].name,
            price: products[index].price,
            image: products[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: products[index],)));
            },
          );
        },
      );
    }
  } else if (selectedCategory == ProductCategory.sofa) {
    if (sofas.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: sofas.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: sofas[index].name,
            price: sofas[index].price,
            image: sofas[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: sofas[index],)));
            },
          );
        },
      );
    }
  } else if (selectedCategory == ProductCategory.armchair) {
    if (armchairs.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: armchairs.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: armchairs[index].name,
            price: armchairs[index].price,
            image: armchairs[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: armchairs[index],)));
            },
          );
        },
      );
    }
  } else if (selectedCategory == ProductCategory.park_bench) {
    if (park_benches.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: park_benches.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: park_benches[index].name,
            price: park_benches[index].price,
            image: park_benches[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: park_benches[index],)));
            },
          );
        },
      );
    }
  } else if (selectedCategory == ProductCategory.stool) {
    if (stools.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: stools.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: stools[index].name,
            price: stools[index].price,
            image: stools[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: stools[index],)));
            },
          );
        },
      );
    }
  } else if (selectedCategory == ProductCategory.lounge) {
    if (lounge.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: lounge.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: lounge[index].name,
            price: lounge[index].price,
            image: lounge[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: lounge[index],)));
            },
          );
        },
      );
    }
  }else if (selectedCategory == ProductCategory.dining) {
    if (dining.length == 0) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("😥", style: TextStyle(fontSize: 50),),
            Text("No products yet")
          ],
        ),
      );
    } else {
      return ListView.builder(
        itemCount: dining.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: dining[index].name,
            price: dining[index].price,
            image: dining[index].image,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(selectedProduct: dining[index],)));
            },
          );
        },
      );
    }
  }
}