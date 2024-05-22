import 'dart:convert';

import 'package:flutter/widgets.dart';

class Info {
  int? count;
  int? pages;
  String? next;
  Info({
    this.count,
    this.pages,
    this.next,
  });

  Info copyWith({
    ValueGetter<int?>? count,
    ValueGetter<int?>? pages,
    ValueGetter<String?>? next,
  }) {
    return Info(
      count: count != null ? count() : this.count,
      pages: pages != null ? pages() : this.pages,
      next: next != null ? next() : this.next,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'pages': pages,
      'next': next,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      count: map['count']?.toInt(),
      pages: map['pages']?.toInt(),
      next: map['next'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) => Info.fromMap(json.decode(source));

  @override
  String toString() => 'Info(count: $count, pages: $pages, next: $next)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Info &&
        other.count == count &&
        other.pages == pages &&
        other.next == next;
  }

  @override
  int get hashCode => count.hashCode ^ pages.hashCode ^ next.hashCode;
}
