import 'package:flutter/material.dart';

import '../configuration/style.dart';

class WidgetMethod {
  TextSpan kMethodTextSpan({required String kString, required Color kColor}) =>
      TextSpan(
        text: kString,
        style: kPoppinsMediumBold.copyWith(
          color: kColor,
          fontSize: 16,
        ),
      );
}
