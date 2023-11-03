import 'package:flutter/material.dart';
import 'package:news_app/models/SourceResponse.dart';

import '../../Api/Api-manager.dart';

class CatgrydetalsViewmodel extends ChangeNotifier{
  //hold data,,handle logic
  List<Source>?sourceList;
  getSource(String categryId)async{
    try{
      var sourceresponse=await ApiFunctions.getsources(categryId);
      if(sourceresponse.status=='error'){return sourceresponse.message??'';}
      else
        {sourceList=sourceresponse.sources;}
    } catch(e){
        throw e;
     }

  }

}