import 'package:bppshop/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


customCircularProgressIndicator(){
  return Center(
    child: SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: primaryOrange,
          ),
        );
      },
    ),
  );
}

