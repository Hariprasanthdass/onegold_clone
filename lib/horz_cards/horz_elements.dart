class HorzElements {
  final String? title;
  final String? content;
  final String? pic;

  HorzElements({this.content, this.pic, this.title});
}

final List<HorzElements> registeredHorzElements = [
  HorzElements(
    title: 'AUTOINVEST',
    content: 'Start building your wealth with repeat purchases',
    pic: 'assets/images/onegold-1.png',
  ),
  HorzElements(
    title: 'REFER A FRIEND',
    content: 'Share your love of Onegold and get \$5 for every friend that makes a purchase.',
    pic: 'assets/images/onegold-1.png',
  ),
  HorzElements(
    title: 'ALERTS',
    content: 'Recevie the latest precious metals news and special offer from Onegold.',
    pic: 'assets/images/onegold-1.png',
  ),
];
