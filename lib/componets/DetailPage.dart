import 'package:flutter/material.dart';
import 'package:aspp/models/detailSites.dart';
import 'package:aspp/componets/location.dart';

/*class DetailsPage extends StatefulWidget {
  final PublicSite site;

  const DetailsPage({Key key, @required this.site}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    ScreenUtil.instance = ScreenUtil(
      width: 388,
      height: 1600,
      allowFontScaling: true,
    )..init(context);

    final multiplier = screenHeight/screenWidth;

    final spacer = SizedBox(height: 10.0);

    final image = Hero(
      tag: widget.site.IdSite,
      child: Image.asset(
        widget.site.image,
        height: ScreenUtil().setHeight(400) * multiplier,
      ),
    );

    final name = Text(
      widget.site.name.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    );



    final top = Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 50.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            name,
            spacer,
            image,
          ],
        ),
      ),
    );

    final bottom = Container(
      height: MediaQuery.of(context).size.height * 0.12, // 95.0
      color: Colors.white,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            )),
        onPressed: () {
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add To Cart - ",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            Text(
              "\$${widget.site.description.toString()}",
              style: TextStyle(fontSize: 22.0, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[top, bottom],
      ),
    );
  }
}*/

class DetailsPage extends StatefulWidget {
  final PublicSite site;


  const DetailsPage({Key key, @required this.site}) : super(key: key);

  @override
  Detalle createState() => Detalle();
}

//creamos el metodo detalle
//este se usa cuando pulsamos para ver segunda pantalla la descripcion del ejercicio
class Detalle extends State<DetailsPage> {
  Detalle(
      {this.id,
      this.nombre,
      this.imagen,
      this.descripcion,
      this.lati,
      this.longi});

  final int id;
  final String nombre;
  final String imagen;
  final String descripcion;
  final double lati;
  final double longi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 400.0, //tamaño de la segunda imagen
              child: new Hero(
                tag: widget.site.IdSite,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      widget.site.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          new IniciarNombre(
            nombre: widget.site.name,
          ),
          new Container(
            height: 100,
            padding: new EdgeInsets.all(1.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  color: Colors.blue,
                  iconSize: 40.0,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.schedule),
                  iconSize: 40.0,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.photo),
                  iconSize: 40.0,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.location_on),
                  iconSize: 40.0,
                  color: Colors.blue,
                  onPressed: () {
                    navigateToSubPage(context);
                  },
                ),
              ],
            ),
          ),
          new Informacion(
            descripcion: widget.site.description,
          ),
        ],
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationPage(
                  latitud: widget.site.lat,
                  longitud: widget.site.lon,
                  descripcion: widget.site.name,
                  image: widget.site.image,
                )));
  }
}

class IniciarNombre extends StatelessWidget {
  IniciarNombre({this.nombre});

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nombre,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                //icono que agrega estrellas calificacion
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.purple,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IniciarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(5.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.call,
            ),
            color: Colors.blue,
            iconSize: 40.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.schedule),
            iconSize: 40.0,
            color: Colors.blue,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 40.0,
            color: Colors.blue,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.location_on),
            iconSize: 40.0,
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

/*class Maps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: new EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.blue,
        padding: const EdgeInsets.all(10.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LocationPage()),
          );
        },
        child: Text('Ubicación'),
      ),
    );
  }
}*/

/*class IconTec extends StatelessWidget {
  IconTec({this.icon, this.tec});

  final IconButton icon;
  final String tec;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          new Text(
            tec,
            style: new TextStyle(fontSize: 12.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}*/

class Informacion extends StatelessWidget {
  Informacion({this.descripcion});

  final String descripcion;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            descripcion,
            style: new TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
