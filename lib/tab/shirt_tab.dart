import 'package:flutter/material.dart';

import '../util/shirt_tile.dart';

class ShirtTab extends StatelessWidget {


  //list of shirt
  List shirtOnSale = [
    //[ shirtbrand, shirtmodel, shirtprice, shirtColor, imagename]

    ["Manchester United", "Home Kit", "4,277", Colors.red, "assets/images/shirt/manu_1.png"],
    ["Manchester United", "Second Kit", "4,277", Colors.blue, "assets/images/shirt/manu_2.png"],
    ["Manchester United", "Thirt Kit", "4,277", Colors.lightGreen, "assets/images/shirt/manu_3.png"],

    ["Manchester City", "Home Kit", "2,994", Colors.blue, "assets/images/shirt/manci_1.png"],
    ["Manchester City", "Second Kit", "2,994", Colors.red, "assets/images/shirt/manci_2.png"],
    ["Manchester City", "Thirt Kit", "2,994", Colors.lightGreen, "assets/images/shirt/manci_3.png"],

    ["Chealsea", "Home Kit", "3,206", Colors.indigo, "assets/images/shirt/chel_1.png"],
    ["Chealsea", "Second Kit", "3,206", Colors.blue, "assets/images/shirt/chel_2.png"],
    ["Chealsea", "Thirt Kit", "3,206", Colors.brown, "assets/images/shirt/chel_3.png"],

    ["Liverpool", "Home Kit", "4,275", Colors.red, "assets/images/shirt/liv_1.png"],
    ["Liverpool", "Second Kit", "4,275", Colors.blue, "assets/images/shirt/liv_2.png"],
    ["Liverpool", "Thirt Kit", "4,275", Colors.green, "assets/images/shirt/liv_3.png"],



  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: shirtOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index){
          return ShirtTile(
            shirtBrand: shirtOnSale[index][0],
            shirtModel: shirtOnSale[index][1],
            shirtPrice: shirtOnSale[index][2],
            shirtColor: shirtOnSale[index][3],
            imageName: shirtOnSale[index][4],
          );
        }

    );
  }
}
