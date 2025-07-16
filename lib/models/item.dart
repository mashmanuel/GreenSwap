class Item {
  final String id, title, description, imageUrl, userId;

  Item({required this.id, required this.title, required this.description, required this.imageUrl, required this.userId});

  factory Item.fromMap(Map<String, dynamic> data, String id) => Item(
    id: id,
    title: data['title'],
    description: data['description'],
    imageUrl: data['imageUrl'],
    userId: data['userId'],
  );

  Map<String, dynamic> toMap() => {
    'title': title,
    'description': description,
    'imageUrl': imageUrl,
    'userId': userId,
  };
}
