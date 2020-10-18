class BBlogs {
  final int id;
  final String title;
  final String thumbnailUrl;

  BBlogs({this.id, this.title, this.thumbnailUrl});

  static const String withAuthors = '''
      query MyQuery {
        posts {
          nodes {
            authorId
            title
            slug
            author {
              node {
                firstName
              }
            }
          }
        }
      }

      ''';

  factory BBlogs.fromJson(Map<String, dynamic> json) {
    return BBlogs(
      //posts:
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}
