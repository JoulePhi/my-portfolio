class HomeModel {
  final String? quote;
  final String? quoteBy;
  final String? status;
  final String? subtitle;
  final String? meBanner;
  final String? meAbout;

  HomeModel({
    this.quote,
    this.quoteBy,
    this.status,
    this.subtitle,
    this.meBanner,
    this.meAbout,
  });

  factory HomeModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return HomeModel();
    }
    return HomeModel(
      quote: json['quote'],
      quoteBy: json['quote_by'],
      status: json['status'],
      subtitle: json['subtitle'],
      meAbout: json['me_about'],
      meBanner: json['me_banner'],
    );
  }
}
