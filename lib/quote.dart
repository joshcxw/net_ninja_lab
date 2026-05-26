class Quote {

  String text = "";
  String author = "";
  int? likes = 0;
  DateTime createdAt;

  Quote({
    required this.text,
    required this.author,
    this.likes,
    DateTime? createdAt,

  }) : createdAt = createdAt ?? DateTime.now();

}