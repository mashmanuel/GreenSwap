import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/item.dart';

class FirestoreService {
  final _items = FirebaseFirestore.instance.collection('items');

  Future<void> addItem(Item item) {
    return _items.add(item.toMap());
  }

  Stream<List<Item>> getItems() {
    return _items.snapshots().map((snap) => snap.docs.map((doc) => Item.fromMap(doc.data(), doc.id)).toList());
  }
}
