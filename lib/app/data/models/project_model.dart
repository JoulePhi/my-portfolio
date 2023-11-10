class ProjectModel {
  final String? name;
  final String? description;
  final String? source;
  final List<String>? technologies;
  final String? live;
  final String? thumbnail;

  ProjectModel({
    this.description,
    this.live,
    this.name,
    this.source,
    this.technologies,
    this.thumbnail,
  });

  factory ProjectModel.fromJson(String name, Map<String, dynamic>? json) {
    if (json == null) {
      return ProjectModel();
    }
    return ProjectModel(
      description: json['description'],
      name: name,
      source: json['source'],
      technologies: List<String>.from(json['technologies']),
      live: json['live'],
      thumbnail: json['thumbnail'],
    );
  }
}
