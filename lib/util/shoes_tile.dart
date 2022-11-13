import 'package:flutter/material.dart';

class ShoesTile extends StatelessWidget {
  final String shoesBrand;
  final String shoesModel;
  final String shoesPrice;
  final shoesColor;
  final String imageName;

  const ShoesTile({
    super.key,
    required this.shoesBrand,
    required this.shoesModel,
    required this.shoesPrice,
    required this.shoesColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: shoesColor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: shoesColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\฿' + '' + shoesPrice,
                    style: TextStyle(
                      color: shoesColor[800],
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
              shoesBrand,
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
              shoesModel,
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
