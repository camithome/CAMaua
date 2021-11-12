import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treinandoreplica/app/modules/home/models/home_model.dart';

class CardProduto extends StatelessWidget {
  final String title;
  final String pathImage;
  final List<String> options;
  final ScrollController scroll = ScrollController();
  final void Function() onAddToCar;

  CardProduto({
    Key? key,
    required this.title,
    required this.pathImage,
    required this.options,
    required this.onAddToCar,
  }) : super(key: key);

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
            Expanded(
                flex: 1,
                child: Container(
                    height: 80, width: 80, child: Image.asset(pathImage))),
            Divider(),
            SizedBox(height: 12),
            Expanded(
              flex: 1,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5,
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4),
                //scrollDirection: Axis.horizontal,
                //mainAxisAlignment: MainAxisAlignment.center,
                primary: false,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed: onAddToCar, child: Text(options[index]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
