import 'package:flower_app/model/item.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appBar.dart';
import 'package:flower_app/shared/constants%20colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({super.key});
  bool isshowmor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
        poroducrsandpeice(),
        ],
        backgroundColor: appbarGreen,
        title: Text("Details : "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgPath),
            SizedBox(
              height: 11,
            ),
            Text(
              "\$ ${widget.product.price}",
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  child: Text("New"),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 120, 120),
                      borderRadius: BorderRadius.circular(4)),
                ),
                SizedBox(
                  width: 11,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.edit_location,
                          size: 35,
                          color: Color.fromARGB(255, 86, 84, 84),
                        ),
                        Text(
                          "Flower shop",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
              maxLines: isshowmor ? 3 : null,
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isshowmor = !isshowmor;
                  });
                },
                child: Text(
                  isshowmor ? "show more" : "show less",
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
