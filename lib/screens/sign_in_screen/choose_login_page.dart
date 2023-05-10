import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gora_app/widget/widgets.dart';
import '../../configuration/configuration.dart';
import '../../configuration/icons.dart';
import '../../configuration/routes.dart';
import '../../configuration/style.dart';
import '../../functions/functions.dart';

class ChooseLogin extends StatelessWidget {
  const ChooseLogin({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockX! * 4.45,
            vertical: SizeConfig.blockY! * 1.45,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      WidgetIconButton(
                        kIcon: kExitIcon,
                        onPress: () {
                          NavFunctions.exitApp(context);
                        },
                      ),
                      SizedBox(width: SizeConfig.blockX! * 5.56),
                      Text(
                        "Back to Home",
                        style: kPoppinsMediumBold.copyWith(
                            fontSize: 17, color: kGrey),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockY! * 4),
                  Text(
                    "Login or sign up.",
                    style: kPoppinsBold.copyWith(
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockY! * 10.5),

                  // Google Sign in
                  SizedBox(
                    height: 48,
                    child: WidgetElevatedButtonTwo(
                        kIcon: kGoogleIcon,
                        onPressed: () {},
                        kColorText: kBlack,
                        kColorButton: kWhite,
                        kName: "Google"),
                  ),
                  SizedBox(
                    height: SizeConfig.blockY! * 2.75,
                  ),

                  // Facebook Sign in
                  SizedBox(
                    height: 48,
                    child: WidgetElevatedButtonTwo(
                        kIcon: kFacebookIcon,
                        onPressed: () {},
                        kColorText: kBlack,
                        kColorButton: kWhite,
                        kName: "Facebook"),
                  ),
                  SizedBox(
                    height: SizeConfig.blockY! * 2.75,
                  ),

                  // Phone Number Sign in
                  SizedBox(
                    height: 48,
                    child: WidgetElevatedButtonTwo(
                        kIcon: kPhoneIcon,
                        onPressed: () {},
                        kColorText: kBlack,
                        kColorButton: kWhite,
                        kName: "Phone Number"),
                  ),
                  SizedBox(
                    height: SizeConfig.blockY! * 2.75,
                  ),

                  // Email
                  SizedBox(
                    height: 48,
                    child: WidgetElevatedButtonTwo(
                        kIcon: kEmailIcon,
                        onPressed: () {
                          Navigator.of(context).pushNamed(loginEmailPageRoute);
                        },
                        kColorText: kBlack,
                        kColorButton: kWhite,
                        kName: "Email"),
                  ),

                  // Terms of Use
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text.rich(
                  TextSpan(
                    style: kPoppinsMediumBold.copyWith(
                      color: kGrey,
                      fontSize: 10,
                    ),
                    children: <InlineSpan>[
                      const TextSpan(
                          text:
                              'By signing up or logging in, you acknowledge and agree to Gora’s '),
                      const TextSpan(
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                          text: 'General Terms of Use'),
                      const TextSpan(text: ' and '),
                      TextSpan(
                          style: const TextStyle(
                              decoration: TextDecoration.underline),
                          text: 'Privacy Policy',
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
