## empty_Widget  [![pub package](https://img.shields.io/pub/v/empty_widget?color=blue)](https://pub.dev/packages/empty_widget)

### 1. Add library to your pubspec.yaml



```yaml
dependencies:
...
  empty_widget: ^0.0.1-dev.1 # such as version, you need use the latest version of pub.
...
```

### 2. Import library in dart file

```dart
import 'package:empty_widget.dart';
```

### 3. Use of EmptyListWidget

```dart
EmptyListWidget(
   title: 'No Notification',
   subTitle: 'No  notification available yet',
   image: 'assets/images/userIcon.png',
   titleTextStyle: Theme.of(context).typography.dense.display1.copyWith(color: Color(0xff9da9c7)),
   subtitleTextStyle: Theme.of(context).typography.dense.body2.copyWith(color: Color(0xffabb8d6))
);
```
## Example

```
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
  MyHomePage({Key key, this.title}) : super(key: key);
 final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            height: 500,
            width:350,
          child:  EmptyListWidget(
            image : null,
            packageImage: PackageImage.Image_1,
            title: 'No Notification',
            subTitle: 'No  notification available yet',
            titleTextStyle: Theme.of(context).typography.dense.display1.copyWith(color: Color(0xff9da9c7)),
            subtitleTextStyle: Theme.of(context).typography.dense.body2.copyWith(color: Color(0xffabb8d6))
         ),
        )
      ),
    );
  }
}
```

### Parameters and Value
#####  Images
Image path can be assets image or null.

#### title
title can be string or null

#### subTitle
subTitle can be string or null

#### packageImage
Available image assets in package ```Type``` : PackageImage
###### Values
* PackageImage.Image_1
* PackageImage.Image_2
* PackageImage.Image_3
* PackageImage.Image_4

#### titleTextStyle
Text style of Title

#### subtitleTextStyle
Text style of Subtitle

## Credits
Developed by sonu.sharma045@gmail.com

## Contributing
Feel free to help


