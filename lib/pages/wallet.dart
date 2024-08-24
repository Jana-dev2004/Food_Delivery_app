import 'package:flutter/material.dart';
import 'package:productionapp/widgets/widgets_support.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 1,
              child: Container(
                margin: EdgeInsets.only(top:60),
                child: Center(child: Text("Wallet",style:Appwidget.Headtextfieldstyle()),),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              decoration:BoxDecoration(
                color:Color(0XFFF2F2F2)
              ),
              child: Row(
                children: [
                  Image.asset('images/wallet.jpg',height: 60,width: 60,fit: BoxFit.cover,),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text("Your Wallet",style: Appwidget.boldtextfieldstyle(),),
                      SizedBox(height: 5,),
                      Text("\$100",style: Appwidget.semiboldtextfieldstyle(),),
                    ],
                  ),
                ],
              ),
            ),
                              SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Text("Add money",style: Appwidget.boldtextfieldstyle(),),),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color:Color(0XFFE9E2E2),),
                        child: Text("\$100",style: Appwidget.Lighttextfieldstyle(),),
                      ),
                         Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color:Color(0XFFE9E2E2),),
                        child: Text("\$500",style: Appwidget.Lighttextfieldstyle(),),
                      ),
                         Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color:Color(0XFFE9E2E2),),
                        child: Text("\$1000",style: Appwidget.Lighttextfieldstyle(),),
                      ),
                         Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color:Color(0XFFE9E2E2),),
                        child: Text("\$2000",style: Appwidget.Lighttextfieldstyle(),),
                      ),
                    ],
                  ),
                  SizedBox(height:30),
                  Center(
                    child: Container(
                      width: 300,
                    
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 8, 95),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Add money",style: Appwidget.boldtextfieldstyle().copyWith(color: Colors.white),)),
                    ),
                  )
          ],
        ),
      )
    );
  }
}