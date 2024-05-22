import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'info.dart';
import 'results.dart';

class CharactersModel {
  Info? info;
  List<Results>? results;
  CharactersModel({
    this.info,
    this.results,
  });

  CharactersModel copyWith({
    ValueGetter<Info?>? info,
    ValueGetter<List<Results>?>? results,
  }) {
    return CharactersModel(
      info: info != null ? info() : this.info,
      results: results != null ? results() : this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'info': info?.toMap(),
      'results': results?.map((x) => x.toMap()).toList(),
    };
  }

  factory CharactersModel.fromMap(Map<String, dynamic> map) {
    return CharactersModel(
      info: map['info'] != null ? Info.fromMap(map['info']) : null,
      results: map['results'] != null
          ? List<Results>.from(map['results']?.map((x) => Results.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharactersModel.fromJson(String source) =>
      CharactersModel.fromMap(json.decode(source));

  @override
  String toString() => 'CharactersModel(info: $info, results: $results)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharactersModel &&
        other.info == info &&
        listEquals(other.results, results);
  }

  @override
  int get hashCode => info.hashCode ^ results.hashCode;
}
