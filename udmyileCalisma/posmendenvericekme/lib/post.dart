class Post {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnaiUrl;
  Post({this.albumId, this.id, this.thumbnaiUrl, this.title, this.url});

  Post.fromJson(Map<String, dynamic> json) {
    albumId = json["albumId"];
    id = json["id"];
    title = json["title"];
    url = json["url"];
    thumbnaiUrl = json["thumbnailUrl"];
  }
}
