
import 'package:practicehome/models/db/database.dart';
import 'package:practicehome/models/model/news_model.dart';


//Dartのモデルクラス => DBのテーブルクラス
// extension ConvertToArticleRecord on List<Articles> {
//   List<ArticleRecord> toArticleRecords(List<Articles> articles){
//     var articleRecords = List<ArticleRecord>();
//     articles.map((article){
//       articleRecords.add(
//           ArticleRecord(
//               title: article.title ?? "",
//               description: article.description ?? "",
//               url: article.url,
//               urlToImage: article.urlToImage ?? "",
//               publishedAt: article.publishedAt ?? "",
//               content: article.content ?? ""
//           )
//       );
//     }).toList();
//     return articleRecords;
//   }
// }

extension ConvertToArticleRecord on List<Articles>{
  List<ArticleRecord> toArticleRecords(List<Articles> articles){
    var articleRecords = List<ArticleRecord>();
    articles.map((article){
      articleRecords.add(
      ArticleRecord(
        title: article.title ?? "",
        description: article.description ?? "",
        url: article.url,
        urlToImage: article.urlToImage ?? "",
        publishedAt: article.publishedAt ?? "",
        content: article.content ?? "",
      )
    );
    }).toList();
    return articleRecords;
  }
}
//
extension ConvertToArticle on List<ArticleRecord>{
  List<Articles> toArticles(List<ArticleRecord> articleRecords){
    var articles = List<Articles>();
    articleRecords.map((article){articles.add(
        Articles(
          title: article.title ?? "",
          description: article.description ?? "",
          url: article.url,
          urlToImage: article.urlToImage ?? "",
          publishedAt: article.publishedAt ?? "",
          content: article.content ?? "",
        )
    );
    }).toList();
    return articles;
  }
}
//DBのテーブルクラス => Dartのモデルクラス
// extension ConvertToArticle on List<ArticleRecord> {
//   List<Articles> toArticles(List<ArticleRecord> articleRecords){
//     var articles = List<Articles>();
//     articleRecords.map((articleRecord){
//       articles.add(
//           Articles(
//               title: articleRecord.title ?? "",
//               description: articleRecord.description ?? "",
//               url: articleRecord.url,
//               urlToImage: articleRecord.urlToImage ?? "",
//               publishedAt: articleRecord.publishedAt ?? "",
//               content: articleRecord.content ?? ""
//           )
//       );
//     }).toList();
//     return articles;
//   }
// }