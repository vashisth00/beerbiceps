import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.data,
  });

  Data data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.posts,
  });

  Posts posts;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        posts: Posts.fromJson(json["posts"]),
      );

  Map<String, dynamic> toJson() => {
        "posts": posts.toJson(),
      };
}

class Posts {
  Posts({
    this.nodes,
  });

  List<NodeElement> nodes;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        nodes: List<NodeElement>.from(
            json["nodes"].map((x) => NodeElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nodes": List<dynamic>.from(nodes.map((x) => x.toJson())),
      };
}

class NodeElement {
  NodeElement({
    this.title,
    this.date,
    this.pingStatus,
    this.commentCount,
    this.isPreview,
    this.content,
    this.author,
    this.id,
    this.slug,
    this.uri,
    this.status,
  });

  String title;
  DateTime date;
  String pingStatus;
  dynamic commentCount;
  bool isPreview;
  String content;
  Author author;
  String id;
  String slug;
  String uri;
  String status;

  factory NodeElement.fromJson(Map<String, dynamic> json) => NodeElement(
        title: json["title"],
        date: DateTime.parse(json["date"]),
        pingStatus: json["pingStatus"],
        commentCount: json["commentCount"],
        isPreview: json["isPreview"],
        content: json["content"],
        author: Author.fromJson(json["author"]),
        id: json["id"],
        slug: json["slug"],
        uri: json["uri"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "date": date.toIso8601String(),
        "pingStatus": pingStatus,
        "commentCount": commentCount,
        "isPreview": isPreview,
        "content": content,
        "author": author.toJson(),
        "id": id,
        "slug": slug,
        "uri": uri,
        "status": status,
      };
}

class Author {
  Author({
    this.node,
  });

  AuthorNode node;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        node: AuthorNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node.toJson(),
      };
}

class AuthorNode {
  AuthorNode({
    this.nicename,
    this.nickname,
    this.username,
    this.description,
    this.capKey,
    this.capabilities,
    this.email,
    this.firstName,
    this.extraCapabilities,
    this.id,
  });

  String nicename;
  String nickname;
  String username;
  dynamic description;
  String capKey;
  List<String> capabilities;
  String email;
  String firstName;
  List<String> extraCapabilities;
  String id;

  factory AuthorNode.fromJson(Map<String, dynamic> json) => AuthorNode(
        nicename: json["nicename"],
        nickname: json["nickname"],
        username: json["username"],
        description: json["description"],
        capKey: json["capKey"],
        capabilities: List<String>.from(json["capabilities"].map((x) => x)),
        email: json["email"],
        firstName: json["firstName"],
        extraCapabilities:
            List<String>.from(json["extraCapabilities"].map((x) => x)),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "nicename": nicename,
        "nickname": nickname,
        "username": username,
        "description": description,
        "capKey": capKey,
        "capabilities": List<dynamic>.from(capabilities.map((x) => x)),
        "email": email,
        "firstName": firstName,
        "extraCapabilities":
            List<dynamic>.from(extraCapabilities.map((x) => x)),
        "id": id,
      };
}
