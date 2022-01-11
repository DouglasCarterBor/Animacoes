import 'package:flutter/material.dart';

class AnimacoesExplicitasConstruidas extends StatefulWidget {
  const AnimacoesExplicitasConstruidas({Key? key}) : super(key: key);

  //final Duration duration;

  @override
  _AnimacoesExplicitasConstruidasState createState() => _AnimacoesExplicitasConstruidasState();
}

class _AnimacoesExplicitasConstruidasState extends State<AnimacoesExplicitasConstruidas>
with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  AnimationStatus? _animationStatus;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(seconds: 5),
         vsync: this
    )..repeat()..addStatusListener((status) {
      _animationStatus = status;
    });

  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Column(children: [
        Container(
          width: 300,
          height: 400,
          child: RotationTransition(
            alignment: Alignment.center,
            child: Image.asset("assets/logo3.png"),
            turns: _animationController,
          ),
        ),
        ElevatedButton(
            onPressed: (){

              if(_animationStatus == AnimationStatus.dismissed){
                _animationController.repeat();
              }else{
                _animationController.reverse();
              }

              // if(_animationController.isAnimating){
              //   _animationController.stop();
              // }else{
              //   _animationController.repeat();
              // }

            },
            child: Text("Pressione"),
        ),
      ],),
    );
  }
}
