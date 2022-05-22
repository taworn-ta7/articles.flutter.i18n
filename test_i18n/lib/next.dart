import 'package:flutter/material.dart';
import './i18n/strings.g.dart';
import './localization.dart';
import './alert.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.nextPage.title),
        actions: [
          // Thai language
          IconButton(
            icon: Image.asset('assets/locales/th.png'),
            tooltip: t.switchLocale.th,
            onPressed: () => setState(
              () => Localization.instance().changeLocale('th'),
            ),
          ),

          // English language
          IconButton(
            icon: Image.asset('assets/locales/en.png'),
            tooltip: t.switchLocale.en,
            onPressed: () => setState(
              () => Localization.instance().changeLocale('en'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(t.nextPage.text(where: 'world')),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              ElevatedButton(
                child: Text(t['nextPage.next']),
                onPressed: () {
                  DialogBox.show(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
