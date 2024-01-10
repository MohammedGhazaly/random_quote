import 'package:quote_gen_clean_arc/features/random_quote/domain/entities/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  String? id;
  // String? content;
  // String? author;
  // List<String>? tags;
  String? authorSlug;
  num? length;
  String? dateAdded;
  String? dateModified;

  QuoteModel({
    this.id,
    required String content,
    required String author,
    required List<String> tags,
    this.authorSlug,
    this.length,
    this.dateAdded,
    this.dateModified,
  }) : super(content: content, author: author, tags: tags);

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        id: json['_id'] as String?,
        content: json['content'] as String? ?? "",
        author: json['author'] as String? ?? "",
        tags: json['tags'] as List<String>? ?? [],
        authorSlug: json['authorSlug'] as String?,
        length: json['length'] as num?,
        dateAdded: json['dateAdded'] as String?,
        dateModified: json['dateModified'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'content': content,
        'author': author,
        'tags': tags,
        'authorSlug': authorSlug,
        'length': length,
        'dateAdded': dateAdded,
        'dateModified': dateModified,
      };
}
