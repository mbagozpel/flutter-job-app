class PageModel {
  final String image;
  final String? textTop, textBottom;

  const PageModel({required this.image, this.textTop, this.textBottom});
}

List<PageModel> demoModels = [
  PageModel(
      image: 'assets/images/Girl Laptop 1 Standing F1.png',
      textTop: 'Find your ',
      textBottom: 'Dream-Job'),
  PageModel(
      image: 'assets/images/Work From Home - Girl S.png',
      textTop: 'Work from',
      textBottom: 'Home'),
  PageModel(
      image: 'assets/images/Chat Together.png',
      textTop: 'Refer Friends',
      textBottom: '& Win'),
];
