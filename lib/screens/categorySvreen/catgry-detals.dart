import 'package:flutter/material.dart';
import 'package:news_app/styles/Theme.dart';
import 'package:provider/provider.dart';

import '../../Api/Api-manager.dart';
import '../../models/category-model.dart';
import 'categry-details-viewmodel.dart';
import 'tabs.dart';

class CatgryDetails extends StatefulWidget {
  static const String routeName='Catgry-detals';
  Catgrymodel categry;
   CatgryDetails({required this.categry});

  @override
  State<CatgryDetails> createState() => _CatgryDetailsState();
}

class _CatgryDetailsState extends State<CatgryDetails> {
  CatgrydetalsViewmodel viewmodel=CatgrydetalsViewmodel();
  @override
  Widget build(BuildContext context) {
    return// ChangeNotifierProvider(
      //  create: (context) => viewmodel,



       FutureBuilder(
          future: ApiFunctions.getsources(widget.categry.id),
          builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.waiting)
                {return Center(
                  child: CircularProgressIndicator(color:Theme.of(context).primaryColor),
                );}
              else if(snapshot.hasError)
                {return Text('error happend');}

              if(snapshot.data!.status!='ok')
                {return Text(snapshot.data!.message??'');}

              var sourceList=snapshot.data!.sources??[];
              return Tabs(sourceList:sourceList);
          }
      // )
    );
  }
}
