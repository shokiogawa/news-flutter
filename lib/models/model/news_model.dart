import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class News{
  final List<Articles> articles;

  News({this.articles});
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}


@JsonSerializable()
class Articles{
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles({this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});
  factory Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);
  Map<String, dynamic> toJson() => _$ArticlesToJson(this);
}