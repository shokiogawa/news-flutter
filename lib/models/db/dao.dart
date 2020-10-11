import 'package:moor/moor.dart';
import 'package:practicehome/models/db/database.dart';

part 'dao.g.dart';

@UseDao(tables: [ArticleRecords])
class NewsDao extends DatabaseAccessor<MyDatabase> with _$NewsDaoMixin {
  NewsDao(MyDatabase db) : super(db);

  Future clearDb() => delete(articleRecords).go();

  Future insertDb(List<ArticleRecord> articles) async {
    await batch((batch) {
      batch.insertAll(articleRecords, articles);
    });
  }

  Future<List<ArticleRecord>> get articlesFromDb =>
      select(articleRecords).get();

  Future<List<ArticleRecord>> insertAndRecordFromBd(
      List<ArticleRecord> articles) =>
      transaction(() async {
        await clearDb();
        await insertDb(articles);
        return await articlesFromDb;

        });
}