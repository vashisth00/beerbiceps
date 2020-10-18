class BBlogs {
  final int id;
  final String title;
  final String thumbnailUrl;

  BBlogs({this.id, this.title, this.thumbnailUrl});

  factory BBlogs.fromJson(Map<String, dynamic> json) {
    return BBlogs(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}
