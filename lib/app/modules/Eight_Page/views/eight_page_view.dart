import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/eight_page_controller.dart';

class EightPageView extends GetView<EightPageController> {
  const EightPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EightPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EightPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
