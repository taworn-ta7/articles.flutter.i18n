import 'package:flutter/material.dart';
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
        title: const Text('Next'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Goodbye, world :|'),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              ElevatedButton(
                child: const Text('Alert'),
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
