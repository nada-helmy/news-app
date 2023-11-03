import 'package:flutter/material.dart';
import 'package:news_app/styles/Theme.dart';
import '../../../models/SourceResponse.dart';
import '../../../Api/Api-manager.dart';
import 'new-item.dart';

class FutureNews extends StatelessWidget {
  Source source;
  FutureNews({required this.source});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiFunctions.getNewsbyId(source.id??''),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(color:MyTheme.primary),);}
          else if(snapshot.hasError){
            return Text('error');
          }
          if(snapshot.data!.status!='ok'){
            return Text(snapshot.data!.message??'');
          }
          var newsList=snapshot.data!.articles??[];
          return Expanded(
             child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsItem(news:newsList[index] ,);
                },
              itemCount: newsList.length,
            ),
          );
        },);
  }
}
