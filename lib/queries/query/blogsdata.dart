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
