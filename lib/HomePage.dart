import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> dropMenu = ['Menu 1', 'Menu 2', 'Menu 3'];
  String _menuItem = 'Menu 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Row(
          children: [
            Image.asset(
              'assets/sabillaand.jpg',
              height: 30,
            ),
            SizedBox(width: 10),
            Text("App Sabilla"),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/sabillaand.jpg'),
              ),
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
              accountName: Text('Sabilla Andini'),
              accountEmail: Text('200106sabilla@email.com'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('menu 1'),
              onTap: () {
                // Tambahkan logika navigasi ke beranda di sini
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('menu 2'),
              onTap: () {
                // Tambahkan logika navigasi ke pengaturan di sini
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('menu 3'),
              onTap: () {
                // Tambahkan logika navigasi ke pengaturan di sini
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: DropdownButton(
                items: dropMenu.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                }).toList(),
                value: _menuItem,
                onChanged: (String? value) {
                  setState(() {
                    _menuItem = value!;
                  });
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              child: Container(
                height: 100,
                width: double.infinity,
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: Center(
                          child: Text('Box ${index}'),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black), // Warna latar belakang tombol
              // Tambahan properti lainnya seperti padding, shape, dsb.
            ),
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
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.black), // Warna latar belakang tombol
                        // Tambahan properti lainnya seperti padding, shape, dsb.
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); // Tutup dialog
                      },
                      child: Text("Cancel"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.black), // Warna latar belakang tombol
                        // Tambahan properti lainnya seperti padding, shape, dsb.
                      ),
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
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black), // Warna latar belakang tombol
              // Tambahan properti lainnya seperti padding, shape, dsb.
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Judul Snackbar"),
                  action: SnackBarAction(
                    label: "Close",
                    textColor: Colors.white,
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
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black), // Warna latar belakang tombol
              // Tambahan properti lainnya seperti padding, shape, dsb.
            ),
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
            ),
          ),
        ],
      ),
    );
  }
}
