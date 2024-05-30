import 'dart:math';
import 'package:empty_widget/src/helper.dart';
import 'package:empty_widget/src/utility.dart';
import 'package:flutter/material.dart';
part 'images.dart';

/// {@tool snippet}
///
/// This example shows how to use [EmptyWidget]
///
///  ``` dart
/// EmptyWidget(
///   image: null,
///   packageImage: PackageImage.Image_1,
///   title: 'No Notification',
///   subTitle: 'No  notification available yet',
///   titleTextStyle: TextStyle(
///     fontSize: 22,
///     color: Color(0xff9da9c7),
///     fontWeight: FontWeight.w500,
///   ),
///   subtitleTextStyle: TextStyle(
///     fontSize: 14,
///     color: Color(0xffabb8d6),
///   ),
/// )
/// ```
/// {@end-tool}

class EmptyWidget extends StatefulWidget {
  EmptyWidget({
    this.title,
    this.subTitle,
    this.image,
    this.subtitleTextStyle,
    this.titleTextStyle,
    this.packageImage,
    this.hideBackgroundAnimation = false,
  });

  /// Display images from project assets
  final String? image; /*!*/

  /// Display image from package assets
  final PackageImage? packageImage; /*!*/

  /// Set text for subTitle
  final String? subTitle; /*!*/

  /// Set text style for subTitle
  final TextStyle? subtitleTextStyle; /*!*/

  /// Set text for title
  final String? title; /*!*/

  /// Text style for title
  final TextStyle? titleTextStyle; /*!*/

  /// Hides the background circular ball animation
  ///
  /// By default `false` value is set
  final bool? hideBackgroundAnimation;

  @override
  State<StatefulWidget> createState() => _EmptyListWidgetState();
}

class _EmptyListWidgetState extends State<EmptyWidget>
    with TickerProviderStateMixin {
  // String title, subTitle,image = 'assets/images/emptyImage.png';

  late AnimationController _backgroundController;

  late Animation _imageAnimation; /*!*/
  AnimationController? _imageController; /*!*/
  late PackageImage? _packageImage; /*!*/
  TextStyle? _subtitleTextStyle; /*!*/
  TextStyle? _titleTextStyle; /*!*/
  late AnimationController _widgetController; /*!*/

  @override
  void dispose() {
    _backgroundController.dispose();
    _imageController!.dispose();
    _widgetController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _backgroundController = AnimationController(
        duration: const Duration(minutes: 1),
        vsync: this,
        lowerBound: 0,
        upperBound: 20)
      ..repeat();
    _widgetController = AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
        lowerBound: 0,
        upperBound: 1)
      ..forward();
    _imageController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
    _imageAnimation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _imageController!, curve: Curves.linear),
    );
    super.initState();
  }

  animationListner() {
    if (_imageController == null) {
      return;
    }
    if (_imageController!.isCompleted) {
      setState(() {
        _imageController!.reverse();
      });
    } else {
      setState(() {
        _imageController!.forward();
      });
    }
  }

  Widget _imageWidget() {
    bool isPackageImage = _packageImage != null;
    return Expanded(
      flex: 3,
      child: AnimatedBuilder(
        animation: _imageAnimation,
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(
            offset: Offset(
                0,
                sin(_imageAnimation.value > .9
                    ? 1 - _imageAnimation.value
                    : _imageAnimation.value)),
            child: child,
          );
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            isPackageImage ? _packageImage.encode()! : widget.image!,
            fit: BoxFit.contain,
            package: isPackageImage ? 'empty_widget' : null,
          ),
        ),
      ),
    );
  }

  Widget _imageBackground() {
    return Container(
      width: EmptyWidgetUtility.getHeightDimention(
          context, EmptyWidgetUtility.fullWidth(context) * .95),
      height: EmptyWidgetUtility.getHeightDimention(
          context, EmptyWidgetUtility.fullWidth(context) * .95),
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          offset: Offset(0, 0),
          color: Color(0xffe2e5ed),
        ),
        BoxShadow(
            blurRadius: 30,
            offset: Offset(20, 0),
            color: Color(0xffffffff),
            spreadRadius: -5),
      ], shape: BoxShape.circle),
    );
  }

  Widget _shell({Widget? child}) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxHeight > constraints.maxWidth) {
        return Container(
          height: constraints.maxWidth,
          width: constraints.maxWidth,
          child: child,
        );
      } else {
        return child!;
      }
    });
  }

  Widget _shellChild() {
    _titleTextStyle = widget.titleTextStyle ??
        Theme.of(context)
            .typography
            .dense
            .headlineSmall!
            .copyWith(color: Color(0xff9da9c7));
    _subtitleTextStyle = widget.subtitleTextStyle ??
        Theme.of(context)
            .typography
            .dense
            .bodyLarge!
            .copyWith(color: Color(0xffabb8d6));
    _packageImage = widget.packageImage;

    bool anyImageProvided = widget.image == null && _packageImage == null;

    return FadeTransition(
      opacity: _widgetController,
      child: Container(
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              if (!widget.hideBackgroundAnimation!)
                RotationTransition(
                  child: _imageBackground(),
                  turns: _backgroundController,
                ),
              LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.maxWidth,
                  width: constraints.maxWidth - 30,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      anyImageProvided
                          ? SizedBox()
                          : Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                      anyImageProvided ? SizedBox() : _imageWidget(),
                      Column(
                        children: <Widget>[
                          CustomText(
                            msg: widget.title,
                            style: _titleTextStyle,
                            context: context,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                              msg: widget.subTitle,
                              style: _subtitleTextStyle,
                              context: context,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center)
                        ],
                      ),
                      anyImageProvided
                          ? SizedBox()
                          : Expanded(
                              flex: 1,
                              child: Container(),
                            )
                    ],
                  ),
                );
              }),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _shell(child: _shellChild());
  }
}
