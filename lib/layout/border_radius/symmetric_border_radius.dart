import 'package:flutter/material.dart';

class SymmetricBorderRadius extends BorderRadius {
  const SymmetricBorderRadius.horizonatal(Radius ammount)
      : super.horizontal(
          left: ammount,
          right: ammount,
        );
}
