# Permissions & Privilege Analysis

This document details the Android permissions declared in `AndroidManifest.xml` and assesses their operational necessity and security implications.

---

## 1. Declared Permissions Inventory

| Permission String | Protection Level | Purpose in MovieBox |
| :--- | :--- | :--- |
| `android.permission.INTERNET` | Normal | Streaming media, downloading videos, backend API calls. |
| `android.permission.ACCESS_NETWORK_STATE` | Normal | Checking Wi-Fi vs Cellular for data-saving mode. |
| `android.permission.ACCESS_WIFI_STATE` | Normal | Wi-Fi Direct P2P offline movie sharing. |
| `android.permission.CHANGE_WIFI_STATE` | Normal | Creating local Wi-Fi hotspots for P2P transfers. |
| `android.permission.FOREGROUND_SERVICE` | Normal | Background video download execution without being killed. |
| `android.permission.FOREGROUND_SERVICE_DATA_SYNC`| Normal | Media download synchronization on Android 14+. |
| `android.permission.WAKE_LOCK` | Normal | Keeping CPU awake during high-bitrate streaming/downloads. |
| `android.permission.POST_NOTIFICATIONS` | Dangerous | Showing download progress and push notifications (Android 13+). |
| `android.permission.READ_EXTERNAL_STORAGE` | Dangerous | Accessing local videos and photos for UGC creator uploads. |
| `android.permission.WRITE_EXTERNAL_STORAGE` | Dangerous | Saving downloaded movies to shared `/Download` and `/DCIM`. |
| `android.permission.READ_MEDIA_VIDEO` | Dangerous | Scoped media library access on Android 13+. |
| `android.permission.READ_MEDIA_AUDIO` | Dangerous | Music and soundtrack access on Android 13+. |
| `android.permission.READ_MEDIA_IMAGES` | Dangerous | Profile pictures and thumbnail selection on Android 13+. |
| `android.permission.CAMERA` | Dangerous | Recording creator videos and scanning QR login codes. |
| `android.permission.RECORD_AUDIO` | Dangerous | Microphone audio capture for creator video publishing. |
| `android.permission.ACCESS_FINE_LOCATION` | Dangerous | Geotargeting ad campaigns and regional content cataloging. |
| `android.permission.ACCESS_COARSE_LOCATION` | Dangerous | Approximate location for ad bidding and CDN selection. |
| `android.permission.READ_PHONE_STATE` | Dangerous | Reading SIM MCC/MNC for regional billing via PalmPay. |
| `android.permission.SYSTEM_ALERT_WINDOW` | Signature / Setup | Floating picture-in-picture (PiP) mini-player window. |
| `android.permission.REQUEST_INSTALL_PACKAGES` | Dangerous | In-app self-updating and downloading promoted APKs. |
| `android.permission.RECEIVE_BOOT_COMPLETED` | Normal | Re-scheduling push notification alarms upon device reboot. |
| `android.permission.VIBRATE` | Normal | Haptic feedback for UI interactions. |
| `android.permission.BLUETOOTH` / `BLUETOOTH_CONNECT` | Dangerous | Mini-app BLE peripheral support and Bluetooth audio sync. |

---

## 2. High-Risk Privilege Assessment

1. **`REQUEST_INSTALL_PACKAGES`:**
   - **Risk:** Allows the app to prompt the user to install secondary `.apk` files directly from local storage.
   - **Context:** Used by the in-app OTA updater and by third-party ad networks (Pangle/Mintegral) to install promoted game apps. In a modded APK, this presents a significant threat if redirected to an untrusted update server.
2. **`SYSTEM_ALERT_WINDOW`:**
   - **Risk:** Permits drawing overlays over any other running app.
   - **Context:** Used for Picture-in-Picture (PiP) video playback while the user browses other apps.
3. **`ACCESS_FINE_LOCATION` & `READ_PHONE_STATE`:**
   - **Risk:** Collects precise GPS coordinates and SIM hardware identifiers.
   - **Context:** Aggressively requested by embedded ad mediation SDKs (Hisavana, Pangle, Mintegral) for user profiling and advertising tracking.

