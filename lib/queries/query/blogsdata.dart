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

String allData = '''
query BlogsData {
  posts {
    nodes {
      title
      date
      pingStatus
      commentCount
      isPreview
      content
      author {
        node {
          nicename
          nickname
          username
          description
          capKey
          capabilities
          email
          firstName
          extraCapabilities
          id
        }
      }
      id
      slug
      uri
      status
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
