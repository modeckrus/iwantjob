import 'dart:convert';

class Cube {
  final String fid; //User id
  final String uid; //Unique id of cube
  final String url;
  final String type;
  final String source;

  Cube(this.fid, this.uid, this.url, this.type, this.source); // Source

  Cube.map(
      {required this.fid,
      required this.uid,
      required this.url,
      required this.type,
      required this.source});

  Map<String, dynamic> toMap() {
    return {
      'fid': fid,
      'uid': uid,
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
      uid ?? this.uid,
      url ?? this.url,
      type ?? this.type,
      source ?? this.source,
    );
  }

  @override
  String toString() {
    return 'Cube(fid: $fid, uid: $uid, url: $url, type: $type, source: $source)';
  }
}
