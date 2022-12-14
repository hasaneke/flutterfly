import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              width: 400,
              height: 270,
              alignment: Alignment.center,
              child: const Text(
                'Fly',
                style: TextStyle(fontSize: 60),
              ),
            ),
            TextField(
              controller: emailController,
            ),
            SizedBox(height: 40),
            TextField(
              controller: passwordController,
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Unuttun mu?',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text('Unuttum')
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Text('Giriş Yap'))
          ]),
        ));
  }
}
