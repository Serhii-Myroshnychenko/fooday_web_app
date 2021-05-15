// @dart=2.10
import 'package:url_launcher/url_launcher.dart';


class UrlPage {

  static const _url = 'https://tgrm.github.io/FooDay_bot';
  static const _url_1 = 'https://www.facebook.com/oleg.huleev';
  static const _url_2 = '';

  static void launchURL() async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

  static void launchURL_1() async => await canLaunch(_url_1)
      ? await launch(_url_1)
      : throw 'Could not launch $_url_1';

 static void launchURL_2() async => await canLaunch(_url_2)
      ? await launch(_url_2)
      : throw 'Could not launch $_url_2';

  static void launchEmailSubmission() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'oleghaleev159@gmail.com',
        queryParameters: {'subject': '', 'body': ''});
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

}