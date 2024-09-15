import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'done_controller.dart';

class DonePage extends GetView<DoneController> {
  const DonePage({super.key});

  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo[900],
        elevation: 0,
      ),
      body: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text(
            'Successfully Verified',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
