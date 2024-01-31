import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndexController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Center(child: const Text("index"))),
          floatingActionButton: FloatingActionButton(
            onPressed: () => print("Floating"),
            child: Icon(Icons.add),
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
