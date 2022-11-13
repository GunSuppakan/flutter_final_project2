import 'package:flutter/material.dart';

import '../util/running_tile.dart';

class RunningTab extends StatelessWidget {


  //list of running
  List runningOnSale = [
    //[ runningbrand, runningmodel, runningprice, runningColor, imagename]

    ["Adidas", "Ultraboost 22", "7,000", Colors.blue, "assets/images/running/adi_1.png"],
    ["Adidas", "Ultraboost 22 RDY", "5,600", Colors.amber, "assets/images/running/adi_2.png"],
    ["Adidas", "X Speedportal.1", "5,500", Colors.lightGreen, "assets/images/running/adi_3.png"],

    ["Nike", " Air Zoom Tempo NEXT%", "7,000", Colors.lightGreen, "assets/images/running/ni_1.png"],
    ["Nike", "ZoomX Invincible Run Flyknit 2", "6,700", Colors.brown, "assets/images/running/ni_2.png"],
    ["Nike", " Zoom Fly 5", "5,900", Colors.orange, "assets/images/running/ni_3.png"],

    ["ASICS", "Metaspeed Edge+", "8,500", Colors.lightGreen, "assets/images/running/as_1.png"],
    ["ASICS", "Gel-Kayano 29", "6,500", Colors.amber, "assets/images/running/as_2.png"],
    ["ASICS", "Gel-Nimbus 24 Platinum", "6,500", Colors.blue, "assets/images/running/as_3.png"],

    ["NEW BALANCE", "Fresh Foam X 1080v12", "5,490", Colors.indigo, "assets/images/running/new_1.png"],
    ["NEW BALANCE", "Fresh Foam 1080 V12 4E", "5,490", Colors.lightGreen, "assets/images/running/new_2.png"],
    ["NEW BALANCE", "Fresh Foam 1080 V12 4E", "5,490", Colors.red, "assets/images/running/new_3.png"],



  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: runningOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index){
          return RunningTile(
            runningBrand: runningOnSale[index][0],
            runningModel: runningOnSale[index][1],
            runningPrice: runningOnSale[index][2],
            runningColor: runningOnSale[index][3],
            imageName:runningOnSale[index][4],
          );
        }

    );
  }
}