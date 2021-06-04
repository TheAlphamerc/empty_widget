import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Empty widget demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Container(
        alignment: Alignment.center,
        child: EmptyWidget(
          // Image from project assets
          image: "assets/images/im_emptyIcon_1.png",

          /// Image from package assets
          /// Uncomment below line to use package assets
          packageImage: PackageImage.Image_1,
          title: 'No Notification',
          subTitle: 'No  notification available yet',
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Color(0xff9da9c7),
            fontWeight: FontWeight.w500,
          ),
          subtitleTextStyle: TextStyle(
            fontSize: 14,
            color: Color(0xffabb8d6),
          ),
        ),
      ),
    );
  }
}
