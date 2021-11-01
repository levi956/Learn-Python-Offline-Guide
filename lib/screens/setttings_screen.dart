import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  static const _privacy_url =
      'https://github.com/levi956/Learn-Python-Offline-Guide/blob/main/privacy.md';
  static const _terms_url =
      'https://github.com/levi956/Learn-Python-Offline-Guide/blob/main/terms%26conditions.md';

  void _launchURL() async => await canLaunch(_privacy_url)
      ? await launch(_privacy_url)
      : throw 'Could not launch $_privacy_url';

  void _launchURLTwo() async => await canLaunch(_terms_url)
      ? await launch(_terms_url)
      : throw 'Could not launch $_terms_url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          iconSize: 20,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () => (_launchURL()),
                child: ListTile(
                  leading: Icon(
                    Icons.manage_search,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => (_launchURLTwo()),
                child: ListTile(
                  leading: Icon(
                    Icons.view_agenda_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    "Terms and conditions",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 18),
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
