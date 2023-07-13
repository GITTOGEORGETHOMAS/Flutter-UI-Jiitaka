import 'package:flutter/material.dart';

import 'package:flutter_application_1/app/modules/homeFirstPage/home_controller.dart';
import 'package:flutter_application_1/app/modules/secondPage/second_page.dart';

import 'package:get/get.dart';

class HomePage extends GetResponsiveView<HomeController> {
  @override
  final HomeController controller = Get.find<HomeController>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx((() => Text(
                            controller.time.value,
                            style: TextStyle(color: Colors.black),
                          ))),
                      Row(
                        children: const [
                          Icon(
                            Icons.signal_cellular_alt,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.wifi,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.battery_full,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '北海道, 札幌市',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Row(
                          children: [
                            Image.asset('assets/images/filter_icon.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/heart.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            IndexedStack(
              index: controller.tabIndex.value,
              children: [
                SecondPage(),
              ],
            ),
            Container(
              width: Get.width,
              height: 33,
              color: Color(0xFFFAAA14),
              child: const Center(
                child: Text(
                  '2022年 5月 26日（木）',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/images/hori1.png'),
                  Image.asset('assets/images/hori2.png'),
                  Image.asset('assets/images/hori3.png'),
                  Image.asset('assets/images/hori4.png'),
                  Image.asset('assets/images/hori5.png'),
                  Image.asset('assets/images/hori6.png'),
                  Image.asset('assets/images/hori7.png'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 325,
              height: 400,
              child: Column(children: [
                Card(
                    child: Stack(
                  children: [
                    Container(
                      height: 186,
                      width: Get.width,
                      child: Image.asset(
                        'assets/images/happiness.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: -20,
                      child: Image.asset(
                        'assets/images/postion.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text('介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）'),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 130,
                              height: 25,
                              color: Colors.pink[50],
                              child: const Center(
                                child: Text(
                                  '介護付き有料老人ホーム',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFFAAA14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: 100,
                        // ),
                        Row(
                          children: const [
                            // Spacer(),
                            Text(
                              '¥ 6,000',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text('5月 31日（水）08 : 00 ~ 17 : 00'),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text('北海道札幌市東雲町3丁目916番地17号'),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text('交通費 300円'),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [Text('住宅型有料老人ホームひまわり倶楽部')],
                        ),
                        // SizedBox(
                        //   width: 100,
                        // ),
                        Row(
                          children: [
                            // Spacer(),
                            Image.asset(
                              'assets/images/heartlight.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ),
            SingleChildScrollView(
              child: Container(
                width: Get.width,
                height: Get.height / 10,
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        height: 186,
                        child: Image.asset(
                          'assets/images/talking.png',
                          // height: 100,
                          // width: Get.width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: <Widget>[
            NavigationDestination(
              // selectedIcon: Icon(Icons.settings),
              icon: Image.asset('assets/images/search.png'),
              label: 'さがす',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/office.png'),
              label: 'お仕事',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/scan.png'),
              label: '打刻する',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.wifi),
              icon: Image.asset('assets/images/typing.png'),
              label: 'チャット',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/contact.png'),
              label: 'マイページ',
            ),
          ],
        ),
        // bottomNavigationBar: Container(
        //   // height: 120,
        //   color: Colors.white,
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Image.asset('assets/images/search.png'),
        //           Image.asset('assets/images/office.png'),
        //           Image.asset('assets/images/scan.png'),
        //           Image.asset('assets/images/typing.png'),
        //           Image.asset('assets/images/contact.png'),
        //         ],
        //       ),
        //       // SizedBox(height: 10),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: const [
        //           Text('さがす'),
        //           Text('お仕事'),
        //           Text('打刻する'),
        //           Text('チャット'),
        //           Text('マイページ'),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        // bottomNavigationBar: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Image.asset('assets/images/search.png'),
        //     Image.asset('assets/images/office.png'),
        //     Image.asset('assets/images/scan.png'),
        //     Image.asset('assets/images/typing.png'),
        //     Image.asset('assets/images/contact.png'),
        //   ],
        // ),
      ),
    );
  }
}
