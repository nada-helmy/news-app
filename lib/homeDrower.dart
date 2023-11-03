import 'package:flutter/material.dart';
import 'package:news_app/styles/Theme.dart';

class HomeDrower extends StatelessWidget {
  Function onDrowerItemClick;
  static int categries=1;
  static int settings=2;
  HomeDrower({required this.onDrowerItemClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment(.01, .3),
          height:MediaQuery.of(context).size.height*.19 ,
          width:double.infinity,
          color: MyTheme.primary,
          child: Text('New App!',style:Theme.of(context).textTheme.bodyLarge!
            .copyWith(color: MyTheme.white,fontSize: 40),textAlign: TextAlign.center,),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  onDrowerItemClick(HomeDrower.categries);
                },
                child: Row(
                  children: [
                    Icon(Icons.list,size: 34,color: MyTheme.black,),
                    SizedBox(width:5,),
                    Text('Categories',style:Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  onDrowerItemClick(HomeDrower.settings);
                },
                child: Row(
                  children: [
                    Icon(Icons.settings,size: 32,color: MyTheme.black,),
                    SizedBox(width:5,),
                    Text('Settings',style:Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
