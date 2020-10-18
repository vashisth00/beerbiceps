String alldata = '''
query BlogsData {
  posts {
    nodes {
      title
      date
      pingStatus
      commentCount
      isPreview
      content
      
    }
  }
}

''';

String withAuthors = '''
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

String readRepositories = """
    query MyQuery {
            posts(last: 30) {
              edges {
               node {
                 title
                 slug
                 id
               }
              }
           }
          }
""";

String basicPosts = """
query Posts {
  posts {
    nodes {
      authorId
      title
    }
  }
}

""";
