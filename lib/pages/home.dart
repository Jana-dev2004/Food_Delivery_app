import 'package:flutter/material.dart';
import 'package:productionapp/widgets/widgets_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hi Jana",style: Appwidget.boldtextfieldstyle(),),
                Container(
                  decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                )
              ],
            ),
            SizedBox(height:30),
               Text("Delicious Food",style: Appwidget.Headtextfieldstyle(),),
                  Text("Discover and get great food",style: Appwidget.Lighttextfieldstyle(),),
            
      
          ],
        ),
      ),
    );
  }
}