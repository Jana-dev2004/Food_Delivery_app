import 'package:flutter/material.dart';
import 'package:productionapp/pages/details.dart';
import 'package:productionapp/widgets/widgets_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream=false;
    bool pizza=false;
      bool burger=false;
        bool salad=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 30,left: 10,right: 10),
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
              SizedBox(height:20),
                 Text("Delicious Food",style: Appwidget.Headtextfieldstyle(),),
                    Text("Discover and get great food",style: Appwidget.Lighttextfieldstyle(),),
              Container(
                margin: EdgeInsets.only(right:20),
                child: showitems()),   
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: (){
                                      Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const Details(),
    ),
  );
                  },

                  child: Row(
                    children: [
                      Container(
                       
                        margin: EdgeInsets.all(4),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/salad.jpg',height: 130,width:150,),
                              Text("Veg salad",style:Appwidget.semiboldtextfieldstyle()),
                              Text("Fresh and healthy",style:Appwidget.Lighttextfieldstyle()),
                              Text("\$25",style: Appwidget.semiboldtextfieldstyle(),)
                            ],
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                  
                       Container(
                        margin: EdgeInsets.all(4),
                         child: Material(
                             borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                           child: Container(
                               padding: EdgeInsets.all(10),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/salad.jpg',height: 130,width:150,),
                              Text("Mix veg salad",style:Appwidget.semiboldtextfieldstyle()),
                              Text("Onions and spicy",style:Appwidget.Lighttextfieldstyle()),
                              Text("\$28",style: Appwidget.semiboldtextfieldstyle(),)
                            ],
                                           ),),
                         ),
                       )
                    ],
                  ),
                ),
              )     ,
              SizedBox(height: 10,),
             SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/salad.jpg',
                    height: 100,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Mediterranean Chickpea Salad',
                          style: Appwidget.semiboldtextfieldstyle(),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Honey Goat Cheese', // Fixed typo: goot -> Goat
                          style: Appwidget.Lighttextfieldstyle(),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          '\$28',
                          style: Appwidget.semiboldtextfieldstyle(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
        ),
      )
        
        
            ],
          ),
        ),
      ),
    );
  }
  Widget showitems()

  {
     return                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          icecream=true;
                          pizza=false;
                          burger=false;
                          salad=false;
                        });
                      },
                      child: Material(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(color: icecream?Colors.black:Colors.white),
                          padding:EdgeInsets.all(8),
                          child: Image.asset('images/creamyicecraem.jpg',width:50,height:50),
                        ),
                      ),
                    ),
                       GestureDetector(
                        onTap: (){
                          setState(() {
                              icecream=false;
                          pizza=true;
                          burger=false;
                          salad=false;
                          });
                        },
                         child: Material(
                                               elevation: 10,
                                               child: Container(
                               decoration: BoxDecoration(color: pizza?Colors.black:Colors.white),
                          padding:EdgeInsets.all(8),
                          child: Image.asset('images/pizza-.jpg',width:50,height:50),
                                               ),
                                             ),
                       ),
                       GestureDetector(
                         onTap: (){
                          setState(() {
                              icecream=false;
                          pizza=false;
                          burger=true;
                          salad=false;
                          });
                        },
                         child: Material(
                                               elevation: 10,
                                               child: Container(
                               decoration: BoxDecoration(color: burger?Colors.black:Colors.white),
                          padding:EdgeInsets.all(8),
                          child: Image.asset('images/burger.jpg',width:50,height:50),
                                               ),
                                             ),
                       ),
                       GestureDetector(
                         onTap: (){
                          setState(() {
                              icecream=false;
                          pizza=false;
                          burger=false;
                          salad=true;
                          });
                        },
                         child: Material(
                                               elevation: 10,
                                               child: Container(
                               decoration: BoxDecoration(color: salad?Colors.black:Colors.white),
                          padding:EdgeInsets.all(8),
                          child: Image.asset('images/salad.jpg',width:50,height:50),
                                               ),
                                             ),
                       )
                  ],);
}
}