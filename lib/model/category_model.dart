
import 'dart:convert';

List<Category> CategoryFromJson(String str) => List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String CategoryToJson(List<Category> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  Category({
    this.id,
    this.name,
    this.createDate,
    this.imageLink,
  });

  String id;
  String name;
  String createDate;
  String imageLink;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    createDate: json["create_date"],
    imageLink: json["image_link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "create_date": createDate,
    "image_link": imageLink,
  };
}
