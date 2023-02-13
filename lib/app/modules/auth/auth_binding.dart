part of auth;

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
        () => AuthController(apiRepository: Get.find()));
  }
}
