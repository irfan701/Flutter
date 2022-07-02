import 'package:flutter/material.dart';
import 'package:project_one/const/CustomColors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.deepColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo/education_logo.png',
                    width: 150,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Record Their Answer',
                      ),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                            width: 1, color: CustomColors.greyColor)),
                        foregroundColor:
                            MaterialStateProperty.all(CustomColors.greyColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20)),
                      )),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  width: 800,
                  //color: Colors.amber,
                  child: Column(
                    children: [
                      Text(
                        "Grow closer to your loved ones \nby asking them their question",
                        style: TextStyle(color: CustomColors.greyColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 30, bottom: 30),
                            child: Text(
                              "Who do you remember from school?",
                              style: TextStyle(
                                  fontSize: 40, color: CustomColors.greyColor),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    CustomColors.greyColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Copy this question",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  CustomColors.whiteColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0))),
                              foregroundColor: MaterialStateProperty.all(
                                  CustomColors.greyColor),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.network_check),
                            label: const Text('Try another one'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "Made with love by TimeWell",
                style: TextStyle(color: CustomColors.greyColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
