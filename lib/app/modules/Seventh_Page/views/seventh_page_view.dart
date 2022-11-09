import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/seventh_page_controller.dart';

class SeventhPageView extends GetView<SeventhPageController> {
  const SeventhPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SeventhPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SeventhPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
