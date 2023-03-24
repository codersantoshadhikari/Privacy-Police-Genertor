import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
import 'package:privacy_policy_generator/data.dart';

class PolicyPage extends StatelessWidget {
  Policy p;
  PolicyPage(this.p);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(p.appname + "Policy"),
      ),
      body: HtmlContentViewer(
        htmlContent: p.generatePolicy(),
        initialContentHeight: MediaQuery.of(context).size.height,
        initialContentWidth: MediaQuery.of(context).size.width,
      ),
    );
  }
}
