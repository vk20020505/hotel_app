class Hotel {
  dynamic imgUrl;
  dynamic hotelName;
  dynamic location;
  dynamic price;
  dynamic rating;
  dynamic offer;

  Hotel({
    this.imgUrl,
    this.hotelName,
    this.location,
    this.price,
    this.rating,
    this.offer,
  });
}

List<Hotel> details = [
  Hotel(
      imgUrl: 'assets/images/pic2.jpg',
      hotelName: "Santorini",
      location: "Greece",
      price: '250',
      rating: '4.8',
      offer: '25%'),
  Hotel(
      imgUrl: 'assets/images/pic3.jpg',
      hotelName: "St.Marks",
      location: "Paris",
      price: '280',
      rating: '4.9',
      offer: '15%'),
  Hotel(
      imgUrl: 'assets/images/pic4.jpg',
      hotelName: "Murano",
      location: "Venice",
      price: '270',
      rating: '4.9',
      offer: '20%'),
  Hotel(
      imgUrl: 'assets/images/pic1.jpg',
      hotelName: "Basilica",
      location: "Turkey",
      price: '230',
      rating: '4.5',
      offer: '28%'),
  Hotel(
      imgUrl: 'assets/images/pic2.jpg',
      hotelName: "Santorini",
      location: "Greece",
      price: '250',
      rating: '4.8',
      offer: '25%'),
  Hotel(
      imgUrl: 'assets/images/pic3.jpg',
      hotelName: "St.Marks",
      location: "Paris",
      price: '280',
      rating: '4.9',
      offer: '15%'),
  Hotel(
      imgUrl: 'assets/images/pic4.jpg',
      hotelName: "Murano",
      location: "Venice",
      price: '270',
      rating: '4.9',
      offer: '20%'),
  Hotel(
      imgUrl: 'assets/images/pic1.jpg',
      hotelName: "Basilica",
      location: "Turkey",
      price: '230',
      rating: '4.5',
      offer: '28%')
];
