import 'dart:convert';

import 'package:hive/hive.dart';


@HiveType(typeId: 2)
class Cube {
  @HiveField(0)
  final String fid; //User id
  @HiveField(1)
  final String id; //Unique id of cube
  @HiveField(2)
  final String url;
  @HiveField(3)
  final String type;
  @HiveField(4)
  final String source;

  Cube(this.fid, this.id, this.url, this.type, this.source); // Source

  Cube.map(
      {required this.fid,
      required this.id,
      required this.url,
      required this.type,
      required this.source});

  Map<String, dynamic> toMap() {
    return {
      'fid': fid,
      'uid': id,
      'url': url,
      'type': type,
      'source': source,
    };
  }

  factory Cube.fromMap(Map<String, dynamic> map) {
    return Cube(
      map['fid'],
      map['uid'],
      map['url'],
      map['type'],
      map['source'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cube.fromJson(String source) => Cube.fromMap(json.decode(source));

  Cube copyWith({
    String? fid,
    String? uid,
    String? url,
    String? type,
    String? source,
  }) {
    return Cube(
      fid ?? this.fid,
      uid ?? this.id,
      url ?? this.url,
      type ?? this.type,
      source ?? this.source,
    );
  }

  @override
  String toString() {
    return 'Cube(fid: $fid, uid: $id, url: $url, type: $type, source: $source)';
  }
}
