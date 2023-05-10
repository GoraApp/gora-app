import 'package:flutter/material.dart';
import 'package:flutter_gora_app/configuration/configuration.dart';
import 'package:flutter_gora_app/configuration/style.dart';

class QRpage extends StatelessWidget {
  const QRpage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: kOrange,
              title: Text(
                "QR",
                style: kPoppinsBold.copyWith(fontSize: 20),
              ),
              automaticallyImplyLeading: false),
          body: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 150,
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code_2_rounded),
                      ),
                      Text(
                        "QR Generator",
                        style: kPoppinsBold.copyWith(fontSize: 25),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 150,
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code_scanner_rounded),
                      ),
                      Text(
                        "QR Scanner",
                        style: kPoppinsBold.copyWith(fontSize: 25),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
