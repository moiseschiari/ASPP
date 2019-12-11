import 'package:aspp/models/detailSites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:aspp/componets/site_list.dart';
import 'package:aspp/componets/ParquesList.dart';




class Category extends StatelessWidget {
  final String title;
  final String image;
  final PublicSite publicSite;

  Category({@required this.title, @required this.image,@required this.publicSite});


  List<Container> listamos = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: buildSwiper(),
            flex: 2,
          ),
          Expanded(
            child: Container(
              child: ProductList(),
            ),
            flex: 4,
          )
        ],
      ),
    );
  }

  Widget buildSwiper() {

    return Swiper(
      outer: false,
      itemBuilder: (context, i) {
        return Image.asset(
          'assets/${image}',
          fit: BoxFit.cover,
        );
      },
      autoplay: true,
      duration: 300,
      pagination: new SwiperPagination(margin: new EdgeInsets.all(5.0)),
      itemCount: 1,
    );
  }
}
