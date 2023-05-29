
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(width: 4)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txtDashboardSearch,
            style: txtTheme.headline2
                ?.apply(color: Colors.grey.withOpacity(0.5)),
          ),
          const Icon(
            Icons.mic,
            size: 25,
          ),
        ],
      ),
    );
  }
}

