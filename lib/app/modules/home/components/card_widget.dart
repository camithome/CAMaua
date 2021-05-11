import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  final String title;
  final String pathImage;
  final List<String> options;
  final ScrollController scroll = ScrollController();
  CardProduto(
      {Key? key,
      required this.title,
      required this.pathImage,
      required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(title),
            SizedBox(height: 15),
            Container(height: 80, width: 80, child: Image.asset(pathImage)),
            Divider(),
            SizedBox(height: 12),
            Container(
              constraints: BoxConstraints(maxHeight: 58, maxWidth: 250),
              child: CupertinoScrollbar(
                isAlwaysShown: true,
                controller: scroll,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListView.separated(
                    controller: scroll,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text(options[index])),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 8,
                      );
                    },
                    itemCount: options.length,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
