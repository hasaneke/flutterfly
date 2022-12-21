import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterfly/101/examples/home_page.dart';

class NewLoginPage extends StatefulWidget {
  const NewLoginPage({super.key});

  @override
  State<NewLoginPage> createState() => _NewLoginPageState();
}

class _NewLoginPageState extends State<NewLoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  String message = 'Giriş Yap';

  String username = "muratyıldırım";
  String password = "1234567";
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
                  style: const TextStyle(
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
                    if (usernameController.text == username &&
                        passwordControler.text == password) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage(username: usernameController.text)),
                      );
                    } else {
                      message = "Böyle bir kullanıcı yok";
                      // BİR DİALOG GÖSTERİLSİN
                    }
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
