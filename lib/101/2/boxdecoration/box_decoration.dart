import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnBoxDecoration extends StatelessWidget {
  const LearnBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 8),
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 8),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(height: 50),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.red, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  border: Border.all(color: Colors.grey, width: 8),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
