import 'package:flutter/material.dart';

class MaisSobreAnimacoes extends StatefulWidget {
  const MaisSobreAnimacoes({Key? key}) : super(key: key);

  @override
  _MaisSobreAnimacoesState createState() => _MaisSobreAnimacoesState();
}

class _MaisSobreAnimacoesState extends State<MaisSobreAnimacoes>
with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
    );

    _animation = Tween<Offset>(
        begin: const Offset(0,0),
        end: const Offset(60,60)
    ).animate(_animationController);
  }

  //   _animation = Tween<double>(
  //     begin: 0,
  //     end: 1.6
  //   ).animate(_animationController);
  // }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

   _animationController.forward();

    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation,
        child: Stack(
          children: [
            Positioned(
              width: 180,
              height: 180,
              left: 0,
              top: 0,
              child: Image.asset("assets/logo3.png"),
            ),
          ],
        ),
        builder: (context, widget){

          return Transform.translate(
            offset: _animation.value,
            child: widget,
          );

          // return Transform.scale(
          //     scale: _animation.value,
          //      child: widget,
          // );

        // return Transform.rotate(
        //     angle: _animation.value,
        //   child: widget,
        // );


        },
      ),
    );
  }
}
