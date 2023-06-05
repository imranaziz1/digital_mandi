import 'package:book_my_guide/src/features/core/screens/widgets/post_app_bar.dart';
import 'package:book_my_guide/src/features/core/screens/widgets/post_bottom_bar.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/city6.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), child: PostAppBar()),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
