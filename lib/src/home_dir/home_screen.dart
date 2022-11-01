import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
     children: [
         Text("Heading",style: Theme.of(context).textTheme.headline2,),
         Text('Sub-Headings',style: Theme.of(context).textTheme.subtitle2),
         Text("Paragraph",style: Theme.of(context).textTheme.bodyText1),
         ElevatedButton(onPressed: (){} , child: Text("Elevated buttton")),
         OutlinedButton(onPressed: (){} , child: Text("Outlined Button")),

         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Image(image: AssetImage("assets/images/team.png")),
         ),

     ],
        ),
      )

    );
  }
}
