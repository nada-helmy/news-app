import 'package:flutter/material.dart';

class Catgrymodel{
  String id;
  String image;
  String title;
  Color bkgrond_clor;

  Catgrymodel({required this.id,required this.image,
               required this.title,required this.bkgrond_clor});

  /*function to get data in category which i choose*/
  /*      */
 static List<Catgrymodel>getcategory(){
      return [
        Catgrymodel(id:'sports', image: 'assets/imgs/sports.png',
                     title: 'Sports', bkgrond_clor:Colors.red),
        Catgrymodel(id:'general', image: 'assets/imgs/Politics.png',
            title: 'General', bkgrond_clor:Colors.blue.shade900),
        Catgrymodel(id:'health', image: 'assets/imgs/health.png',
            title: 'Health', bkgrond_clor:Colors.pinkAccent),
        Catgrymodel(id:'business', image: 'assets/imgs/bussines.png',
            title: 'Business', bkgrond_clor:Colors.brown.shade400),
        Catgrymodel(id:'entertainment', image: 'assets/imgs/environment.png',
            title: 'Entertainment', bkgrond_clor:Colors.green.shade400),
        Catgrymodel(id:'science', image: 'assets/imgs/science.png',
            title: 'Science', bkgrond_clor:Colors.yellowAccent.shade400),
      ];
 }
}