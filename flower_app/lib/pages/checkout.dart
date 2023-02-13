import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appBar.dart';
import 'package:flower_app/shared/constants%20colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("checkout"),
        actions: [
          poroducrsandpeice(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: classInstancee.selectedproduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text(
                            "${classInstancee.selectedproduct[index].price} -${classInstancee.selectedproduct[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              classInstancee.selectedproduct[index].imgPath),
                        ),
                        title: Text(classInstancee.selectedproduct[index].name),
                        trailing: IconButton(
                            onPressed: () {
                              classInstancee.delete(
                                  classInstancee.selectedproduct[index]);
                            },
                            icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 33, 121, 229)),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "pay  \$ ${classInstancee.price}",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
