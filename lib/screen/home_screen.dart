import 'package:flutter/material.dart';

import '../bloc/bloc_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Se actualiza la app entera');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    'Counter value: ${state.counterValue}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => context
                          .read<CounterBloc>()
                          .add(CounterDecrementEvent()),
                      icon: const Icon(Icons.remove),
                      label: const Text('Decrease'),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => context
                          .read<CounterBloc>()
                          .add(CounterIncrementEvent()),
                      icon: const Icon(Icons.add),
                      label: const Text('Increase'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
