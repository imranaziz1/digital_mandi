import 'package:book_my_guide/src/constants/color.dart';
import 'package:book_my_guide/src/features/core/models/dashboard_categories/dashboard_categories_model.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategories.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            height: 45,
            width: 170,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appDarkColor,
                  ),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: txtTheme.headline6?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(
                        list[index].heading,
                        style: txtTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        list[index].subHeading,
                        style: txtTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // SizedBox(
                      //   height: defaultDashboardPadding,
                      // ),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
