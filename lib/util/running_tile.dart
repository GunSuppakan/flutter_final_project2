import 'package:flutter/material.dart';

class RunningTile extends StatelessWidget {
  final String runningBrand;
  final String runningModel;
  final String runningPrice;
  final runningColor;
  final String imageName;

  const RunningTile({
    super.key,
    required this.runningBrand,
    required this.runningModel,
    required this.runningPrice,
    required this.runningColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: runningColor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: runningColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\฿' + '' + runningPrice,
                    style: TextStyle(
                      color: runningColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            //picture
            Expanded(
              flex: 7,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset(imageName),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //barnd
            Text(
              runningBrand,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //model
            Text(
              runningModel,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),


            //love + add
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink[400],
                    size: 30,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
