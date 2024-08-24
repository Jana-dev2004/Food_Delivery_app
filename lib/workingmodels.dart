// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Workingmodels extends StatefulWidget {
//   const Workingmodels({super.key});

//   @override
//   State<Workingmodels> createState() => _WorkingmodelsState();
// }

// class _WorkingmodelsState extends State<Workingmodels> {
//   PageController controller = PageController(initialPage: 0);
//   int activepage = 0;
//   List<Widget> pages = [Page1(), Page2(), Page3()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: pages.length,
//               onPageChanged: (int index){
//                 setState(() {
//                   activepage=index;
//                 });
//               },
//               itemBuilder: (BuildContext context, index) {
//                 return pages[index];
//               }),
//           Positioned(
//               right: 0,
//               left: 0,
//               height: 100,
//               child: Container(
//                 color: Colors.black54,
//                 child: Row(
//                   children: List<Widget>.generate(
//                     pages.length,
//                     (index) => InkWell(
//                       onTap: () {
//                         controller.animateToPage(index,
//                             duration: Duration(milliseconds: 1000),
//                             curve: Curves.easeIn);
//                       },
//                       child: CircleAvatar(
//                         radius: 10,
//                         backgroundColor:
//                             activepage == index ? Colors.black : Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Workingmodels extends StatefulWidget {
  const Workingmodels({super.key});

  @override
  State<Workingmodels> createState() => _WorkingmodelsState();
}

class _WorkingmodelsState extends State<Workingmodels> {
  int currentindex=0;
  List<Widget> pages=[Page1(),Page2(),Page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentindex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 400),
        items: [
        Icon(Icons.home,color: Colors.white,),
         Icon(Icons.music_note,color: Colors.white,),
          Icon(Icons.person,color: Colors.white,),
      ],
        onTap: (int index){
          setState(() {
            currentindex=index;
          });
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Text("green"),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Text("red"),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Text("brown"),
        ],
      ),
    );
  }
}
