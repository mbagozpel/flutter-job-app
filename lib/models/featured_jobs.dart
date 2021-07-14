class FeaturedJobs {
  final String? image,
      title,
      subTitle,
      renumeration,
      datePosted,
      text1,
      text2,
      text3,
      text4;

  const FeaturedJobs(
      {this.image,
      this.title,
      this.subTitle,
      this.renumeration,
      this.datePosted,
      this.text1,
      this.text2,
      this.text3,
      this.text4});
}

List<FeaturedJobs> demoFeatured = [
  FeaturedJobs(
      image: 'assets/images/youtube.png',
      title: 'Backend Developer',
      subTitle: 'Youtube',
      renumeration: '\$2000 / anum',
      datePosted: '3 Weeks ago',
      text1: 'Part Time',
      text2: 'Remote',
      text3: 'Junior',
      text4: '4 yrs'),
  FeaturedJobs(
      image: 'assets/images/apple.jpeg',
      title: 'Customer Care',
      subTitle: 'Apple',
      renumeration: '\$5000 / anum',
      datePosted: '2 days ago',
      text1: 'Full Time',
      text2: 'Remote',
      text3: 'Senior',
      text4: '2 yrs')
];
