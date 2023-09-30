import 'package:kang_cuci/commons/commons.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ShowUtils {
  ShowUtils._();

  static void showLoading() {
    EasyLoading.show();
  }

  static void showError(AppFailures? failure) {
    EasyLoading.showError(failure?.message ?? "");
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }
}
