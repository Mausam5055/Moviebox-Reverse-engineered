# Component Analysis: Activities, Services, Receivers & Providers

This document analyzes the components declared in `AndroidManifest.xml`, their intent filters, process bindings, and exported exposure status.

---

## 1. Activities Summary (Total: 48 Declared)

### 1.1 Core First-Party Activities

| Activity Name | Process | Exported | Intent Filters / Purpose |
| :--- | :--- | :--- | :--- |
| `com.transsion.subroom.activity.SplashActivity` | Main | **true** | `MAIN`, `LAUNCHER`, `DEFAULT` — Primary entry point. |
| `com.transsion.subroom.activity.MainActivity` | Main | false | Central tab container (Home, ShortTV, UGC, Profile). |
| `com.transsion.moviedetail.activity.MovieDetailActivity` | Main | false | Long-form movie/series detail view. |
| `com.transsion.shorttv.ui.activity.ShortTvListActivity` | Main | false | Vertical micro-drama feed. |
| `com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity`| Main | false | Short drama series episode browser. |
| `com.transsion.member.MemberActivity` | Main | false | VIP membership purchasing portal. |
| `com.transsion.ugcvideodetail.ui.activity.UGCVideoDetailActivity` | Main | false | TikTok-style short video feed. |
| `com.transsion.publish.ui.activity.PublishActivity` | Main | false | Creator video upload studio. |
| `com.transsion.player.DashDemoActivity` | Main | false | Adaptive bitrate DASH stream tester. |

### 1.2 Third-Party & Mini-App Activities

| Activity Name | Process | Exported | Purpose |
| :--- | :--- | :--- | :--- |
| `com.cloud.tmc.miniapp.ui.AppBrandProfileActivity` | `:mini` | false | Mini-app host window in isolated process. |
| `com.journeyapps.barcodescanner.CaptureActivity` | Main | false | QR and barcode scanner. |
| `com.google.android.play.core.common.PlayCoreDialogWrapperActivity` | Main | false | Play Core dialog wrapper. |
| `com.tencent.tinker.loader.hotplug.ActivityStubs$STDStub_00` .. `_03` | Main | false | Tinker dynamic activity proxy stubs. |

---

## 2. Services Summary (Total: 38 Declared)

| Service Name | Process | Exported | Purpose |
| :--- | :--- | :--- | :--- |
| `com.transsnet.downloader.core.ForegroundService` | Main | false | Persistent foreground chunk downloader. |
| `com.transsnet.downloader.guard.DownloadGuardService`| Main | false | Independent watchdog daemon preventing task death. |
| `com.cloud.tmc.miniapp.ipc.multiprogress.IpcMainProcessClientService` | Main | false | Mini-app IPC communication hub. |
| `com.cloud.tmc.miniapp.ipc.multiprogress.IpcMiniProcessClientService` | `:mini` | false | Mini-app client service running in `:mini`. |
| `com.cloud.tmc.miniapp.bluetooth.BLEService` | `:mini` | false | Bluetooth LE hardware access for mini-apps. |
| `com.transsion.player.mediasession.MediaService` | Main | false | Android MediaSession & background audio player. |
| `com.transsion.push.service.PushJobIntentService` | Main | false | Transsion proprietary push engine. |
| `com.transsion.athena.aidl.AthenaTrackService` | Main | false | Centralized telemetry and tracking collector. |
| `com.tencent.tinker.lib.service.TinkerPatchService` | Main | false | Bytecode differential patch applicator. |
| `com.google.firebase.messaging.FirebaseMessagingService`| Main | false | Firebase Cloud Messaging listener. |

---

## 3. Broadcast Receivers Summary (Total: 20 Declared)

| Receiver Name | Exported | Triggers & Intent Actions |
| :--- | :--- | :--- |
| `com.transsion.player.mediasession.MusicIntentReceiver` | true | `ACTION_MEDIA_BUTTON` — Headset and Bluetooth media control. |
| `com.transsion.mbwidget.PlayWidgetProvider` | true | `APPWIDGET_UPDATE` — Home screen video widget. |
| `com.transsion.mbwidget.SportSchedulePreviewWidgetProvider` | true | `APPWIDGET_UPDATE` — Sports schedule home widget. |
| `com.transsion.al.ka.BootReceiver` | true | `BOOT_COMPLETED` — Re-registers push alarms upon phone restart. |
| `com.mbridge.msdk.foundation.same.broadcast.NetWorkChangeReceiver` | true | `CONNECTIVITY_CHANGE` — Ad cache network trigger. |

---

## 4. Content Providers Summary (Total: 12 Declared)

| Provider Name | Authorities | Purpose |
| :--- | :--- | :--- |
| `com.therouter.InnerTheRouterContentProvider` | `com.community.oneroom.therouter.init` | Automatic initial routing indexer. |
| `com.cloud.hisavana.sdk.database.HisavanaContentProvider` | `com.community.oneroom.hisavana.provider` | Local ad configuration database. |
| `com.cloud.hisavana.sdk.common.HisavanaFileProvider` | `com.community.oneroom.hisavana.fileprovider` | Ad creative and APK installation sharing. |
| `androidx.core.content.FileProvider` | `com.community.oneroom.fileprovider` | Secure file sharing with external video players. |
| `com.transsion.al.ka.AccountSyncContentProvider` | `com.community.oneroom.account.sync` | Transsion ID synchronization provider. |

