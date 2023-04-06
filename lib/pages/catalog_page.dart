import 'package:flutter/material.dart';

class ItemCatalog extends StatelessWidget {

  final String imgUrl;
  final String text;

  ItemCatalog({Key key, this.imgUrl, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Каталог блюд'),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 1,
        children: <Widget>[
          _buildItem('https://mykaleidoscope.ru/x/uploads/posts/2022-09/1663834056_53-mykaleidoscope-ru-p-russkii-borshch-yeda-krasivo-62.jpg', 'Борщ'),
          _buildItem('https://pic.rutubelist.ru/video/9c/af/9cafe499cd34216250be241e5013142c.jpg', 'Солянка'),
          _buildItem('https://ketokotleta.ru/wp-content/uploads/2/5/7/25786c5cfa54829cfbe8e0c1e5e50d2d.jpeg', 'Куринный суп'),
          _buildItem('https://lobsterhouse.ru/wp-content/uploads/0/7/e/07ee92d361ac569ff4c9173c5ff1885e.jpeg', 'Окрошка'),
          _buildItem('https://attuale.ru/wp-content/uploads/2018/03/30380_filipino_sour_-1.jpg', 'Уха'),
          _buildItem('https://pic.rutubelist.ru/video/5a/41/5a411c0587bcd107138f540e922108b4.jpg', 'Щи'),
          _buildItem('https://edapmr.com/files/products/rassolnik-leningradskij-s-myasom-2.1040x780w.jpg', 'Рассольник'),

        ],
      )),
    );
  }

  Widget _buildItem(String imgUrl, text) => Container(
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(imgUrl),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3.0,
            blurRadius: 5.0)
      ],
      color: Colors.lime,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        backgroundColor: Colors.black45,
      ),
    ),
  );
}
