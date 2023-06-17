import 'package:book_my_guide/src/constants/color.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 230,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: myCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Image(
                      image: AssetImage(bookmarkIcon),
                      width: 30.0,
                    )),
                    Flexible(
                      child: Image(
                        image: AssetImage(bannerVegetables),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  txtBannerTitle,
                  style: txtTheme.headlineMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  txtBannerSubtitle,
                  style: txtTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: 230,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: myCardBgColor),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Image(
                          image: AssetImage(bookmarkIcon),
                          width: 30.0,
                        )),
                        Flexible(
                            child: Image(
                          image: AssetImage(bannerVegetables),
                        )),
                      ],
                    ),
                    Text(
                      txtBannerTitle,
                      style: txtTheme.headlineMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      txtBannerSubtitle,
                      style: txtTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {}, child: const Text("View All"))),
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
