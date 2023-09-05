class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String webViewUrl;

   ArticleModel(
      {required this.webViewUrl,required this.image, required this.title, required this.subTitle}
      );

  // factory ArticleModel.fromJson(json) {
  //   return ArticleModel(
  //     image: json['urlToImage'],
  //     title: json['title'],
  //     subTitle: json['description'],
  //   );
  // }
}
