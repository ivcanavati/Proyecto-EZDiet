class Recipe {
  final String user;
  final String title;
  final String type;
  final String ingredientes;
  final String process;
  final DateTime createDate;

  Recipe(this.user, this.title, this.type, this.ingredientes, this.process,
      this.createDate);

  /*Recipe.fromJson(Map<dynamic, String> json)
      : createDate = DateTime.parse(json['createDate'] as String),
        user = json['user'] as String,
        title = json['title'] as String,
        type = json['type'] as String,
        process = json['process'] as String,
        ingredientes = json['ingredientes'] as String;

  Map<dynamic, String> toJson() => <dynamic, String>{
        'createDate': createDate.toString(),
        'user': user,
        'title': title,
        'type': type,
        'process': process,
        'ingredientes': ingredientes,
      };*/
}
