class MovieImage {
  String url;
  String title;

  MovieImage(this.url, this.title);
}

class Movie {
  String title;
  MovieImage coverImage;
  //List<GameImage> images;
  String description;
  String studio;

  Movie(this.title, this.coverImage, this.description, this.studio);
}

List<Movie> movies = [
  Movie(
    "Red One",
    MovieImage(
        "https://i.pinimg.com/236x/91/66/ca/9166caa30e028d06038c79e3bf81af31.jpg",
        ""),
    "",
    "Jake Casdan",
  ),
  Movie(
    "Smile 2",
    MovieImage(
        "https://static1.srcdn.com/wordpress/wp-content/uploads/2024/10/smile-2-official-poster.jpg",
        ""),
    "",
    "Parker Finn",
  ),
  Movie(
    "Uncharted",
    MovieImage(
        "https://th.bing.com/th/id/OIP.5nRzcJ-ZPii9WNLm3fICmQHaLG?rs=1&pid=ImgDetMain",
        ""),
    "",
    "Ruben Fleischer",
  ),
  Movie(
    "Venom The Last Dance",
    MovieImage(
        "https://th.bing.com/th/id/OIP.bmcS4RSVcdXOGU8Sm9ZlDwHaLH?rs=1&pid=ImgDetMain",
        ""),
    "",
    "Kelly Marcel",
  ),
  Movie(
    "Avenger Infinity War",
    MovieImage(
        "https://th.bing.com/th/id/R.6643a6baa39636a28362430a7b661e02?rik=zlZTpa7FmZFvbg&riu=http%3a%2f%2fwww.blackfilm.com%2fread%2fwp-content%2fuploads%2f2018%2f03%2fAvengers-Infinity-War-new-poster.jpg&ehk=jsSvmXCEEpifurzDZH1G%2bp2T6%2f1ubqZd%2bsC4lLrcbmo%3d&risl=&pid=ImgRaw&r=0",
        ""),
    "",
    "Joe Russel , Anthony Russel",
  ),
  Movie(
    "Venom",
    MovieImage(
        "https://th.bing.com/th/id/R.93769210c316b1c996d9e6ecb93a961c?rik=ZVFWhkpxwLEkAw&pid=ImgRaw&r=0",
        ""),
    "",
    "Ruben Fleischer",
  ),
];

List<Movie> serie = [
  Movie(
    "One Piece",
    MovieImage("https://images8.alphacoders.com/130/1300315.jpg", ""),
    "",
    "Netflix",
  ),
  Movie(
    "Stranger Thing",
    MovieImage(
        "https://th.bing.com/th/id/OIP.GD7nvI4PYbYZX5NGd4xZtAHaK-?rs=1&pid=ImgDetMain",
        ""),
    "",
    "Netflix",
  ),
  Movie(
    "The Flash",
    MovieImage(
        "https://th.bing.com/th/id/OIP.d327N07-9kGIXyMni0kdIQHaLH?rs=1&pid=ImgDetMain",
        ""),
    "",
    "CW",
  ),
  Movie(
    "Loki",
    MovieImage(
        "https://th.bing.com/th/id/OIP.3tfQaZSPWzqJfzCZwNTX0AHaDt?rs=1&pid=ImgDetMain",
        ""),
    "",
    "Disney",
  ),
  Movie(
    "Superman and Lois",
    MovieImage(
        "https://th.bing.com/th/id/R.f9b511e00dfd881bdb6bc41aa87df1bf?rik=A0tQS4RPXTqC1Q&pid=ImgRaw&r=0",
        ""),
    "",
    "CW",
  ),
  Movie(
    "Locke and Key",
    MovieImage(
        "https://th.bing.com/th/id/R.94f4d9fa9bdf2c1d04213b67d96b6d19?rik=jdrTiB2J1r8M0Q&riu=http%3a%2f%2foyster.ignimgs.com%2fwordpress%2fstg.ign.com%2f2019%2f12%2fLockeKey_Vertical_Teaser_RGB_EN-US-1.jpg&ehk=kuzXmx%2bE66sFb1N8NO4e1BGUtgR5W9mKBXw4HSqkMJs%3d&risl=&pid=ImgRaw&r=0",
        ""),
    "",
    "Netflix",
  ),
];

List<Movie> featuredmovies = [
  Movie(
    "Avatar",
    MovieImage(
        "https://th.bing.com/th/id/R.30ce11fca79138f3430f2f308af1a39b?rik=LwiYz1Av%2fXMu5g&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f38800000%2fAvatar-movie-poster-avatar-38807326-800-1185.jpg&ehk=dyvpsLZl%2bPDGs%2fPsf%2fODUMmCM7guVKcfej%2bxmuzKDqY%3d&risl=&pid=ImgRaw&r=0",
        ""),
    "",
    "Jame Cameron",
  ),
  Movie(
    "Titanic",
    MovieImage(
        "https://image.tmdb.org/t/p/original/UeFdEWlZp2E7n4asNl0UlKzhka.jpg",
        ""),
    "",
    "James Cameron",
  ),
  Movie(
    "Supernatural",
    MovieImage(
        "https://th.bing.com/th/id/OIP.sjXjrlzxEAT4kA_rP1LfXwHaLH?rs=1&pid=ImgDetMain",
        ""),
    "",
    "Warner Bros.",
  ),
  Movie(
    "Avengers : Endgame",
    MovieImage(
        "https://th.bing.com/th/id/OIP.L4xW2zTVkXkFE3DB_onLiQHaK-?rs=1&pid=ImgDetMain",
        ""),
    "",
    "Joe Russo , Anthony Russo",
  )
];
