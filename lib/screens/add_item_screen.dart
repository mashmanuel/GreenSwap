import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/firestore_service.dart';
import '../models/item.dart';

class AddItemScreen extends StatelessWidget {
  final _title = TextEditingController();
  final _desc = TextEditingController();
  final _firestore = FirestoreService();

  AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Item')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: _title,
                decoration: const InputDecoration(labelText: 'Title')),
            TextField(
                controller: _desc,
                decoration: const InputDecoration(labelText: 'Description')),
            ElevatedButton(
              onPressed: () {
                final userId = FirebaseAuth.instance.currentUser!.uid;
                final item = Item(
                  id: '',
                  title: _title.text,
                  description: _desc.text,
                  imageUrl: '', // Add image uploading later
                  userId: userId,
                );
                _firestore.addItem(item);
                Navigator.pop(context);
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
