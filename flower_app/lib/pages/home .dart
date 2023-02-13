// ignore_for_file: prefer_const_constructors

import 'package:flower_app/model/item.dart';
import 'package:flower_app/pages/checkout.dart';
import 'package:flower_app/pages/details_screen.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appBar.dart';
import 'package:flower_app/shared/constants%20colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        product: items[index],
                      ),
                    ),
                  );
                },
                child: GridTile(
                  footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                        color: Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {
                          classInstancee.add(items[index]);
                        },
                        icon: Icon(Icons.add)),

                    leading: Text("\$12.99"),

                    // ignore: prefer_const_constructors
                    title: Text(
                      "",
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -10,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/img/test.jpg",
                        ),
                        fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/img/test2.jpg"),
                  ),
                  accountName: Text(
                    "Abdelrahman arfat",
                    style: TextStyle(fontSize: 16),
                  ),
                  accountEmail: Text("abdoarfat924@gmail.com",
                      style: TextStyle(fontSize: 16)),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                           Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(
                    
                      ),
                    ),
                  );
                  },
                ),
                ListTile(
                  title: Text("my products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {
                       Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => checkout(
                    
                      ),
                    ),
                  );
                  },
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  "Developed by Abdelrahman Arfat @2023",
                  style: TextStyle(fontSize: 13),
                )),
          ],
        ),
      ),
      appBar: AppBar(
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          poroducrsandpeice(),
        ],
        backgroundColor: appbarGreen,
        title: Text("Home"),
      ),
    );
  }
}
