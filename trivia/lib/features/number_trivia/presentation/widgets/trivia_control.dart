import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';

class TriviaControl extends StatefulWidget {
  const TriviaControl({
    super.key,
  });

  @override
  State<TriviaControl> createState() => _TriviaControlState();
}

class _TriviaControlState extends State<TriviaControl> {
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text Field
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Input a Number'),
          onChanged: (value) {
            inputStr = value;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        // Buttons
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: addConcrete,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[800],
                    foregroundColor: Colors.white),
                child: const Text('Search'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: addRandom,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[800],
                ),
                child: const Text('Get random trivia'),
              ),
            ),
          ],
        )
      ],
    );
  }

  void addConcrete() {
    controller.clear();
    BlocProvider.of<NumberTriviaBloc>(context).add(
      GetTriviaForConcreteNumber(inputStr),
    );
  }

  void addRandom() {
    BlocProvider.of<NumberTriviaBloc>(context).add(
      GetTriviaForRandomNumber(),
    );
  }
}
