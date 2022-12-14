import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnTextField extends StatefulWidget {
  const LearnTextField({super.key});

  @override
  State<LearnTextField> createState() => _LearnTextFieldState();
}

class _LearnTextFieldState extends State<LearnTextField> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void test() {
    print(usernameController.text);
    print(passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LEARN TEXT FİELD'),
        ),
        body: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(hintText: 'Kullanıcı adı'),
              onChanged: (value) {
                print(value);
              },
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Şifre '),
            ),
            ElevatedButton(
                onPressed: () {
                  print(usernameController.text);
                  print(passwordController.text);
                },
                child: Text('Giriş Yap'))
          ],
        ));
  }
}
