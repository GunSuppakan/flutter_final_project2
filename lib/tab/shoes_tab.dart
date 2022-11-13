import 'package:flutter/material.dart';

import '../util/shoes_tile.dart';

class ShoesTab extends StatelessWidget {


  //list of shoes
  List shoesOnSale = [
    //[ shoesbrand, shoesmodel, shoesprice, shoesColor, imagename]

    ["Adidas", "Predator Edge.1", "6,800", Colors.red, "assets/images/shoes/adi_1.png"],
    ["Adidas", "Copa Sense.1", "6,240", Colors.amber, "assets/images/shoes/adi_2.png"],
    ["Adidas", "X Speedportal.1", "6,800", Colors.lightGreen, "assets/images/shoes/adi_3.png"],

    ["Nike", " Zoom Mercurial Superfly 9 Elite", "9,400", Colors.amber, "assets/images/shoes/ni_1.png"],
    ["Nike", "Tiempo Legend 9 Elite", "7,900", Colors.brown, "assets/images/shoes/ni_2.png"],
    ["Nike", "Phantom GT2 Elite", "8,500", Colors.blue, "assets/images/shoes/ni_3.png"],

    ["Mizuno", "Morelia M8 Japan", "10,662", Colors.indigo, "assets/images/shoes/mi_1.png"],
    ["Mizuno", "Morelia UL Japan", "6,650", Colors.amber, "assets/images/shoes/mi_2.png"],
    ["Mizuno", "Morelia Neo III Beta Japan", "9,900", Colors.red, "assets/images/shoes/mi_3.png"],

    ["Puma", "FUTURE Z 1.1", "7,999", Colors.red, "assets/images/shoes/pu_1.png"],
    ["Puma", "ULTRA 1.2", "7,999", Colors.blue, "assets/images/shoes/pu_2.png"],
    ["Puma", "KING PLATINUM 911 LEGACY", "9,999", Colors.green, "assets/images/shoes/pu_3.png"],



  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: shoesOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index){
          return ShoesTile(
            shoesBrand: shoesOnSale[index][0],
            shoesModel: shoesOnSale[index][1],
            shoesPrice: shoesOnSale[index][2],
            shoesColor: shoesOnSale[index][3],
            imageName:shoesOnSale[index][4],
          );
        }

    );
  }
}
