import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'origin.dart';

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Origin? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;
  Results({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  Results copyWith({
    ValueGetter<int?>? id,
    ValueGetter<String?>? name,
    ValueGetter<String?>? status,
    ValueGetter<String?>? species,
    ValueGetter<String?>? type,
    ValueGetter<String?>? gender,
    ValueGetter<Origin?>? origin,
    ValueGetter<Origin?>? location,
    ValueGetter<String?>? image,
    ValueGetter<List<String>?>? episode,
    ValueGetter<String?>? url,
    ValueGetter<String?>? created,
  }) {
    return Results(
      id: id != null ? id() : this.id,
      name: name != null ? name() : this.name,
      status: status != null ? status() : this.status,
      species: species != null ? species() : this.species,
      type: type != null ? type() : this.type,
      gender: gender != null ? gender() : this.gender,
      origin: origin != null ? origin() : this.origin,
      location: location != null ? location() : this.location,
      image: image != null ? image() : this.image,
      episode: episode != null ? episode() : this.episode,
      url: url != null ? url() : this.url,
      created: created != null ? created() : this.created,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
      'origin': origin?.toMap(),
      'location': location?.toMap(),
      'image': image,
      'episode': episode,
      'url': url,
      'created': created,
    };
  }

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
      id: map['id']?.toInt(),
      name: map['name'],
      status: map['status'],
      species: map['species'],
      type: map['type'],
      gender: map['gender'],
      origin: map['origin'] != null ? Origin.fromMap(map['origin']) : null,
      location:
          map['location'] != null ? Origin.fromMap(map['location']) : null,
      image: map['image'],
      episode: List<String>.from(map['episode']),
      url: map['url'],
      created: map['created'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Results.fromJson(String source) =>
      Results.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Results(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Results &&
        other.id == id &&
        other.name == name &&
        other.status == status &&
        other.species == species &&
        other.type == type &&
        other.gender == gender &&
        other.origin == origin &&
        other.location == location &&
        other.image == image &&
        listEquals(other.episode, episode) &&
        other.url == url &&
        other.created == created;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        status.hashCode ^
        species.hashCode ^
        type.hashCode ^
        gender.hashCode ^
        origin.hashCode ^
        location.hashCode ^
        image.hashCode ^
        episode.hashCode ^
        url.hashCode ^
        created.hashCode;
  }
}
