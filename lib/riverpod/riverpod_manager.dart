

import 'package:riverpod/riverpod.dart';

import '../model/home_page_picture_model.dart';
import '../model/product_model.dart';

final productList = Provider<List<Product>>((ref) => [
  Product(name: 'Koltuk Takımı', photoUrls: [
    'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923__340.jpg',
    'https://cdn.pixabay.com/photo/2014/12/27/14/37/living-room-581073__340.jpg',
    'https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939__340.jpg'

  ], desctription: 'Rahat Konforlu'),
  Product(name: 'Mutfak Masası', photoUrls: [
    'https://cdn.pixabay.com/photo/2016/04/18/08/50/kitchen-1336160__340.jpg',
    'https://cdn.pixabay.com/photo/2016/12/30/07/59/kitchen-1940174__340.jpg',
    'https://cdn.pixabay.com/photo/2017/03/28/12/11/chairs-2181960__340.jpg',
    


  ], desctription: 'Bla Bla Bla'),
  Product(name: 'Yatak Odası Takımı', photoUrls: [
    'https://cdn.pixabay.com/photo/2016/11/19/13/06/bed-1839184__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/21/16/21/bed-1846251__340.jpg'
  ], desctription: 'Bambim var benim'),
  Product(name: 'Bla Bla takımı', photoUrls: [
    'https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__340.jpg'
  ], desctription: 'Rahat Konforlu'),
  Product(name: 'AAAAAAA Takımı', photoUrls: [
    'https://cdn.pixabay.com/photo/2014/07/31/21/41/apartment-406901__340.jpg'
  ], desctription: 'Rahat Konforlu'),
  Product(name: 'BBBBBBBB Takımı', photoUrls: [
    'https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070__340.jpg'
  ], desctription: 'Rahat Konforlu'),
]);

final homePagePictureModelList = Provider<List<HomePagePictureModel>>((ref) => [
  HomePagePictureModel(description: 'Konforlu Mobilyalar', photoUrl: 'https://cdn.pixabay.com/photo/2014/08/11/21/39/wall-416060_960_720.jpg'),
  HomePagePictureModel(description: 'Başla Açıklama', photoUrl: 'https://media.istockphoto.com/photos/wood-tv-cabinet-interior-wall-mockup-in-modern-empty-roomminimal-picture-id1308740147?b=1&k=20&m=1308740147&s=170667a&w=0&h=xAy9bMaF4ky0O3A1NRH-lBLRtNOIrzfJeZwaIM_gvtk='),
  HomePagePictureModel(description: 'Başka Açıklama', photoUrl: 'https://media.istockphoto.com/photos/white-cozy-living-room-interior-coastal-boho-style-picture-id1281810575?b=1&k=20&m=1281810575&s=170667a&w=0&h=Blp9YGkApwA3NeXxe7g7VHvfTQoUaxfjsLeICEHpyHA='),
]);

