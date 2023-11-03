import 'package:flutter/material.dart';

import '../../models/category-model.dart';
import 'categryItem.dart';

class CatgoryFragmnt extends StatelessWidget {
  Function onCategryClick;
  var caregoriesList=Catgrymodel.getcategory();
  CatgoryFragmnt({required this.onCategryClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Pick your category\nof interests :-',
              style:Theme.of(context).textTheme.bodyMedium),
          Expanded(
             child: GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing:18 ,
                  mainAxisSpacing: 18,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      onCategryClick(caregoriesList[index]);
                    },
                     child: CatgoryItem(
                      catgry: caregoriesList[index],
                        index: index,),
                  );
                },
                itemCount: caregoriesList.length,),
          )
        ],
      ),
    );
  }
}
