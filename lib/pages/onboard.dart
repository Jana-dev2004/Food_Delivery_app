

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:productionapp/pages/content_model.dart';
import 'package:productionapp/pages/signup.dart';
import 'package:productionapp/widgets/widgets_support.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currenntindex=0;
  late PageController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
       _controller.dispose();
    super.dispose();
  }
    List<ContentModel> content=[
    ContentModel(description: 'Pick a Food from\n a menu', image:'images/pizza-.jpg', title: 'Select from a\n best menu'),
    ContentModel(description: 'You can pay cash on delivery\n  online payment is available', image:'images/salad.jpg', title:'Easy and online payment'),
    ContentModel(description: 'Deliver a food at your doorstep', image: 'images/icecream.jpg', title: 'Quick delivery at your doorstep')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: PageView.builder(controller: _controller,itemCount:content.length, onPageChanged: (int index){
            setState(() {
              currenntindex=index;
            });
          },itemBuilder: (context,index)
          {
                    return Padding(padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                             Image.asset(content[index].image,height:450,width: MediaQuery.of(context).size.width/1.5,fit: BoxFit.fill,),
                             SizedBox(height:30),
                             Text(content[index].title,style: Appwidget.Headtextfieldstyle(),),
                             SizedBox(height: 20,),
                             Text(content[index].description,style: Appwidget.boldtextfieldstyle(),),
                      ],
                    ),
                   );
          
          }
               ),
        ),
     Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(content.length,(index) => buildDot(index,context),),
     ),),
     GestureDetector(
      onTap: (){
        if(currenntindex==content.length-1)
        {
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Signup()));
        }
        _controller.nextPage(duration:Duration(milliseconds: 100), curve:Curves.bounceIn);
      },
       child: Container(
        decoration: BoxDecoration(color: Colors.red,
        borderRadius: BorderRadius.circular(10)),
        height:60,
        width: 100,
        child: Center(child: Text(currenntindex==content.length-1?"Start":"Next",style: Appwidget.Lighttextfieldstyle(),)),
       ),
     )
     
      ],),
    );
  }
   buildDot(index,context)
  {
     return Center(
       child: Container(
        height:10.0,
        width:currenntindex==index?18:7,
        margin:EdgeInsets.only(right:10),
        decoration: BoxDecoration(
          color:Colors.black54,
          borderRadius: BorderRadius.circular(10)
        ),
       ),
     );
  }
}