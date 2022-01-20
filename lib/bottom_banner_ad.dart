import 'package:banners/ad_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BottomBannerAd extends StatefulWidget {
  const BottomBannerAd({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomBannerAdState();
}

class _BottomBannerAdState extends State<BottomBannerAd> {
  // Banner ads automatically show new ads after a certain period of time.
  // You do not need to do anything fancy with timers or resetting this variable.
  final banner = GetIt.instance.get<AdService>().getBannerAd();

  @override
  void dispose() {
    banner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AdWidget(ad: banner),
      width: double.infinity,
      height: banner.size.height.toDouble(),
    );
  }
}
