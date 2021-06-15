import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/mask/mask.dart';

class GeneratedHeaderPicWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.0,
      height: 252,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: Mask.fromSVGPath(
                'M0 0L333 0L333 232.028C333 232.028 304.55 276.966 166.5 232.028C28.4496 187.089 0 232.028 0 232.028L0 0Z',
                child: Image.asset(
                  "assets/images/e06d3d833fcc4ea087327b921a2da604",
                  color: null,
                  fit: BoxFit.fill,
                  width: 333.0,
                  height: 250,
                  colorBlendMode: BlendMode.dstATop,
                ),
                offset: Offset(0.0, 0.0),
              ),
            )
          ]),
    );
  }
}
