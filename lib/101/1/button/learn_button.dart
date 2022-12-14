import 'package:flutter/material.dart';

class LearnButton extends StatelessWidget {
  const LearnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
          child: const FlutterLogo(),
          onPressed: () {
            // SOME EVENT
          },
        ),
      ),
    );
  }
}
