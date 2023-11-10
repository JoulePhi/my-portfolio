class ContactModel {
  final String? description;
  final String? email;
  final String? number;
  final String? instagram;

  ContactModel({this.description, this.email, this.instagram, this.number});

  factory ContactModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return ContactModel();
    }
    return ContactModel(
      description: json['description'],
      email: json['email'],
      instagram: json['instagram'],
      number: json['number'],
    );
  }
}
