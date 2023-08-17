import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';
import 'package:points_counter/widgets/elevated_button.dart';

class Points_Counter extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CountertState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff358679),
            title: const Text(
              'Points Counter',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointATeam}',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ButtonElevated(
                          onp: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', number: 1);
                          },
                          numberAdd: 'Add 1 point'),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonElevated(
                          onp: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', number: 2);
                          },
                          numberAdd: 'Add 2 point'),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonElevated(
                          onp: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', number: 3);
                          },
                          numberAdd: 'Add 3 point'),
                    ],
                  ),
                  SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey[400],
                      thickness: 1,
                      indent: 50,
                      endIndent: 100,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointBTeam}',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ButtonElevated(
                          onp: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', number: 1);
                          },
                          numberAdd: 'Add 1 point'),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonElevated(
                          onp: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', number: 2);
                          },
                          numberAdd: 'Add 2 point'),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonElevated(
                          onp: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', number: 3);
                          },
                          numberAdd: 'Add 3 point'),
                    ],
                  ),
                ],
              ),
              ButtonElevated(
                  onp: () {
                    BlocProvider.of<CounterCubit>(context).reset();
                    BlocProvider.of<CounterCubit>(context).reset();
                  },
                  numberAdd: 'Reset'),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
