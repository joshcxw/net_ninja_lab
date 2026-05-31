import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:intl/intl.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback onLike;
  QuoteCard({required this.quote, required this.onLike, });

  Color cardColor(String c) => switch (c.toLowerCase()) {
    'inspiration' => Colors.blueAccent.shade100,
    'humor'       => Colors.amber.shade100,
    _             => Colors.grey.shade100,
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor(quote.category),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_up),
                    onPressed: onLike,
                  ),
                  Text('${quote.likes ?? 0}'),
                ],
              ),
              Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap (
                    spacing: 8,
                    children: [
                      Chip(label: Text(quote.category)),
                      Text(DateFormat('MMM d, yyyy').format(quote.createdAt)),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}