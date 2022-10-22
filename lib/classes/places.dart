class Places {
  String text;
  String price;
  String country;
  String image;
  Places(
      {required this.text,
      required this.image,
      required this.country,
      required this.price});
}

List<Places> placesData = [
  Places(
      text: 'Mount Bromo',
      image:
          'https://media.istockphoto.com/photos/taking-a-walk-in-nature-picture-id904172092?k=20&m=904172092&s=612x612&w=0&h=Wm5UP6GEcGZdHdnt6m1KEPntEKAHC65lY_GHwsT7t04=',
      country: 'thailand',
      price: '\$860'),
  Places(
      text: 'beach',
      image:
          'https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      country: 'thailand',
      price: '\$860'),
  Places(
      text: 'xxxx',
      image:
          'https://images.pexels.com/photos/219998/pexels-photo-219998.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      country: 'thailand',
      price: '\$860'),
];
