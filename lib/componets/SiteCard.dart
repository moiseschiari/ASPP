import 'package:aspp/componets/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:aspp/models/detailSites.dart';

class SiteCard extends StatelessWidget {
  final PublicSite publicSite;

  const SiteCard({Key key, @required this.publicSite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacer = SizedBox(height: 5.0);

    final image = Hero(
        tag: this.publicSite?.IdSite, child: Image.asset(publicSite.image));

    final name = Text(
      publicSite.name.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
      ),
    );

    final brand = Text(
      publicSite.brand.toUpperCase(),
      style: TextStyle(fontSize: 11.0, color: Colors.blue),
    );

    /* return Container(
      margin: new EdgeInsets.all(10.0),
      child: new Card(
        elevation: 10,
        child: new Column(
          children: <Widget>[
            new Hero(

              child: new Material(
                child: new InkWell(
                  onTap: () =>
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Detalle(
                            nombre: publicSite.name,
                            imagen: publicSite.image,
                            descripcion: publicSite.description
                        ),
                      )),
                  child: new Image.asset(
                    publicSite.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.all(5.0),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  publicSite.name,
                  style: new TextStyle(fontSize: 14.0),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );*/

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      child: MaterialButton(
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(
              builder: (context) => new DetailsPage(site: publicSite)));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              image,
              spacer,
              name,
              spacer,
              spacer,
              brand,
              spacer,
            ],
          ),
        ),
      ),
    );
  }
}
