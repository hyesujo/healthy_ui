import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/yellow.jpg'),
            fit: BoxFit.cover
        ),
        color: Colors.amber,
        borderRadius:
        BorderRadius.only(
            bottomLeft:Radius.circular(50)
        ),
      ),
    );
  }
}
