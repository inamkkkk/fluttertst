class Languages {
  String? contry;
  String? word;

  Languages({this.contry, this.word});

  Languages.fromJson(Map<String, dynamic> json) {
    contry = json['contry'];
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contry'] = this.contry;
    data['word'] = this.word;
    return data;
  }
}