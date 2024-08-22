import 'package:flutter/material.dart';
import 'package:productionapp/widgets/widgets_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_outlined),
            ),
            Image.asset(
              'images/salad.jpg',
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mediterranean',
                      style: Appwidget.boldtextfieldstyle(),
                    ),
                    Text(
                      'Chickpea Salad',
                      style: Appwidget.Headtextfieldstyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) --a;
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  a.toString(),
                  style: Appwidget.Lighttextfieldstyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.add, color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "The demand for Flutter is expected to grow even more in the future. One of the main reasons for this is the increasing popularity of cross-platform development. Many companies are now looking for ways to develop their apps faster and more cost-effectively, and Flutter seems to be the answer.",
              style: Appwidget.Lighttextfieldstyle(),
              maxLines: 4,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: Appwidget.boldtextfieldstyle(),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                Text(
                  "30min",
                  style: Appwidget.boldtextfieldstyle(),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Cost",
                      style: Appwidget.Headtextfieldstyle(),
                    ),
                    Text(
                      "\$28",
                      style: Appwidget.Lighttextfieldstyle(),
                    ),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: Appwidget.boldtextfieldstyle().copyWith(color: Colors.white),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
