import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http;

class ApiServer extends ChangeNotifier{

  Future<String?> Data()
  async {

    String api ="https://www.omdbapi.com/?i=tt3896198&apikey=3ce67d14";

    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);

    if (response.statusCode==200)
    {
      return response.body;
    }
    return null;
  }


}