import 'package:flutter/material.dart';

const decorationTextfield=InputDecoration(
                 
                  // To delete borders
                  // ignore: prefer_const_constructors
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide.none,
                  ),
                  // ignore: prefer_const_constructors
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.grey,
                    ),
                  ),
  
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                );
