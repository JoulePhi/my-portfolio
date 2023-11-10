class AboutModel {
  final String? description;
  final List? experiences;
  final Map? skills;
  final String? cv;

  AboutModel({
    this.description,
    this.experiences,
    this.skills,
    this.cv,
  });

  factory AboutModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return AboutModel();
    }
    return AboutModel(
      description: json['description'],
      experiences: json['experiences'],
      skills: Map.from(json['skills']),
      cv: json['cv'],
    );
  }
}
