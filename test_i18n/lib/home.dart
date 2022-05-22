import 'package:flutter/material.dart';
import './i18n/strings.g.dart';
import './localization.dart';
import './next.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.homePage.title),
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
              Text(t.homePage.text(where: 'world')),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              ElevatedButton(
                child: Text(t['homePage.next']),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NextPage()),
                  ).then(
                    // ถ้ามีการเปลี่ยนภาษาในหน้าที่เปลี่ยนไป
                    // เวลากลับมาอย่าลืม refresh ภาษาด้วย
                    (value) => setState(
                      () => Localization.instance().refreshLocale(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
