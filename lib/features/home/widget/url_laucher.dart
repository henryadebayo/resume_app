import 'package:url_launcher/url_launcher.dart';

launchURL1() async {
  final url = Uri.parse("https://www.github.com/henryadebayo");
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURL2() async {
  final url = Uri.parse("https://www.linkedin.com/in/henryadebayo");
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURL3() async {
  final url = Uri.parse("https://www.twitter.com/henryadebayoo");
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
