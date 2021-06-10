## Empty Widget  


[![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/Thealphamerc/empty_widget)
![GitHub last commit](https://img.shields.io/github/last-commit/Thealphamerc/empty_widget) 
![GitHub](https://img.shields.io/github/license/TheAlphamerc/empty_widget) 
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Thealphamerc/empty_widget.svg)](https://github.com/Thealphamerc/empty_widget)
[![GitHub stars](https://img.shields.io/github/stars/Thealphamerc/empty_widget?style=social)](https://github.com/login?return_to=https://github.com/FTheAlphamerc/empty_widget) 
![GitHub forks](https://img.shields.io/github/forks/TheAlphamerc/empty_widget?style=social)

[![pub package](https://img.shields.io/pub/v/empty_widget?color=blue)](https://pub.dev/packages/empty_widget) 
[![Likes](https://badges.bar/empty_widget/likes)](https://pub.dev/packages/empty_widget/score)
[![Popularity](https://badges.bar/empty_widget/popularity)](https://pub.dev/packages/empty_widget/score)
[![Pub points](https://badges.bar/empty_widget/pub%20points)](https://pub.dev/packages/empty_widget/score)

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FTheAlphamerc%2Fempty_widget&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

Custom_Empty widget is flutter custom widget which is designed to notify user about some event.



## Screenshots

Screenshots               |  Screenshots  |  Screenshots |  Screenshots
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen1.jpg?raw=true)|![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen2.jpg?raw=true)|![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen3.jpg?raw=true) |![](https://github.com/TheAlphamerc/empty_widget/blob/master/screenshots/screen4.jpg?raw=true)

## Getting Started
### 1. Add library to your pubspec.yaml

```yaml
dependencies:
  empty_widget: ^0.0.3
```

### 2. Import library in dart file

```dart

import 'package:empty_widget/empty_widget.dart';

```


### 3. Use of EmptyWidget

```dart
 EmptyWidget(
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
        child: EmptyWidget(
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
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| title | `string` |  Set text for title |
| subTitle | `string` |  Set text for subtitle |
| image | `string` | Display images from project assets |
| packageImage | `PackageImage`| Display image from package assets |
| titleTextStyle| `TextStyle` |  Set text style for title|
| subtitleTextStyle| `TextStyle` | Set text style for subtitle|
| hideBackgroundAnimation| `bool` | Hides the background circular ball animation |

## Download Example App
<a href="https://github.com/TheAlphamerc/empty_widget/releases/download/v0.0.1/app-release.apk"><img src="https://playerzon.com/asset/download.png" width="200"></img></a>



## Pull Requests

I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request.

## Created & Maintained By

[Sonu Sharma](https://github.com/TheAlphamerc) ([Twitter](https://www.twitter.com/TheAlphamerc)) ([Youtube](https://www.youtube.com/user/sonusharma045sonu/))
([Insta](https://www.instagram.com/_sonu_sharma__))  ![Twitter Follow](https://img.shields.io/twitter/follow/thealphamerc?style=social)

> If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of :coffee:
>

> * <a href="https://www.buymeacoffee.com/thealphamerc"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" width="170"></a>
> * [PayPal](https://www.paypal.me/TheAlphamerc/)


## Visitors Count

<img align="left" src = "https://profile-counter.glitch.me/empty_widget/count.svg" alt ="Loading">

