import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'dimensions.dart';

final robotoRegular = TextStyle(
  fontFamily: 'Averta',
  fontWeight: FontWeight.w400,
  fontSize: Dimensions.fontSizeDefault,
);

final robotoMedium = TextStyle(
  fontFamily: 'Averta',
  fontWeight: FontWeight.w600,
  fontSize: Dimensions.fontSizeDefault,
);

final robotoBold = TextStyle(
  fontFamily: 'Averta',
  fontWeight: FontWeight.w700,
  fontSize: Dimensions.fontSizeDefault,
);

final robotoBlack = TextStyle(
  fontFamily: 'Averta',
  fontWeight: FontWeight.w900,
  fontSize: Dimensions.fontSizeDefault,
);


final BoxDecoration riderContainerDecoration = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(Dimensions.radiusSmall)),
    color: Theme.of(Get.context!).primaryColor.withOpacity(0.1), shape: BoxShape.rectangle,
);