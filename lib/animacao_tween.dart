import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({Key? key}) : super(key: key);

  @override
  _AnimacaoTweenState createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {

  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);


  @override
  Widget build(BuildContext context) {
    return Center(



      // child: TweenAnimationBuilder(
      //   duration: Duration(seconds: 2),
      //   tween: Tween<double>(begin: 0, end: 6.28),
      //   builder: (BuildContext context, double angulo, Widget? widget){
      //   return Transform.rotate(
      //     angle: angulo,
      //     child: Image.asset("assets/logo2.png"),
      //   );
      //   },
      // ),

      // child: TweenAnimationBuilder(
      //   duration: Duration(milliseconds: 200),
      //   tween: Tween<double>(begin: 50, end: 180),
      //   builder: (BuildContext context, double largura, Widget? widget){
      //   return Container(
      //     color: Colors.green,
      //     width: largura,
      //     height: 60,
      //   );
      //   },
      // ),

      child: TweenAnimationBuilder(
        duration: Duration(milliseconds: 8000),
        tween: colorTween,
        child: Image.asset("assets/estrelas.jpg"),
        builder: (BuildContext context, Color? cor, Widget? widget){
          return ColorFiltered(
              colorFilter: ColorFilter.mode(cor!, BlendMode.overlay),
              child: widget,
          );
        },
      ),


    );
  }
}