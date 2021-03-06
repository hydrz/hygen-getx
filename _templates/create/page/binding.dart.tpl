---
to: lib/app/modules/<%= h.changeCase.snake(name) %>/bindings/<%= h.changeCase.snake(name) %>_binding.dart
unless_exists: true
---

import 'package:get/get.dart';

import '../controllers/<%= h.changeCase.snake(name) %>_controller.dart';

class <%= h.changeCase.pascal(name) %>Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<<%= h.changeCase.pascal(name) %>Controller>(
      () => <%= h.changeCase.pascal(name) %>Controller(),
    );
  }
}
