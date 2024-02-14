// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:docters_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/doc4.png"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'All specialist in one app',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Find your doctor and make an appointment with one tap',
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
              onPressed: () {
                _navigateToNextScreen(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
