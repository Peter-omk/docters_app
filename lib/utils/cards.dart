// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  Cards({
    required this.iconImagePath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(categoryName)
          ],
        ),
      ),
    );
  }
}
