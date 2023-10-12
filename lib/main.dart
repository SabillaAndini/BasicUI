import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    initialRoute: '/', // Set the initial route to '/bottom'
    routes: {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/bottom': (context) => BottomNavigationBarExample(), // Add this route
    },
  ));
}

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = [LoginPage(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                child: FlutterLogo(
                  size: 70,
                ),
              ),
              SizedBox(
                height: 20, // Gunakan konstanta untuk mengatur jarak
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // Implementasi lupa kata sandi
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 89, 171, 238),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20, // Gunakan konstanta untuk mengatur jarak
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/home'); // Menggunakan named route
                },
                child: Text("Login"),
              ),
              TextButton(
                onPressed: () {
                  // Implementasi pembuatan akun
                },
                child: Text(
                  'Belum Punya Akun? Buat Akun!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 89, 171, 238),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Implementasi masuk dengan akun Google
                },
                child: Text(
                  'Atau Masuk Dengan Akun Google',
                  style: TextStyle(
                    color: Color.fromARGB(255, 89, 171, 238),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/seventeen.jpg',
              height: 30,
            ),
            SizedBox(width: 10),
            Text("App Sabilla"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Judul Dialog"),
                      content: Text(
                        "isi Dialog",
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Tutup dialog
                          },
                          child: Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Tutup dialog
                          },
                          child: Text("Okay"),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text("Show Dialog"),
                  ),
                )),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Judul Snackbar"),
                      action: SnackBarAction(
                        label: "CANCEL",
                        onPressed: () {
                          print("batal menghapus");
                        },
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text("Show Snackbar"),
                  ),
                )),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200.0,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.add),
                              title: Text('menu 1'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.edit),
                              title: Text('menu 2'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.search),
                              title: Text('menu 3'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text("Show Bottom Sheet"),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
