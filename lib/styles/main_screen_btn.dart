import 'package:flutter/material.dart';

final BoxDecoration kBancoBtnTypeDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(30),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.4),
      spreadRadius: 2.5,
      blurRadius: 10,
      offset: Offset(0, 2), // changes position of shadow
    ),
  ],
);

final BoxDecoration kSelectedBancoBtnTypeDecoration = BoxDecoration(
  color: Colors.lightBlue,
  borderRadius: BorderRadius.circular(30),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.4),
      spreadRadius: 2.5,
      blurRadius: 10,
      offset: Offset(0, 2), // changes position of shadow
    ),
  ],
);
