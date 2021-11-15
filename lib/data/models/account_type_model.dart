final accountTypeList = [
  AccountType(
      title: 'shipper',
      imageUrl: 'assets/icon/shipper.png',
      shortDescription: 'Lorem ipsum dolor sit amet,consectetur adipiscing'),
  AccountType(
      title: 'transporter',
      imageUrl: 'assets/icon/transporter.png',
      shortDescription: 'Lorem ipsum dolor sit amet,consectetur adipiscing'),
];

class AccountType {
  final String title;
  final String shortDescription;
  final String imageUrl;

  AccountType(
      {required this.title,
      required this.shortDescription,
      required this.imageUrl});
}
