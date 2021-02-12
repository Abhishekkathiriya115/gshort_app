
import 'dart:convert';

List<NewsModel> allnewsFromJson(String str) => List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

String allnewsJson(List<NewsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsModel {
  NewsModel({
    this.id,
    this.image,
    this.postDate,
    this.titlle,
    this.body,
    this.categoryName,
    this.link,
  });

  String id;
  String image;
  String postDate;
  String titlle;
  String body;
  String categoryName;
  String link;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    id: json["id"],
    image: json["image"],
    postDate: json["post_date"],
    titlle: json["titlle"],
    body: json["body"],
    categoryName: json["category_name"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "post_date": postDate,
    "titlle": titlle,
    "body": body,
    "category_name": categoryName,
    "link": link,
  };
}

enum PostDate { THE_041220 }

final postDateValues = EnumValues({
  "04/12/20": PostDate.THE_041220
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }

}

