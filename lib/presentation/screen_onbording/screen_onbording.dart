import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thoughtbox/application/bloc_onbording/onbording_bloc.dart';
import 'package:thoughtbox/application/bloc_onbording/onbording_event.dart';
import 'package:thoughtbox/application/bloc_onbording/onbording_state.dart';
import 'package:thoughtbox/domain/model_onbording/model_onbording.dart';
import 'package:thoughtbox/presentation/core/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:thoughtbox/presentation/core/fonts.dart';
import 'package:thoughtbox/presentation/screen_login/screen_login.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pagecontroller = PageController();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final height10 = SizedBox(height: height * .01);

    return Scaffold(
        backgroundColor: backgroundColor,
        body: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            return Stack(
              children: [
                PageView.builder(
                    controller: pagecontroller,
                    onPageChanged: (index) {
                      state.initialIndex = index;
                      BlocProvider.of<OnboardingBloc>(context)
                          .add(OnboardingEvent());

                      if (state.initialIndex == 3) {
                      } else {}
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.maxFinite,
                              height: 300,
                              decoration: BoxDecoration(
                                //color: red,
                                image: DecorationImage(
                                    image: AssetImage(
                                      onbordingList[index].assetImage!,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            height10,
                            Text(
                              onbordingList[index].title!,
                              style: headLine,
                              textAlign: TextAlign.center,
                            ),
                            height10,
                            Text(
                              onbordingList[index].discriptions!,
                              style: subLine,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: blue,
                                  minimumSize: Size(40, height * .04),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  if (index < 2) {
                                    pagecontroller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  } else {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        ));
                                  }
                                },
                                child: Text(
                                  index < 2 ? "Next" : "Login",
                                ))
                          ],
                        ),
                      );
                    }),
                Positioned(
                  bottom: 25,
                  left: 15,
                  child: DotsIndicator(
                    position: state.initialIndex,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      color: grey,
                      activeColor: blue,
                      size: const Size.square(8),
                      activeSize: const Size(20, 8),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}

List<OnbordingModel> onbordingList = [
  OnbordingModel(
    assetImage: "assets/weather1.png",
    title: "Welcome to Weatherly",
    discriptions:
        "Get real-time weather updates, accurate forecasts, and personalized alerts.",
  ),
  OnbordingModel(
    assetImage: "assets/weather2.png",
    title: "Discover the World's Weather",
    discriptions:
        "Explore detailed weather information, hourly forecasts, and extended outlooks.",
  ),
  OnbordingModel(
    assetImage: "assets/weather3.png",
    title: "Stay Ahead of the Weather with WeatherWise",
    discriptions:
        "Plan your day with confidence using our intuitive interface and reliable weather data.",
  ),
];
