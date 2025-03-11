import 'package:flutter/material.dart';

abstract class AppInsets {
  double get padding;
}

class LargeInsets extends AppInsets {
  @override
  double get padding => 80;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;
}
