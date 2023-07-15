import 'package:counter_provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Consumer<NumberListProvider>(
            builder: (context, numberListProviderSecond, child) => Column(
              children: [
                Text(
                  numberListProviderSecond.numbers.last.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numberListProviderSecond.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numberListProviderSecond.numbers[index].toString(),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      );
                    },
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    numberListProviderSecond.add();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
