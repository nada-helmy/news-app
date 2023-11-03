import 'package:flutter/material.dart';

import '../../models/SourceResponse.dart';
import '../../styles/Theme.dart';

class TabItem extends StatelessWidget {
   bool isselected;
   Source source;
  TabItem({required this.isselected,required this.source});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical:6,horizontal:10 ),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:MyTheme.primary,
          width: 4,
        ),
        color: isselected?Theme.of(context).primaryColor:Colors.transparent,
      ) ,
      child: Text('${source.name}',style:TextStyle(
        color:isselected?Colors.white:Theme.of(context).primaryColor ,
        fontSize: 20,
      ) ),
    );
  }
}
