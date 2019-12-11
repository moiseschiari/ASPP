import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:aspp/models/detailSites.dart';
import 'package:aspp/componets/SiteCard.dart';



class ParqueList extends StatefulWidget {
  //final PublicSite sites;
  //ProductList( @required this.sites);

  @override
  _ParquetListState createState() => _ParquetListState();
}

class  _ParquetListState extends State<ParqueList>{
  final PublicSite site;
  //final Home home;

  _ParquetListState( {this.site});


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

    final list2 = Expanded(
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

    /*final list2 = Expanded(
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          //if(CategoriesModel == "Iglesias"){
          print("hola");
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
    );*/


    return Container(
      child: Column(
        children: <Widget>[itemCountRow, list2],
      ),
    );
  }
}


