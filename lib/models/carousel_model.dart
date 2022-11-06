class CarouselModel {
  String image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels = carouselsData
    .map((item) => CarouselModel(item['image'].toString()))
    .toList();

var carouselsData = [
  {"image": "assets/images/carousel1.png"},
  {"image": "assets/images/carousel2.png"},
  {"image": "assets/images/carousel3.png"},
];
