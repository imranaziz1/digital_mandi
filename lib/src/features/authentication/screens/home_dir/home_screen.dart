import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                "Heading",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text('Sub-Headings',
                  style: Theme.of(context).textTheme.titleSmall),
              Text("Paragraph", style: Theme.of(context).textTheme.bodyLarge),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Elevated buttton")),
              OutlinedButton(
                  onPressed: () {}, child: const Text("Outlined Button")),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(image: AssetImage("assets/images/team.png")),
              ),
            ],
          ),
        ));
  }
}
