library empty_widget;
import 'dart:math';

import 'package:flutter/material.dart';

class EmptyListWidget extends StatefulWidget{
  EmptyListWidget({ @required this.title, @required this.subTitle,@required this.image});

  final String image ;
  final String subTitle;
  final String title;

  @override
  State<StatefulWidget> createState() => _EmptyListWidgetState();
}
class _EmptyListWidgetState extends State<EmptyListWidget> with TickerProviderStateMixin{
  String title, subTitle,image = 'assets/images/emptyImage.png';

   AnimationController   _backgroundController;
   Animation _imageAnimation;
   AnimationController   _imageController;
   AnimationController   _widgetController;

   @override
  void dispose() {
      _backgroundController.dispose();
      _imageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
     title = widget.title  ;
     subTitle = widget.subTitle;
     image = widget.image ??  'assets/images/emptyImage.png';
     _backgroundController = AnimationController(duration: const Duration(minutes: 1),vsync: this,lowerBound: 0,upperBound: 20)..repeat();
     _widgetController = AnimationController(duration: const Duration(seconds: 1),vsync: this,lowerBound: 0,upperBound: 1)..forward();
     _imageController = AnimationController(duration: const Duration(seconds: 4),vsync: this,)..repeat();
     _imageAnimation = Tween<double>(begin: 0, end: 10).animate(CurvedAnimation(parent: _imageController,curve: Curves.linear), );
   

    super.initState();
  }

  animationListner(){
    if(_imageController == null){
      return ;
    }
    if(_imageController.isCompleted){
      setState(() {
        _imageController.reverse();
      });
    }
    else{
      setState(() {
        _imageController.forward();
      });
    }
  }

  Widget _emptyListimage(){
    
   return  
   AnimatedBuilder(
     animation: _imageAnimation,
     builder: (BuildContext context,Widget child){
       return Transform.translate(
         offset: Offset(0, sin( _imageAnimation.value >.9 ? 1 -  _imageAnimation.value : _imageAnimation.value)),
         child: child
       );
     },
     child: Image.asset(image,height: getHeightDimention(context, 170)),
   );
   
  }

  Widget _imageBackground(){
     return 
     Container(
          width: getHeightDimention(context,fullWidth(context) * .95),
          height: getHeightDimention(context,fullWidth(context) * .95),
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(offset: Offset(0, 0),color:Color(0xffe2e5ed),),
              BoxShadow(blurRadius:30,offset: Offset(20,0),color: Color(0xffffffff),spreadRadius:-5),
            ],
            shape: BoxShape.circle
          ),
        );  
  }

  double getHeightDimention(BuildContext context,double unit){
   if(fullHeight(context) <= 460.0){
    return unit / 1.5;
  }
  else {
    return getDimention(context, unit);
  }
  }

  double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  } 

 double getDimention(context, double unit){
    if(fullWidth(context) <= 360.0){
      return unit / 1.3;
    }
    else {
      return unit;
    }
  
  }

  double fullWidth(BuildContext context) {
      return MediaQuery.of(context).size.width;
  } 

  @override
  Widget build(BuildContext context) {
   return  FadeTransition(
     opacity: _widgetController,
     child:  Container(
     color: Color(0xfffafafa),
       child:Center(
         child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            RotationTransition(
              child: _imageBackground(),
              turns: _backgroundController,
            ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              _emptyListimage(),
               SizedBox(height: 20,),
               Text(title,style: Theme.of(context).typography.dense.display1.copyWith(color: Color(0xff9da9c7))),
               Text(subTitle,style: Theme.of(context).typography.dense.body2.copyWith(color: Color(0xffabb8d6)),),
           ],) ,
           
        ],)
       )
    ),
   );
  }
}

