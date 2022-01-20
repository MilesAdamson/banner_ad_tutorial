import 'package:banners/ad_service.dart';
import 'package:banners/bottom_banner_ad.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final adService = AdService(MobileAds.instance);
  GetIt.instance.registerSingleton<AdService>(adService);

  // TODO it's best to do this kind of loading in a splash screen. If you await
  // too long in main your users will just see a black screen for that time
  await adService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banner Ad Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: const BottomBannerAd(),
        appBar: AppBar(
          title: const Text("Home"),
        ),
      ),
    );
  }
}
