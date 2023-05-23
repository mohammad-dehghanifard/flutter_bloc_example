import 'package:flutter/material.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 200,
                child: Text(""),
              );
            },
        ),
      ),
    );
  }
}
