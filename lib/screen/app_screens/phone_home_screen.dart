import 'package:awesome_portfolio/consts/devicedata.dart';
import 'package:awesome_portfolio/provider/current_state.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showCustomSnackbar(BuildContext context, String message) {
      final snackBar = SnackBar(
        backgroundColor: Colors
            .transparent, // Make background transparent to show the gradient
        content: Container(
          width: 150, // Set the width of the Snackbar
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: 16.0,
          right: 16.0,
          left: MediaQuery.of(context).size.width -
              266, // Adjust left margin to position Snackbar on the right
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            children: List.generate(
                apps.length,
                (index) => Container(
                      margin: const EdgeInsets.only(
                          right: 10, top: 10, bottom: 20, left: 10),
                      // width: 70,
                      child: Column(
                        children: [
                          CustomButton(
                            animate: true,
                            margin: const EdgeInsets.only(bottom: 5),
                            borderRadius: currentState.currentDevice ==
                                    Devices.ios.iPhone13
                                ? 8
                                : 100,
                            onPressed: () {
                              if (apps[index].title == 'Email') {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("My Email"),
                                      content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(email),
                                          IconButton(
                                              onPressed: () {
                                                Clipboard.setData(
                                                    const ClipboardData(
                                                        text: email));
                                                Navigator.pop(context);
                                                showCustomSnackbar(
                                                    context, "Email Copied 🥳");
                                              },
                                              icon: const Icon(Icons.copy))
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else if (apps[index].link != null) {
                                // open the url in the webpage
                                currentState.launchInBrowser(
                                  apps[index].link!,
                                );
                              } else if (apps[index].screen != null) {
                                currentState.changePhoneScreen(
                                    apps[index].screen!, false,
                                    titlee: apps[index].title);
                              }
                            },
                            width: 45,
                            height: 45,
                            backgroundColor: apps[index].color,
                            child: (apps[index].title == 'About')
                                ? Center(
                                    child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/1690297909708.jpeg',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ))
                                : apps[index].assetPath == null
                                    ? Center(
                                        child: Icon(
                                          apps[index].icon,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                      )
                                    : Center(
                                        child: SvgPicture.asset(
                                        apps[index].assetPath!,
                                        height: 30,
                                        width: 30,
                                      )),
                          ),
                          SizedBox(
                            width: 60,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
