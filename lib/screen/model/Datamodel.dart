class DataModel {

  String ?Title ;
  int ? Year;
  String ? Rated;
  int ? Released;
  int ?Runtime;
  String? Genre;
  String?Director;
  String ?Writer;
  String? Actors;
  String?Plot;
  String? Language,Country,Awards,Poster;
  int ? Metascore;
  double? imdbRating;
  int? imdbVotes,imdbID;
  String? Type;
  int?DVD;
  String?BoxOffice;
  String?Production;
  String?Website;
  String? Response;


  DataModel({
   this.Response,
   this.Actors,
   this.Awards,
    this.BoxOffice,
    this.Country,
    this.Director,
    this.DVD,
    this.Genre,
    this.imdbID,
    this.imdbRating,
    this.imdbVotes,
    this.Language,
    this.Metascore,
    this.Plot,
    this.Poster,
    this.Production,
    this.Rated,
    this.Released,
    this.Runtime,
    this.Title,
    this.Type,
    this.Website,
    this.Writer,
    this.Year,
  });



  factory DataModel.fromJson(Map json)
  {
    return DataModel(
      Actors: json['Actors'],
      Awards: json['Awards'],
      BoxOffice: json['BoxOffice'],
      Country: json['Country'],
      Director: json['Director'],
      DVD: json['DVD'],
      Genre: json['Genre'],
      imdbID: json['imdbID'],
      imdbRating: json['imdbRating'],
      imdbVotes: json['imdbVotes'],
      Language: json['Language'],
      Metascore: json['Metascore'],
      Plot: json['Plot'],
      Poster: json['Poster'],
      Production: json['Production'],
      Rated: json['Rated'],
      Released: json['Released'],
      Response: json['Response'],
      Runtime: json['Runtime'],
      Title: json['Title'],
      Type: json['Type'],
      Website: json['Website'],
      Writer: json['Writer'],
      Year: json['Year'],
    );
  }






}