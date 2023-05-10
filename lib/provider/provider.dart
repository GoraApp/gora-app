import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_android_volume_keydown/flutter_android_volume_keydown.dart';
import 'dart:developer' as devtools show log;

class HardwareService extends ChangeNotifier {
  // ********************* init
  final bool _isPhoneNumSignin = true;
  StreamSubscription<HardwareButton>? subscription;

  // ********************* get
  bool get getIsPhoneSignIn => _isPhoneNumSignin;

  // ********************* set

  setSignInType() {
    _isPhoneNumSignin != _isPhoneNumSignin;
    notifyListeners();
  }

  startListening() {
    devtools.log("BUTTON TAP");
    subscription = FlutterAndroidVolumeKeydown.stream.listen((event) {
      if (event == HardwareButton.volume_down) {
        devtools.log("volume down");
        stopListening();
      } else if (event == HardwareButton.volume_up) {
        devtools.log("volume up");
      }
    });
  }

  stopListening() {
    subscription?.cancel();
  }
}
