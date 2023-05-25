import 'package:flutter/material.dart';

import 'main.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 21, 159, 224),
            ),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'image/b.jpg',
                    )),
                Text(
                  'Henok   Basazn',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                ),
                Text(
                  'basahenok@gmail.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                      fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                leading: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(Icons.data_object)),
                title: const Text('Items', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ItemListScreen(),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                leading: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(Icons.settings)),
                title: const Text('Setting', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingScreen(),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                leading: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(Icons.person)),
                title: const Text('Account', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountScreen(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Account"),
      ),
    );
  }
}
