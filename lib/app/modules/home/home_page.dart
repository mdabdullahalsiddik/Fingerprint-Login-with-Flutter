import 'package:fingerprint_auth/app/modules/done/done_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
              child: Text(
                'Use your fingerprint to authenticate yourself',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const Text(
              'before using the app',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: controller.checkAuth,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.green, width: 3),
                ),
                child: const Icon(Icons.fingerprint_rounded,
                    size: 120, color: Colors.green),
              ),
            ),
            const SizedBox(height: 50),
            Obx(() {
              if (controller.isAuthenticated.value) {
                Future.delayed(Duration.zero, () {
                  Get.to(() => const DonePage());
                });
              }
              return Container();
            })
          ],
        ),
      ),
    );
  }
}
