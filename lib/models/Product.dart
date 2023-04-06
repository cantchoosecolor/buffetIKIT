import 'dart:collection';

import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final num price;
  final String imgUrl;
  final color;

  Product({
    @required this.id, 
    @required this.title, 
    @required this.description, 
    @required this.price,
    @required this.imgUrl, 
    @required this.color
  });
}

class ProductDataProvider with ChangeNotifier {

  List<Product> _items = [
    Product(
      id: 'p3',
      title: 'Борщ',
      description: 'Свежая свекла, капуста, картофель, морковь, лук, куриное филе, зелень',
      price: 58.00,
      imgUrl: 'https://mykaleidoscope.ru/x/uploads/posts/2022-09/1663834056_53-mykaleidoscope-ru-p-russkii-borshch-yeda-krasivo-62.jpg',
      color: '0xFFFFF59D',
    ),
    Product(
      id: 'p1',
      title: 'Салат Цезарь',
      description: 'Куринное филе, сыр, салат, помидоры, яйца, соус цезарь',
      price: 60.00,
      imgUrl: 'https://mykaleidoscope.ru/x/uploads/posts/2022-10/1666108848_59-mykaleidoscope-ru-p-salat-tsezar-restorannaya-podacha-oboi-61.jpg',
      color: '0xFFBBDEFB',
    ),
    Product(
      id: 'p2',
      title: 'Плов',
      description: 'Мясо (баранина), рис, морковь, лук репчатый, чеснок',
      price: 65.00,
      imgUrl: 'https://webpulse.imgsmail.ru/imgpreview?key=pulse_cabinet-image-9f23efbb-79f5-43bf-a04b-134c694b6092&mb=webpulse',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p4',
      title: 'Летний салат',
      description: 'Помидор, огурец, редиска, зелень, майонез',
      price: 35.00,
      imgUrl: 'https://recepti-ot-sanicha.ru/wp-content/uploads/2021/09/ca20f5414c3f4bd03b1607a3b0fbb027.jpeg',
      color: '0xFFCCFF90',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id) 
    => _items.singleWhere((value) => value.id == id);

}