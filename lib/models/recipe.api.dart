import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:omer/models/recipe.dart';

class RecipeApi {
  /* var unirest = require("unirest");

  var req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");

  req.query({
  "start": "0",
  "limit": "18",
  "tag": "list.recipe.popular"
  });

  req.headers({
  "x-rapidapi-host": "yummly2.p.rapidapi.com",
  "x-rapidapi-key": "47e77c98c6msh44a95afe579738dp1db562jsn7efbefb376eb",
  "useQueryString": true
  });

  */
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "feeds/list",
        {"start": "0", "limit": "18", "tag": "list.recipe.popular"});
    final response = await http.get(uri, headers: {
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "x-rapidapi-key": "47e77c98c6msh44a95afe579738dp1db562jsn7efbefb376eb",
      "useQueryString": "true"
    });
    var data = jsonDecode(response.body);
    List _temp =[];
    for(var i in data["feed"]){
      _temp.add(i["content"]["details"]);
    }
    return Recipe.recipesFromSnapshot(_temp);
  }

}
