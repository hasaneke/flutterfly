import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewLoginPage extends StatefulWidget {
  const NewLoginPage({super.key});

  @override
  State<NewLoginPage> createState() => _NewLoginPageState();
}

class _NewLoginPageState extends State<NewLoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  String message = 'Giriş Yap';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'FlutterFly Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
                height: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 52,
                    color: Colors.black38,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    hintText: 'Kullanıcı adı',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwordControler,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Şifre',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Şifreni unuttun mu?',
                  ),
                  Text('Unuttum', style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // ARTIK GİRİŞ YAPTI MESAJI GÜNCELLE
                    message = 'Hoşgeldin ' + usernameController.text;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Colors.yellow[200]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
