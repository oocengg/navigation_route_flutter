import 'package:flutter/material.dart';
import 'package:navigation_route_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Muh. Fauzi Ramadhan Nugraha - 2041720022',
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              itemArgs.name.toString(),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              itemArgs.purpose.toString(),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              itemArgs.price.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
