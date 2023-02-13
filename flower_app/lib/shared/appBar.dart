import 'package:flower_app/pages/checkout.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class poroducrsandpeice extends StatelessWidget {
  const poroducrsandpeice({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 22,
              child: Container(
                child: Text(
                  "${classInstancee.selectedproduct.length}",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 255, 252),
                    shape: BoxShape.circle),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => checkout(),
                    ),
                  );
                },
                icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
        SizedBox(
          width: 9,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            "\$ ${classInstancee.price}",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
