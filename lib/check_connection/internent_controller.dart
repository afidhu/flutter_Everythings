import 'dart:async';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController extends GetxController {
  var isConnected = false.obs;
  var connectionType = ''.obs;

  StreamSubscription<List<ConnectivityResult>>? subscription;

  @override
  void onInit() {
    super.onInit();
    _checkInitialConnection();
    _listenToConnectionChanges();
  }

  // INITIAL CHECK
  Future<void> _checkInitialConnection() async {
    final result = await Connectivity().checkConnectivity();
    _updateConnectionStatus(result);
  }

  // LISTENER
  void _listenToConnectionChanges() {
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      _updateConnectionStatus(result);
    });
  }

  // MAIN UPDATE FUNCTION
  void _updateConnectionStatus(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.none)) {
      isConnected.value = false;
      connectionType.value = 'None';

      Get.snackbar(
        'Disconnected',
        'No network available',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    isConnected.value = true;

    if (result.contains(ConnectivityResult.wifi)) {
      connectionType.value = 'WiFi';
    } else if (result.contains(ConnectivityResult.mobile)) {
      connectionType.value = 'Mobile';
    } else if (result.contains(ConnectivityResult.vpn)) {
      connectionType.value = 'VPN';
    } else if (result.contains(ConnectivityResult.bluetooth)) {
      connectionType.value = 'Bluetooth';
    } else if (result.contains(ConnectivityResult.ethernet)) {
      connectionType.value = 'Ethernet';
    } else {
      connectionType.value = 'Other';
    }

    // NOTIFICATION
    Get.snackbar(
      'Connection Changed',
      connectionType.value,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );

    print('Updated: ${connectionType.value}');
  }

  @override
  void onClose() {
    subscription?.cancel();
    super.onClose();
  }
}
