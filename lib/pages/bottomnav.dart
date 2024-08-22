
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:productionapp/pages/home.dart';
import 'package:productionapp/pages/order.dart';
import 'package:productionapp/pages/profile.dart';
import 'package:productionapp/pages/wallet.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currenttab=0;
  late List<Widget> pages;
  late Home home;
  late Order order;
  late Profile profile;
  late Wallet wallet;
  late Widget currentpage;
   @override
  void initState() {
    home=Home();
    order=Order();
     wallet=Wallet();
    profile=Profile();
   
    pages=[home,order,wallet,profile];
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(backgroundColor:Colors.white,
      color: Colors.black,
      height: 65,
      animationDuration: Duration(milliseconds: 500),
      onTap: (int index){
        currenttab=index;
      },
      items: [
        Icon(Icons.home,color: Colors.white,),
                Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        Icon(Icons.wallet,color: Colors.white,),
                                Icon(Icons.person,color: Colors.white,),
      ],
      ),
      body: pages[currenttab],
    );
  }
}