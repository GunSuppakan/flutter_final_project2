import 'package:flutter/material.dart';
import 'package:flutter_final_project2/pages/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';


import '../tab/ball_tab.dart';
import '../tab/running_tab.dart';
import '../tab/shirt_tab.dart';
import '../tab/shoes_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // my tabs
  List<Widget> myTabs = const [
    // shirt
    MyTab(
      iconPath: "assets/icons/tshirt.png"
    ),

    //shoe
    MyTab(
        iconPath: "assets/icons/shoes.png"
    ),

    //ball
    MyTab(
        iconPath: "assets/icons/ball.png"
    ),

    //running
    MyTab(
        iconPath: "assets/icons/running.png"
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Su Sport Shop',
            style: GoogleFonts.bebasNeue(fontStyle: FontStyle.normal, fontSize: 40),
          ),
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(Icons.menu,
                color: Colors.grey,
                size: 36,),
              onPressed: (){},
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: Icon(Icons.person,
                  color: Colors.grey,
                  size: 36,),
                onPressed: (){},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),

            //tab bar
            TabBar(tabs: myTabs,),


            // tab bar view
            Expanded(child: TabBarView(
              children: [
                // shirt page
                ShirtTab(),

                // shoes page
                ShoesTab(),

                // ball page
                BallTab(),

                // run page
                RunningTab(),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
