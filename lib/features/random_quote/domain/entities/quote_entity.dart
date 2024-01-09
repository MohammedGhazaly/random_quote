import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String content;
  final String author;
  final List<String> tags;

  const QuoteEntity({
    required this.content,
    required this.author,
    required this.tags,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
