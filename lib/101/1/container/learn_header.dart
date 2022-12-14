import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnHeader extends StatelessWidget {
  const LearnHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 250,
          width: 480,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text(
            'Fly',
            style: TextStyle(fontSize: 100),
          ),
        ));
  }
}
