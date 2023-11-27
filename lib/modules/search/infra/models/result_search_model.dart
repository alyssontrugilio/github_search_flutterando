import 'dart:convert';

import '../../domain/entities/result_search.dart';

class ResultSearchModel extends ResultSearch {
  ResultSearchModel(
      {required super.title, required super.content, required super.img});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'img': img,
    };
  }

  static ResultSearchModel? fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ResultSearchModel(
      title: map['title'],
      content: map['content'],
      img: map['img'],
    );
  }

  String toJson() => json.encode(toMap());
  static ResultSearchModel? fromJson(String source) =>
      fromMap(json.decode(source));
}
