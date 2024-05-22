import 'dart:convert';

import 'package:flutter/widgets.dart';

class Origin {
  String? name;
  String? url;
  Origin({
    this.name,
    this.url,
  });

  Origin copyWith({
    ValueGetter<String?>? name,
    ValueGetter<String?>? url,
  }) {
    return Origin(
      name: name != null ? name() : this.name,
      url: url != null ? url() : this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory Origin.fromMap(Map<String, dynamic> map) {
    return Origin(
      name: map['name'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Origin.fromJson(String source) => Origin.fromMap(json.decode(source));

  @override
  String toString() => 'Origin(name: $name, url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Origin && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
