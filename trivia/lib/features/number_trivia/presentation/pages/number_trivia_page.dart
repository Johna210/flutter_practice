import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:trivia/injection_container.dart';

import '../widgets/widgets.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(child: buildBody(context)),
    );
  }

  BlocProvider<NumberTriviaBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<NumberTriviaBloc>(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            // Top Half
            BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
              builder: (context, state) {
                if (state is NumberTriviaInitial) {
                  return const MessageDisplay(
                    message: 'Start Searching!',
                  );
                } else if (state is NumberTriviaErrorState) {
                  return MessageDisplay(message: state.message);
                } else if (state is NumberTriviaLoadingState) {
                  return const LoadingWidget();
                } else if (state is NumberTriviaLoadedState) {
                  return TriviaDisplay(trivia: state.trivia);
                } else {
                  return Container();
                }
              },
            ),

            const SizedBox(
              height: 20,
            ),
            // Bottom Half
            const TriviaControl()
          ]),
        ),
      ),
    );
  }
}
