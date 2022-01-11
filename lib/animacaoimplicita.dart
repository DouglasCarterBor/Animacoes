import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  @override
  _AnimacaoImplicitaState createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          padding: const EdgeInsets.all(1),
          width: _status ? 200 : 500,
          height: _status ? 200 : 500,
          color: _status ? Colors.black : Colors.black,
          duration: const Duration(milliseconds: 200),
          curve: Curves.elasticInOut,
          child: Image.asset("assets/logo3.png"),
        ),
        const Padding(padding: EdgeInsets.all(50)),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: _status ? MaterialStateProperty.all(Colors.black) : MaterialStateProperty.all(Colors.black),
          ),
            onPressed: (){
              setState(() {
              _status = !_status;
              });
            },
            child: const Text("Alterar"),
        ),
      ],
    );
  }
}
