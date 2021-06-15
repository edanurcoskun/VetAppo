import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/mask/mask.dart';

class GeneratedHeaderPicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "assets/images/e8cbdc8ca2834a72b77dcfb8c50479d6",
                  color: null,
                  fit: BoxFit.fill,
                  colorBlendMode: BlendMode.dstATop,
                ),
                offset: Offset(0.0, 0.0),
              ),
            )
          ]),
    );
  }
}
