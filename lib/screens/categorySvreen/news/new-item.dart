import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/styles/Theme.dart';

import '../../../models/NewsResponse.dart';

class NewsItem extends StatelessWidget {

   News news;
   NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(12) ,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
              child: CachedNetworkImage(
                imageUrl:news.urlToImage??'',
                placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      color: MyTheme.primary,
                    )),
                errorWidget: (context, url, error) => Icon(Icons.error),
              )),
          SizedBox(height: 10,),
          Text(news.author??'',style:Theme.of(context).textTheme.bodyLarge!
              .copyWith(fontSize: 32,color:Colors.grey ) ,),
          SizedBox(height: 10,),
          Text(news.title??'',style:Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10,),
          Text(news.publishedAt??'',style:Theme.of(context).textTheme.bodySmall!
              .copyWith(color:Colors.grey),textAlign: TextAlign.end,),
        ],
      ),
    );
  }
}
