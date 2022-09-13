import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest/model/language.dart';

class languageController{
  List<Languages> langs = [];
var jsonResult;
var pak,british,arab;
  loadJson() async {
    //Note if we use any kind of api the request should look alike this
    //rest of proccess will remain same
    // var data = await http.Request(
    //     'GET',
    //     Uri.parse(
    //         'URL'));

    var data = await rootBundle.loadString('Languages/languages.json');
    jsonResult = json.decode(data);
    var langData = jsonResult[0]['languages'];
    for (var lang in langData) {
      print(lang);
        langs.add(Languages.fromJson(lang));
    }


    // Note we can simple use Listview builder there but the list is too small thats why i use just a simple search
    for (var contry in langs){
      if(contry.contry=='pak'){
        pak=contry.word;
        print(pak);
      }
      else  if(contry.contry=='british'){
        british=contry.word;
        print(british);

      }
      else if(contry.contry=='arab'){
        arab=contry.word;
        print(arab);

      }
    }

  }


}