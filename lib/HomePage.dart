import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    super.key,
  });

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: Center(
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('asset/-MOTOR-.png')),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Q Store",
                style: TextStyle(fontSize: 35, color: Colors.cyanAccent)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail",
                  hintText: "Masukkan E-mail yang valid"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Masukkan Password"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Lupa Password? Klik Disini",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Text(
                "LOGIN",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Akun Berhasil Dibuat, silakan login"),
                  duration: Duration(seconds: 2),
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ));
              },
              child: const Text("Tidak Punya Akun? Buat Disini"))
        ])));
  }
}
