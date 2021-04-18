Custom_Empty widget is flutter custom widget which is designed to notify user about some event.


## empty_Widget  [![pub package](https://img.shields.io/pub/v/empty_widget?color=blue)](https://pub.dev/packages/empty_widget) [![GitHub stars](https://img.shields.io/github/stars/Thealphamerc/empty_widget?style=social)](https://github.com/login?return_to=%2FTheAlphamerc%2Fempty_widget)

## Getting Started
### 1. Add library to your pubspec.yaml

```yaml
dependencies:
  empty_widget: ^0.0.2
```

### 2. Import library in dart file

```dart

import 'package:empty_widget/empty_widget.dart';

```

Add image to assets.

```yaml
flutter:
  assets:
    - assets/images/userIcon.png
```


### 3. Use of EmptyListWidget

```dart
 EmptyListWidget(
   image: null,
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
 );
```
## Example

``` dart
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
      body: Container(
        alignment: Alignment.center,
        child: EmptyListWidget(
          image: null,
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
```

## Parameters and Value
###  Images
Image path can be assets image or null.

### title
title can be string or null

### subTitle
subTitle can be string or null

### packageImage
Available image assets in package ```Type``` : PackageImage
#### Values
* PackageImage.Image_1
* PackageImage.Image_2
* PackageImage.Image_3
* PackageImage.Image_4

### titleTextStyle
Text style of Title

### subtitleTextStyle
Text style of Subtitle

## Download App
<a href="https://github.com/TheAlphamerc/empty_widget/releases/download/v0.0.1/app-release.apk"><img src="https://playerzon.com/asset/download.png" width="200"></img></a>



## Screenshots

Screenshots               |  Screenshots  |  Screenshots |  Screenshots
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen1.jpg?raw=true)|![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen2.jpg?raw=true)|![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen3.jpg?raw=true) |![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen4.jpg?raw=true)



## Credits
Developed by sonu.sharma045@gmail.com

## Contributing
Feel free to help


