class Quote {

  String text = "";
  String author = "";
  int? likes = 0;
  DateTime createdAt;
  String category = '';

  Quote({
    required this.text,
    required this.author,
    required this.category,
    this.likes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

}