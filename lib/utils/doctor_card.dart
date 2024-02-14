// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height: 100,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(doctorProfession + '8 y.e')
          ],
        ),
      ),
    );
  }
}
