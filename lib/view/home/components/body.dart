import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:sunsetandsunrise/view_model/home_view_model.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: Get.put(HomeViewModel()),
        builder: (controller) {
          return controller.sunriseSunsetModel == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Date: ${controller.dateTime.year}-${controller.dateTime.month}-${controller.dateTime.day}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: Svg('assets/svg/sunrise-100px.svg'),
                              ),
                              Text(
                                'First light at ${controller.sunriseSunsetModel!.results.civilTwilightBegin}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Sunrise time:',
                              ),
                              Text(
                                '${controller.sunriseSunsetModel!.results.sunrise}',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Image(
                                image: Svg('assets/svg/sunset-100px.svg'),
                              ),
                              Text(
                                'Sunset time:',
                              ),
                              Text(
                                '${controller.sunriseSunsetModel!.results.sunset}',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Last light at ${controller.sunriseSunsetModel!.results.civilTwilightEnd}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Day length: '),
                          Text(
                            '${controller.sunriseSunsetModel!.results.dayLength}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              controller.getTime(context);
                            },
                            child: Text('Change Date'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.getCurrentData();
                            },
                            child: Text('Refresh'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
        });
  }
}
