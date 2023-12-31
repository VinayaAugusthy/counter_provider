import 'package:counter_provider/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<NumberListProvider>(
          // ignore: non_constant_identifier_names
          builder: (context, NumberListProviderModel, child) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(NumberListProviderModel.numbers.last.toString()),
                  Expanded(
                    child: ListView.builder(
                      itemCount: NumberListProviderModel.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                            NumberListProviderModel.numbers[index].toString());
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          NumberListProviderModel.add();
                        },
                        child: const Icon(Icons.add),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Second(),
                              ));
                        },
                        child: const Icon(Icons.forward),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
