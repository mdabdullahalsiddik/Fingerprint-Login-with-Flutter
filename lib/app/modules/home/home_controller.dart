import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class HomeController extends GetxController {
 final LocalAuthentication auth = LocalAuthentication();
  RxBool isAuthenticated = false.obs;

  Future<void> checkAuth() async {
    bool isAvailable = await auth.canCheckBiometrics;
    print(isAvailable);
    
    if (isAvailable) {
      try {
        bool result = await auth.authenticate(
          localizedReason: 'Scan your fingerprint to proceed',
          options: const AuthenticationOptions(biometricOnly: true),
        );
        isAuthenticated.value = result;
      } catch (e) {
        isAuthenticated.value = false;
        Get.snackbar('Error', 'Authentication failed');
      }
    } else {
      print("No biometric detected");
      Get.snackbar('Error', 'No biometric detected');
    }
  }
}