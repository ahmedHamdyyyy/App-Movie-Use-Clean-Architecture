import 'package:equatable/equatable.dart';


// ignore: must_be_immutable
class Genres extends Equatable {
 final int id;
 final String name;

  const Genres({
    required this.id,
    required this.name,
  });

  factory Genres.fromJson(Map<String, dynamic> json) {
    return Genres(
      id: json["id"],
      name: json["name"],
    );
  }

  @override
  List<Object> get props => [id,name,];
}