import 'package:meta/meta.dart';
import 'dart:convert';

class Part2Model {
  int id;
  String title;
  Parts parts;

  Part2Model({
    required this.id,
    required this.title,
    required this.parts,
  });

  Part2Model copyWith({
    int? id,
    String? title,
    Parts? parts,
  }) =>
      Part2Model(
        id: id ?? this.id,
        title: title ?? this.title,
        parts: parts ?? this.parts,
      );

  factory Part2Model.fromRawJson(String str) => Part2Model.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Part2Model.fromJson(Map<String, dynamic> json) => Part2Model(
    id: json["id"],
    title: json["title"],
    parts: Parts.fromJson(json["parts"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "parts": parts.toJson(),
  };
}

class Parts {
  String vocabulary;
  String ideas;
  String answers;

  Parts({
    required this.vocabulary,
    required this.ideas,
    required this.answers,
  });

  Parts copyWith({
    String? vocabulary,
    String? ideas,
    String? answers,
  }) =>
      Parts(
        vocabulary: vocabulary ?? this.vocabulary,
        ideas: ideas ?? this.ideas,
        answers: answers ?? this.answers,
      );

  factory Parts.fromRawJson(String str) => Parts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Parts.fromJson(Map<String, dynamic> json) => Parts(
    vocabulary: json["vocabulary"],
    ideas: json["ideas"],
    answers: json["answers"],
  );

  Map<String, dynamic> toJson() => {
    "vocabulary": vocabulary,
    "ideas": ideas,
    "answers": answers,
  };
}
