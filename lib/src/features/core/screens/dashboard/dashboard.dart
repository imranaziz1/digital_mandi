import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/core/screens/widgets/appbar_widget.dart';
import 'package:book_my_guide/src/features/core/screens/widgets/banner_widget.dart';
import 'package:book_my_guide/src/features/core/screens/widgets/big_banner.dart';
import 'package:book_my_guide/src/features/core/screens/widgets/categories_widget.dart';
import 'package:book_my_guide/src/features/core/screens/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../chat_ui/chat_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const dashboardAppbar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        txtDashboardTitle,
                        style: txtTheme.bodyMedium,
                      ),
                      Text(
                        txtDashboardHeading,
                        style: txtTheme.displayMedium,
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Get.to(() => const ChatPage());
                      },
                      icon: const Icon(
                        Icons.chat,
                        size: 50,
                        color: Colors.green,
                      )),
                ],
              ),

              const SizedBox(
                height: defaultDashboardPadding,
              ),
              //Search Box
              searchWidget(txtTheme: txtTheme),
              const SizedBox(
                height: defaultDashboardPadding,
              ),
              Categories(txtTheme: txtTheme),
              const SizedBox(
                height: defaultDashboardPadding,
              ),
              BannerWidget(txtTheme: txtTheme),
              const SizedBox(
                height: defaultDashboardPadding,
              ),
              Text(
                "Today's Deal...",
                style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
              ),
              BigBanner(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}
