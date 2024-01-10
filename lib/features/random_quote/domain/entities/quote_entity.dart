import 'package:equatable/equatable.dart';

class QuoteEntity {
  final String content;
  final String author;
  final List<String> tags;

  const QuoteEntity({
    required this.content,
    required this.author,
    required this.tags,
  });
}
