class Recommended {
  final String title, subtitle, renumeration, image, text1, text2, text3;

  const Recommended(
      {required this.title,
      required this.subtitle,
      required this.renumeration,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3});
}

List<Recommended> demoRecommend = [
  Recommended(
      title: 'Mobile Developer',
      subtitle: 'Flutter',
      renumeration: '\$5000 / anum',
      image: 'assets/images/flutter.png',
      text1: 'Full Time',
      text2: 'Remote',
      text3: 'Senior'),
  Recommended(
      title: 'IOS Developer',
      subtitle: 'Swift',
      renumeration: '\$3000 / anum',
      image: 'assets/images/swift.png',
      text1: 'Full Time',
      text2: 'Remote',
      text3: 'Junior'),
];
