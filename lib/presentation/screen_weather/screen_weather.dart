import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thoughtbox/application/weather/weather_bloc.dart';
import 'package:thoughtbox/presentation/core/colors.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WeatherBloc>(context)
        .add(const WeatherEvent.getWeatherData());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Screen"),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          print("${state.weather!.current!.cloud.toString()}  ====");
          if (state.isLoding) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 80,
                width: 100,
                color: grey,
                child: Text(state.weather!.current!.cloud.toString()),
              ),
              // Container(
              //   height: 80,
              //   width: 100,
              //   color: grey,
              //   child: Text(model.current!.cloud.toString()),
              // ),
              // Container(
              //   height: 80,
              //   width: 100,
              //   color: grey,
              //   child: Text(model[0].weatherType!),
              // ),
              // Container(
              //   height: 80,
              //   width: 100,
              //   color: grey,
              //   child: Text(model[0].windSpeed!),
              // ),
            ],
          );

          //       ListView.builder(
          //         itemCount: model.length,

          //         itemBuilder: (context, index) {
          //  return        Card(
          //                 color: Theme.of(context).primaryColor,
          //                 child: ListTile(
          //                     title: Text(
          //                       '${model[index].firstName}  ${model[index].lastName}',
          //                       style: const TextStyle(color: Colors.white),
          //                     ),

          //                     subtitle: Text(
          //                       '${model[index].email}',
          //                       style: const TextStyle(color: Colors.white),
          //                     ),

          //                     leading: CircleAvatar(
          //                       backgroundImage: NetworkImage(
          //                           model[index].avatar.toString()),
          //                     )));
          //       },);

          //  Column(
          //   children: [
          //     Text("data"),

          //               Text(model.timezone!),
          //          Text(model.current!.clouds.toString()
          //         )

          //   ],
          // );
          // } else if (state is WeatherApiError) {
          //   ScaffoldMessenger.of(context)
          //       .showSnackBar(SnackBar(content: Text(state.message)));
          // } else {
          //   return Container();
          // }
          // return Container();
        },
      ),
      // ),
    );
  }

  Widget buildLoading() => const Center(child: CircularProgressIndicator());
}
