import 'package:flutter/material.dart';
import 'package:flutter_gora_app/functions/functions.dart';
import 'package:flutter_gora_app/widget/widgets.dart';
import '../../configuration/configuration.dart';
import '../../configuration/icons.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(children: [
        Row(
          children: [
            WidgetIconButton(
                kIcon: kBackIcon,
                onPress: () {
                  NavFunctions.goBack(context);
                }),
            SizedBox(width: SizeConfig.blockX! * 5.56),
          ],
        ),
      ]),
    );
  }
}
