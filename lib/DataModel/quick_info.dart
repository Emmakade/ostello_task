class QuickInfo {
  final String title;
  final String description;
  final String btnText;

  QuickInfo(
      {required this.title, required this.description, required this.btnText});

  QuickInfo.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        description = map['description'],
        btnText = map['btnText'];

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'btnText': btnText,
    };
  }
}
