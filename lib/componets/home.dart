import 'package:flutter/material.dart';
import 'package:aspp/componets/category.dart';
import 'package:aspp/models/detailSites.dart';

class Home extends StatefulWidget {
  final PublicSite site;

  Home({Key key, this.title, @required this.site}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text("A.S.P.P."),
      ),
      drawer: buildDrawer(),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: CategoriesModel.length,
      itemBuilder: (context, i) {
        return InkWell(
          child: Container(
            margin: EdgeInsets.all(0),
            child: Card(
              color: Color.fromRGBO(0, 0, 0, 0.8),
              elevation: 2,
              child: Container(
                child: Container(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  child: buildTitle(CategoriesModel[i]['title']),
                  height: double.infinity,
                  width: 200,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/${CategoriesModel[i]['img']}'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryPage(
                        title: CategoriesModel[i]['title'],
                        image: CategoriesModel[i]['img'],
                        site: iglesiasSitios[i],
                        )))
          },
        );
      },
    ));
  }

  Widget buildTitle(String title) {
    return Center(
      child: Container(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: Colors.white, style: BorderStyle.solid)),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  Widget buildDrawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: UserAccountsDrawerHeader(
//              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/mazzad.png"))),
              accountName: Text("Administración de sitios publicos panameños"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/aspp.png"),
                radius: 50,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  buildSeparators("Help Center"),
                  buildTile(
                    "Feedback",
                    "/feedback",
                    'assets/feedback.png',
                  ),
                  buildTile(
                    "Questions and Assistance",
                    "/feedback",
                    'assets/assistance.png',
                  ),
                  Divider(),
                  buildSeparators("Public Policy"),
                  buildTile(
                    "Privacy Policy",
                    "/feedback",
                    'assets/policy.png',
                  ),
                  buildTile(
                    "Manual de Uso",
                    "/feedback",
                    'assets/terms.png',
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget buildSeparators(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          name,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
      ],
    );
  }

  Widget buildTile(String name, String path, String imgPath) {
    return ListTile(
      leading: Image.asset(
        imgPath,
        scale: 1.2,
      ),
      title: Text(name),
      onTap: () {
        if (path != '/login' && path != '/signUp')
          Navigator.pop(context);
        else
          Navigator.pushNamed(context, path);
      },
    );
  }
}
