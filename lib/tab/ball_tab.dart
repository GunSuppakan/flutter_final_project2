import 'package:flutter/material.dart';

import '../util/ball_tile.dart';

class BallTab extends StatelessWidget {


  //list of ball
  List ballOnSale = [
    //[ ballbrand, ballmodel, ballprice, ballColor, imagename]

    ["Adidas", "AL RIHLA LEAGUE", "1,400", Colors.red, "assets/images/ball/adi_1.png"],
    ["Adidas", "UCL PRO VOID", "5,000", Colors.amber, "assets/images/ball/adi_2.png"],
    ["Adidas", "AL RIHLA PRO", "5,000", Colors.blue, "assets/images/ball/adi_3.png"],

    ["Nike", "PremierLeage 22/23 HI VIS flight ball", "6,000", Colors.amber, "assets/images/ball/ni_1.png"],
    ["Nike", "PremierLeage 22/23 flight ball", "6,000", Colors.orange, "assets/images/ball/ni_2.png"],
    ["Nike", "PremierLeage 21/22 third flight ball", "3,600", Colors.blue, "assets/images/ball/ni_3.png"],
    ["Nike", "PremierLeage flight ball", "3,480", Colors.orange, "assets/images/ball/ni_4.png"],
    ["Nike", "PremierLeage 21/22 HI VIS flight ball", "3,600", Colors.amber, "assets/images/ball/ni_5.png"],
    ["Nike", "PremierLeage 21/22 third Strike ball", "1,100", Colors.brown, "assets/images/ball/ni_6.png"],




  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: ballOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index){
          return BallTile(
            ballBrand: ballOnSale[index][0],
            ballModel: ballOnSale[index][1],
            ballPrice: ballOnSale[index][2],
            ballColor: ballOnSale[index][3],
            imageName:ballOnSale[index][4],
          );
        }

    );
  }
}