import 'package:aspp/models/detailSites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:aspp/componets/site_list.dart';
import 'package:aspp/componets/SiteCard.dart';
import 'package:aspp/componets/DetailPage.dart';

class CategoryPage extends StatefulWidget {
  final PublicSite site;
  final String title;
  final String image;

  const CategoryPage({Key key, this.site, this.title, @required this.image})
      : super(key: key);

  @override
  Category createState() => Category();
}

class Category extends State<CategoryPage> {



  List<Container> listamos = List();

  Widget _buildChild() {
    print(widget.site.category);
    if (widget.title == widget.site.category) {
      final itemCountRow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[],
      );

      final iglesia = Expanded(
        child: GridView.builder(
          itemBuilder: (BuildContext context, int index) {
            // if(s){
            return SiteCard(publicSite: iglesiasSitios[index]);
            //}
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.65,
          ),
          itemCount: iglesiasSitios.length,
        ),
      );
      return Container(
        child: Column(
          children: <Widget>[itemCountRow, iglesia],
        ),
      );
    }
  }

  /* Widget _buildChild2() {

    if (title == "Parques") {

      final itemCountRow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        ],
      );

      final parque =  Expanded(
        child: GridView.builder(
          itemBuilder: (BuildContext context, int index) {
            // if(s){
            return SiteCard(publicSite: parques[index]);
            //}


          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.65,
          ),
          itemCount: parques.length,
        ),
      );
      return Container(
        child: Column(
          children: <Widget>[itemCountRow, parque],
        ),
      );
    }


  }*/

  @override
  Widget build(BuildContext context) {
    //print(widget.site.category);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: buildSwiper(),
            flex: 4,
          ),
          Expanded(
            child: Container(
              child: _buildChild(),
            ),
            flex: 4,
          ),
        ],
      ),
    );
  }

  Widget buildSwiper() {
    return Swiper(
      outer: false,
      itemBuilder: (context, i) {
        return Image.asset(
          'assets/${widget.image}',
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
