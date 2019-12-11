
class PublicSite {
  int IdSite;
  String category;
  String name;
  String image;
  String description;
  String brand;
  String title;



  PublicSite({
    this.IdSite,
    this.category,
    this.name,
    this.image,
    this.description,
    this.brand,
    this.title,
  });
}




 List<PublicSite> iglesiasSitios = [

    PublicSite(
      title: 'Iglesias',
      IdSite: 1,
      brand: "Catolica",
      name: "Iglesia del Carmen ",
      image: 'assets/iglesias/carmen.jpg',
      description:
          "Es icono arquitectónico de Bella Vista. La Iglesia Nuestra Señora del Carmen engalana la vía España con su imponente estructura de estilo gótico medieval desde hace más de 62 años.",
    ),
    PublicSite(
      title: 'Iglesias',
      IdSite: 2,
      brand: "Catolica",
      name: "San Francisco de Asís",
      image: 'assets/iglesias/asis.jpg',
      description: "construcion",
    ),
    PublicSite(
      title: 'Iglesias',
      IdSite: 3,
      brand: "Musulmana",
      name: "Jumma Masjid",
      image: 'assets/iglesias/jumma.jpg',
      description:
          "Es icono arquitectónico de Bella Vista. La Iglesia Nuestra Señora del Carmen engalana la vía España con su imponente estructura de estilo gótico medieval desde hace más de 62 años.",
    ),
  ];

List<PublicSite> parques = [

  PublicSite(
    title: 'Parques',
    IdSite: 4,
    brand: "Entretenimiento",
    name: "Parque urraca ",
    image: 'assets/parques/urraca.jpg',
    description:
    "Es icono arquitectónico de Bella Vista. La Iglesia Nuestra Señora del Carmen engalana la vía España con su imponente estructura de estilo gótico medieval desde hace más de 62 años.",
  ),
  PublicSite(
    title: 'Parques',
    IdSite: 5,
    brand: "Entretenimiento",
    name: "Parqie Andres Bello",
    image: 'assets/parques/andresBello.jpg',
    description: "construcion",
  ),
  PublicSite(
    title: 'Parques',
    IdSite: 6,
    brand: "Entretenimiento",
    name: "Jumma Masjid",
    image: 'assets/iglesias/jumma.jpg',
    description:
    "Es icono arquitectónico de Bella Vista. La Iglesia Nuestra Señora del Carmen engalana la vía España con su imponente estructura de estilo gótico medieval desde hace más de 62 años.",
  ),
];


var CategoriesModel = [
  {
    'title': 'Iglesias',
    'img': 'iglesias.jpg',
  },
  {
    'title': 'Parques',
    'img': 'parques.jpg',
  },
  {
    'title': 'Turismo',
    'img': 'turismo.jpg',
  },
  {
    'title': 'Instituciones',
    'img': 'institucion.jpg',
  },
  {
    'title': 'Museos',
    'img': 'museo.jpg',
  },


];


