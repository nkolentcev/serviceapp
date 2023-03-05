import 'package:json_annotation/json_annotation.dart';

class User {
  final String ID;
  final String Name;
  final int Number;
  final String Uschema;

  User(
      {required this.ID,
      required this.Name,
      required this.Number,
      required this.Uschema});

  User.fromJson(Map<String, dynamic> json)
      : ID = json['id'],
        Name = json['name'],
        Number = json['number'],
        Uschema = "" ?? json["uschemga"];

  Map<String, dynamic> toJson() => {
        'id': ID,
        'name': Name,
        'number': Number,
        'uschema': Uschema,
      };
}
