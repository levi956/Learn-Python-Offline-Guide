import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:python_cheat_sheet_app/services/ad_state.dart';
import 'package:python_cheat_sheet_app/widgets/advanced_category.dart';
import 'package:python_cheat_sheet_app/widgets/basic_categories.dart';
import 'package:python_cheat_sheet_app/widgets/intermediate_categories.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BannerAd bannerad;
  bool _loadingAnchoredBanner = false;
  InterstitialAd _interstitialAd;

  static final AdRequest request = AdRequest(
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    nonPersonalizedAds: true,
  );

  void _createInterstitialAd() {
    InterstitialAd(
        adUnitId: InterstitialAd.testAdUnitId,
        request: request,
        listener: AdListener(
          onAdLoaded: (Ad ad) {
            print('$ad loaded');
            _interstitialAd = ad as InterstitialAd;
            _showInterstitialAd();
            //  _numInterstitialLoadAttempts = 0;
          },
          onAdClosed: (Ad ad) {
            //ad.dispose();
            // _createInterstitialAd();
          },
          onAdFailedToLoad: (Ad ad, LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            // _numInterstitialLoadAttempts += 1;
            _interstitialAd = null;
            /*if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              _createInterstitialAd();
            }*/
          },
        ))
      ..load();
  }

  void _showInterstitialAd() {
    if (_interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      _createInterstitialAd();
      return;
    }
    /*  _interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );*/
    _interstitialAd.show();
    _interstitialAd = null;
  }

  Future<void> _createAnchoredBanner(BuildContext context) async {
    final AnchoredAdaptiveBannerAdSize size =
        await AdSize.getAnchoredAdaptiveBannerAdSize(
      Orientation.portrait,
      MediaQuery.of(context).size.width.truncate(),
    );

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    final BannerAd banner = BannerAd(
      size: size,
      request: request,
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
      listener: AdListener(
        onAdLoaded: (Ad ad) {
          print('$BannerAd loaded.');
          setState(() {
            bannerad = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
      ),
    );
    return banner.load();
  }

  @override
  void initState() {
    super.initState();
    _createInterstitialAd();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /*final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        banner = BannerAd(
          adUnitId: adState.bannerAdUnitId,
          size: AdSize.banner,
          request: AdRequest(),
          listener: AdListener(
            onAdLoaded: (Ad ad) {
              print('$BannerAd loaded.');
              setState(() {
                banner = ad as BannerAd;
              });
            },
            onAdFailedToLoad: (Ad ad, LoadAdError error) {
              print('$BannerAd failedToLoad: $error');
              ad.dispose();
            },
            onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
            onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
          ),
        )..load();

        //banner.load();
      });
    });*/
  }

  @override
  Widget build(BuildContext context) {
    {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
      if (!_loadingAnchoredBanner) {
        _loadingAnchoredBanner = true;
        _createAnchoredBanner(context);
      }

      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.settings,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                print('I was pressed');
              },
            ),
          ),
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.h,
                          width: 120,
                          child: Image(
                              //fit: BoxFit.fill,
                              //height: 200,
                              //width: 150,
                              image: AssetImage(
                            'assets/images/pythonlogo.png',
                          )),
                        ),
                        Container(
                          child: Text(
                            'Introduction to Python',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          //height: 15.5.h,
                          child: Text(
                            'A quick guide that contains the key concepts on what the Python programming language is and it\'s core syntax.',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //height: 22,
                  margin: EdgeInsets.only(left: 10, top: 25, bottom: 20),
                  child: Text(
                    'Beginner',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Basics(),
                Container(
                  //height: 22,
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text(
                    'Intermediate',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Intermediate(),
                Container(
                  //height: 22,
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text(
                    'Professional',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Advanced(),
                bannerad != null
                    ? Container(
                        color: Colors.green,
                        width: bannerad.size.width.toDouble(),
                        height: bannerad.size.height.toDouble(),
                        child: AdWidget(ad: bannerad),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      );
    }
  }
}
