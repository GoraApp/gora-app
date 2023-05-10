import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gora_app/widget/widgets.dart';

import '../../configuration/configuration.dart';
import '../../configuration/icons.dart';
import '../../configuration/routes.dart';
import '../../configuration/style.dart';
import '../../functions/functions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                          kIcon: kBackIcon,
                          onPress: () {
                            NavFunctions.goBack(context);
                          }),
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
                  SizedBox(height: SizeConfig.blockY! * 4),

                  // Email
                  const WidgetTextForm(
                      khintText: "Email", ktype: TextInputType.emailAddress),
                  SizedBox(height: SizeConfig.blockY! * 2.5),

                  // Password
                  const WidgetTextForm(
                      khintText: "Password",
                      ktype: TextInputType.visiblePassword),
                  SizedBox(height: SizeConfig.blockY! * 3.625),

                  // Login Button
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: WidgetElevatedButtonOne(
                      kColor: kOrange,
                      kName: "Login",
                      kPageRoute: homePageRoute,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            homePageRoute, (route) => false);
                      },
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockY! * 1),

                  // Forgot Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      WidgetTextButton(text: 'Forgot Password'),
                    ],
                  ),
                  // Sign in with
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: kLightGrey,
                          height: 1,
                          thickness: 1.2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'or Sign in with',
                          style: kPoppinsRegurlar.copyWith(color: kGrey),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: kLightGrey,
                          height: 1,
                          thickness: 1.2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockY! * 3,
                  ),

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
                    height: SizeConfig.blockY! * 2,
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
                    height: SizeConfig.blockY! * 2,
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
