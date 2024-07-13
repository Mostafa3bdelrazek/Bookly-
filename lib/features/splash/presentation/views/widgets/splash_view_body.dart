import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsHelper.logo),
          const Text(
            "Read Free Books",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
