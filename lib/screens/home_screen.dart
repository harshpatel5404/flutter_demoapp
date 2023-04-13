import 'package:flutter/material.dart';
import 'package:flutter_demoapp/constants/dimension.dart';
import 'package:flutter_demoapp/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        initState: (_) {},
        builder: (controller) {
          return Center(
            child: homeController.image == null
                ? MaterialButton(
                    color: Colors.blue,
                    child: const Text("Capture Image from Camera",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      homeController.captureImage();
                    })
                : SizedBox(
                    height: mHeight * 0.4,
                    width: mHeight * 0.4,
                    child: Image.file(
                      homeController.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
