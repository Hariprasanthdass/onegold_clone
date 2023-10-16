import 'package:flutter/material.dart';
import 'package:onegold_clone/verti_cards/elements.dart';

class ElementsItems extends StatelessWidget {
  const ElementsItems(this.element, {super.key});

  final List<Elements> element;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: element.length,
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          final elements = element[i];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: metalCategoryIcons(elements.color!)),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            elements.metal!,
                            style: TextStyle(
                                color: elements.color,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(elements.metalWeight!),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            elements.investAmount!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(elements.investPercent!),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    indent: 10,
                    endIndent: 10,
                    height: 0,
                    color: Color.fromARGB(255, 92, 90, 90),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(elements.mP!),
                          Text(elements.mPrice!),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(elements.cHg!),
                          Text(
                            elements.pChange!,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 86, 236, 91)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
