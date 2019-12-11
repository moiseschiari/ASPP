import 'package:flutter/material.dart';
import 'package:aspp/models/detailSites.dart';
import 'package:aspp/componets/SiteCard.dart';



class ProductList extends StatefulWidget {
  //final PublicSite sites;
  //ProductList( @required this.sites);

  @override
  _ProductListState createState() => _ProductListState();
}

class  _ProductListState extends State<ProductList>{
  final PublicSite site;
  //final Home home;

  _ProductListState( {this.site});


  @override
 /* void initState() {
    super.initState();

  }*/

  @override
  Widget build(BuildContext context) {


    final itemCountRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
      ],
    );

    final list = Expanded(
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
        children: <Widget>[itemCountRow, list],
      ),
    );
  }
}


