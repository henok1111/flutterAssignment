import 'package:flutter/material.dart';
import 'package:flutter_app/screen2.dart';
import 'My_Drawer.dart';
import 'Items_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Items(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: ItemListScreen()),
    );
  }
}

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.data_object),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            const Text("List of items"),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: ListView.separated(
          itemCount: Provider.of<Items>(context).items.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 95,
              width: 50,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black12)),
              child: ListTile(
                leading: Container(
                  width: 88,
                  height: 88,
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Image.network(
                    Provider.of<Items>(context).items[index].imageUrl,
                    width: 50,
                  ),
                ),
                title: Text(Provider.of<Items>(context).items[index].name),
                subtitle: Text(
                    'Price: \$${Provider.of<Items>(context).items[index].price.toStringAsFixed(2)}'),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetailScreen(
                          item: Provider.of<Items>(context).items[index]),
                    ),
                  );
                },
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 6,
              thickness: 0,
              color: Color.fromARGB(26, 179, 162, 162),
            );
          }),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
