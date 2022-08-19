import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/main.dart';
import 'package:provider/provider.dart';
import '../favourite_screen/viewmodel/favourite_pov.dart';
import '../home_screen/viewmodel/carousel_image_pov.dart';
import '../home_screen/viewmodel/home_pov.dart';
import '../product_overview_screen/viewmodel/addon_provider.dart';
import '../search/viewmodel/search_pov.dart';
import '../sign_screen/viewmodel/auth_pov.dart';
import '../splash_screen/viewmodel/splash_pov.dart';

class Providers {
  static Widget providers() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SplashPov>(create: (context) => SplashPov()),
        ChangeNotifierProvider<AuthPov>(create: (context) => AuthPov(FirebaseAuth.instance)),
        ChangeNotifierProvider<HomePov>(create: (context) => HomePov()),
        ChangeNotifierProvider<SearchScreenPov>(create: (context) => SearchScreenPov()),
        ChangeNotifierProvider<HomeCarouselPov>(create: (context) => HomeCarouselPov()),
        ChangeNotifierProvider<AddOnProductPov>(create: (context) => AddOnProductPov()),
        ChangeNotifierProvider<FavouritePov>(create: (context) => FavouritePov()),
      ],
      child: const MyApp(),
    );
  }
}
