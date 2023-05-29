
import 'package:book_my_guide/src/constants/color.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class BigBanner extends StatelessWidget {
  const BigBanner({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 200,
      child: ListView(
        children: [
          SizedBox(
            // width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 05,top: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: myCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy one get one free!", style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        Flexible(child: Image(image: AssetImage(bannerVegetables), height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(shape: const CircleBorder()),onPressed: (){},child: Icon(Icons.play_arrow)),
                        SizedBox(width: defaultDashboardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Video Animation", style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Watch Video for more information",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),

                          ],
                        ),

                      ],

                    ),
                  ],

                ),

              ),
            ),
          ),
          SizedBox(
            // width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 05,top: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: myCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy one get one free!", style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        Flexible(child: Image(image: AssetImage(bannerVegetables), height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(shape: const CircleBorder()),onPressed: (){},child: Icon(Icons.play_arrow)),
                        SizedBox(width: defaultDashboardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Video Animation", style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Watch Video for more information",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),

                          ],
                        ),

                      ],

                    ),
                  ],

                ),

              ),
            ),
          ),
          SizedBox(
            // width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 05,top: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: myCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy one get one free!", style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        Flexible(child: Image(image: AssetImage(bannerVegetables), height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(shape: const CircleBorder()),onPressed: (){},child: Icon(Icons.play_arrow)),
                        SizedBox(width: defaultDashboardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Video Animation", style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Watch Video for more information",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),

                          ],
                        ),

                      ],

                    ),
                  ],

                ),

              ),
            ),
          ),
          SizedBox(
            // width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 05,top: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: myCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy one get one free!", style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        Flexible(child: Image(image: AssetImage(bannerVegetables), height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(shape: const CircleBorder()),onPressed: (){},child: Icon(Icons.play_arrow)),
                        SizedBox(width: defaultDashboardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Video Animation", style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Watch Video for more information",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),

                          ],
                        ),

                      ],

                    ),
                  ],

                ),

              ),
            ),
          ),
          SizedBox(
            // width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 05,top: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: myCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy one get one free!", style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        Flexible(child: Image(image: AssetImage(bannerVegetables), height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(shape: const CircleBorder()),onPressed: (){},child: Icon(Icons.play_arrow)),
                        SizedBox(width: defaultDashboardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Video Animation", style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Watch Video for more information",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),

                          ],
                        ),

                      ],

                    ),
                  ],

                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}
