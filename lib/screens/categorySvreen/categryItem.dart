import 'package:flutter/material.dart';
import 'package:news_app/styles/Theme.dart';

import '../../models/category-model.dart';

class CatgoryItem extends StatelessWidget {
  Catgrymodel catgry;
  int index;
  CatgoryItem({required this.catgry,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: catgry.bkgrond_clor,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(20) ,
          topRight:Radius.circular(20) ,
          bottomLeft:Radius.circular(index%2==0?20:0) ,
          bottomRight:Radius.circular(index%2!=0?0:20) ,
        )
      ),
      child:Column(
        children: [
          Image.asset(catgry.image,height:MediaQuery.of(context).size.height*.15 ,),
          Text(catgry.title,style:Theme.of(context).textTheme.bodyMedium!
              .copyWith(color: MyTheme.white) ,),
        ],
      ) ,
    );
  }
}
