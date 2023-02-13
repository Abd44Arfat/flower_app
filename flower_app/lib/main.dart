import 'package:flower_app/model/item.dart';
import 'package:flower_app/pages/checkout.dart';
import 'package:flower_app/pages/details_screen.dart';
import 'package:flower_app/pages/home%20.dart';
import 'package:flower_app/pages/login.dart';
import 'package:flower_app/pages/rgister.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) {return Cart();},
  
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
    home:Home(),
    
    
      ),
    );
  }
}