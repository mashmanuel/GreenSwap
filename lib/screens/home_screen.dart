import 'package:flutter/material.dart';
import '../services/firestore_service.dart';
import '../models/item.dart';

class HomeScreen extends StatelessWidget {
  final _firestore = FirestoreService();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GreenSwap')),
      body: StreamBuilder<List<Item>>(
        stream: _firestore.getItems(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return const Center(child: CircularProgressIndicator());
          final items = snapshot.data!;
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (_, i) => ListTile(
              title: Text(items[i].title),
              subtitle: Text(items[i].description),
              onTap: () => {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/add'),
      ),
    );
  }
}
