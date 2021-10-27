import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('error'),
      ),
      body: SizedBox(
        height: 50,
        child: AdWidget(
          ad: BannerAd(
            adUnitId: BannerAd.testAdUnitId,
            request: AdRequest(),
            size: AdSize.banner,
            listener: BannerAdListener(),
          )..load(),
        ),
      ),
    );
  }
}
