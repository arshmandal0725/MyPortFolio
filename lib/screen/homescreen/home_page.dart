import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_portfolio/consts/devicedata.dart';
import 'package:awesome_portfolio/provider/current_state.dart';
import 'package:awesome_portfolio/provider/theme_provider.dart';
import 'package:awesome_portfolio/screen/app_screens/phone_screen_wrapper.dart';
import 'package:awesome_portfolio/widgets/custom_container.dart';
import 'package:awesome_portfolio/widgets/rain_cloud.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;
    bool phone = false;
    if (size.width < 800) {
      phone = true;
    }

    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, Gradient>(
            selector: (context, provider) => provider.bgGradient,
            builder: (context, _, __) {
              return Container(
                decoration: BoxDecoration(gradient: currentState.bgGradient),
              );
            },
          ),
          size.height > 600
              ? const Rain(
                  oposite: false,
                  top: 300,
                )
              : Container(),
          Selector<CurrentState, String>(
            selector: (context, provider) => provider.selectedCloud,
            builder: (context, _, __) {
              return SvgPicture.asset(
                currentState.selectedCloud,
                // width: double.infinity,
                height: size.height,
                fit: BoxFit.cover,
              );
            },
          ),
          size.height > 600
              ? const Rain(
                  oposite: true,
                  top: 50,
                )
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Left side frosted Containers

                  phone
                      ? Container()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(-0.06),
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 10 * theme.heightRatio),
                                child: FrostedWidget(
                                  childW: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..setEntry(3, 2, 0.01)
                                        ..rotateY(-0.06),
                                      alignment: FractionalOffset.center,
                                      child: const Row(
                                        children: [
                                          Flexible(
                                            child: Center(
                                              child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: AutoSizeText(
                                                    'FlutterDev',
                                                    style: TextStyle(
                                                        fontSize: 35,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    maxFontSize: 35,
                                                    minFontSize: 15,
                                                    maxLines: 1,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  height: 395 * theme.heightRatio,
                                  width: 247.5 * theme.widthRatio,
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.009999)
                                ..rotateY(-0.07),
                              alignment: Alignment.topCenter,
                              child: FrostedWidget(
                                onPressed: () {
                                  currentState.launchInBrowser(linkedIn);
                                },
                                childW: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/linkedin.svg",
                                          width: 50 *
                                              theme.widthRatio *
                                              theme.heightRatio,
                                          height: 50 *
                                              theme.widthRatio *
                                              theme.heightRatio,
                                        ),
                                        SizedBox(
                                          height: 10 * theme.heightRatio,
                                        ),
                                        Flexible(
                                            child: AutoSizeText(
                                          "Let's connect!",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 28 *
                                                theme.widthRatio *
                                                theme.heightRatio,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxFontSize: 28,
                                          minFontSize: 15,
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                height: 175.5 * theme.heightRatio,
                                width: 245 * theme.widthRatio,
                              ),
                            ),
                          ],
                        ),

                  // main mobile screen
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                      // selector: (context, provider) => provider.currentDevice,
                      builder: (context, _, __) {
                        return DeviceFrame(
                          device: currentState.currentDevice,
                          screen: Container(
                              decoration: BoxDecoration(
                                  gradient: currentState.bgGradient),
                              child: ScreenWrapper(
                                  childG: currentState.currentScreen)),
                        );
                      },
                    ),
                  ),

                  /// Right side frosted containers
                  phone
                      ? Container()
                      : Column(
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(0.06),
                              alignment: Alignment.bottomCenter,
                              child: FrostedWidget(
                                height: 395 * theme.heightRatio,
                                width: 247.5 * theme.widthRatio,
                                childW: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Wrap(
                                      children: [
                                        ...List.generate(
                                          colorPalette.length,
                                          (index) => Consumer<CurrentState>(
                                              builder: (context, _, __) {
                                            return CustomButton(
                                              margin: const EdgeInsets.all(10),
                                              pressed:
                                                  currentState.selectedColor ==
                                                          index
                                                      ? Pressed.pressed
                                                      : Pressed.notPressed,
                                              animate: true,
                                              borderRadius: 100,
                                              shadowColor: Colors.blueGrey[50],
                                              isThreeD: true,
                                              backgroundColor:
                                                  colorPalette[index].color,
                                              width: 50 * theme.widthRatio,
                                              height: 50 * theme.widthRatio,
                                              onPressed: () {
                                                currentState
                                                    .changeGradient(index);
                                              },
                                            );
                                          }),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.00999)
                                ..rotateY(0.06),
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 10),
                                child: FrostedWidget(
                                  childW: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      padding:
                                          EdgeInsets.all(10 * theme.widthRatio),
                                      child: Center(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const AutoSizeText(
                                            '"Don\'t run after success run after perfection success will follow."',
                                            style: TextStyle(
                                                // fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                            maxFontSize: 25,
                                            minFontSize: 10,
                                            maxLines: 3,
                                          ),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: AutoSizeText(
                                                '-Baba Ranchhoddas',
                                                style: TextStyle(
                                                    // fontSize: 12,
                                                    color: Colors.white
                                                        .withOpacity(0.6),
                                                    fontWeight:
                                                        FontWeight.w400),
                                                maxFontSize: 12,
                                                minFontSize: 6,
                                                maxLines: 1,
                                              )),
                                        ],
                                      )),
                                    ),
                                  ),
                                  height: 175.5 * theme.heightRatio,
                                  width: 245 * theme.widthRatio,
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: 10 * theme.heightRatio,
              ),

              /// bottom button for device selection
              Selector<CurrentState, DeviceInfo>(
                  selector: (context, p1) => p1.currentDevice,
                  builder: (context, _, __) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(devices.length, (index) {
                          return CustomButton(
                            pressed: currentState.currentDevice ==
                                    devices[index].device
                                ? Pressed.pressed
                                : Pressed.notPressed,
                            animate: true,
                            borderRadius: 100,
                            isThreeD: true,
                            backgroundColor: Colors.black,
                            width: 37.5,
                            height: 37.5,
                            onPressed: () {
                              currentState.changeSelectedDevice(
                                devices[index].device,
                              );
                            },
                            child: Center(
                              child: Icon(
                                devices[index].icon,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          );
                        })
                      ],
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
