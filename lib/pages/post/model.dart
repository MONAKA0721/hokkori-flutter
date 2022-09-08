import 'package:hokkori/pages/post/post_page.graphql.dart';

class WorkModel {
  final String id;
  final String title;
  final String? avatar;
  final String thumbnail;

  WorkModel(
      {required this.id,
      required this.title,
      this.avatar,
      required this.thumbnail});

  ///custom comparing function to check if two users are equal
  bool isEqual(WorkModel model) {
    return id == model.id;
  }

  static List<WorkModel> fromList(List<Query$SearchWorks$works$edges?> list) {
    return list
        .map((item) => WorkModel(
            id: item!.node!.id,
            title: item.node!.title,
            thumbnail: item.node!.thumbnail!))
        .toList();
  }

  @override
  String toString() => title;
}

class HashtagModel {
  final String id;
  final String title;

  HashtagModel({required this.id, required this.title});

  ///custom comparing function to check if two users are equal
  bool isEqual(HashtagModel model) {
    return id == model.id;
  }

  static List<HashtagModel> fromList(
      List<Query$SearchHashtags$hashtags$edges?> list) {
    return list
        .map(
            (item) => HashtagModel(id: item!.node!.id, title: item.node!.title))
        .toList();
  }

  @override
  String toString() => title;
}
