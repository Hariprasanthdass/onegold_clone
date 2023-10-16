import 'package:flutter/material.dart';
import 'package:onegold_clone/horz_cards/horz_elements.dart';

class HarzElementsItems extends StatelessWidget {
  const HarzElementsItems(this.horzElement, {super.key});

  final List<HorzElements> horzElement;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horzElement.length,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          final horzElements = horzElement[i];
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          horzElements.title!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Text(
                          horzElements.content!,
                          maxLines: 3,
                          style: const TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    horzElements.pic!,
                    width: 150,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          );
        });
  }
}
