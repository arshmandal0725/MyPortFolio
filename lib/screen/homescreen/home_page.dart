import 'dart:ui';

import 'package:awesome_portfolio/consts/devicedata.dart';
import 'package:awesome_portfolio/provider/current_state.dart';
import 'package:awesome_portfolio/widgets/custom_container.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.white],
                    begin: Alignment.topLeft)),
          ),
          SvgPicture.asset(
            'assets/images/Cloudy.svg',
            height: size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CustomContainer(
                          height: size.height * 0.5, width: size.width * 0.18),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomContainer(
                          height: size.height * 0.25, width: size.width * 0.18),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.80,
                    child: Consumer<CurrentState>(builder: (context, _, __) {
                      return DeviceFrame(
                        device: currentState.currentDevice,
                        screen: const Center(
                          child: Text(
                            "Hello World",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }),
                  ),
                  Column(
                    children: [
                      CustomContainer(
                          height: size.height * 0.5, width: size.width * 0.18),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomContainer(
                          height: size.height * 0.25, width: size.width * 0.18),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    devices.length,
                    (index) =>
                        Consumer<CurrentState>(builder: (context, _, __) {
                          return CustomButton(
                            backgroundColor: Colors.black,
                            shadowColor: const Color.fromARGB(255, 39, 44, 176),
                            height: 33,
                            width: 33,
                            pressed: (currentState.currentDevice ==
                                    devices[index].device)
                                ? Pressed.pressed
                                : Pressed.notPressed,
                            borderRadius: 16,
                            onPressed: () {
                              currentState
                                  .changeSelectedDevice(devices[index].device);
                            },
                            animate: true,
                            isThreeD: true,
                            child: Icon(
                              devices[index].icon,
                              color: Colors.white,
                            ),
                          );
                        })),
              )
            ],
          ),
        ],
      ),
    );
  }
}
