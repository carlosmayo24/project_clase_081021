import 'package:flutter/material.dart';

void main() {
  runApp( new Myapp());
}

class Myapp extends StatelessWidget
{
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  => MaterialApp
    (
      home: Scaffold
        (
          appBar: AppBar(title: Text('TEP'),),
          body:
          Padding
            (padding: const EdgeInsets.all(8.0),
            child: ClipPath
              (
              clipper: hexagono(),
              child: Image.network('https://mascotafiel.com/wp-content/uploads/2014/05/perro-pitbull-portada.jpg'),
              ),
            )
        ),





    );

}

class hexagono extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addPolygon
      ([
      Offset(0, size.height / 2),
      Offset(size.width * 1 / 3, size.height),
      Offset(size.width * 2 / 3, size.height),
      Offset(size.width, size.height / 2),
      Offset(size.width * 2 / 3, 0),
      Offset(size.width * 1/3, 0)
    ], true);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(hexagono c) => false;
}