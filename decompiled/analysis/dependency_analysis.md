# Dependency & Third-Party Library Analysis

This document catalogs all external SDKs, open-source libraries, and commercial frameworks bundled within MovieBox.

---

## 1. Commercial Ad Networks & Mediation SDKs

| Framework / SDK | Package Prefix | Version | Primary Purpose |
| :--- | :--- | :--- | :--- |
| **ByteDance Pangle** | `com.bytedance.sdk.openadsdk` | `7.1.1.4` | Rewarded video, interstitial, and banner ads. |
| **Mintegral** | `com.mbridge.msdk` | `16.x` | Video ad mediation and programmatic bidding. |
| **Vungle Ads** | `com.vungle.ads` | `7.x` | Full-screen video ads and monetization. |
| **Google AdMob** | `com.google.android.gms.ads` | `23.x` | Google mobile advertising SDK. |
| **Hisavana Mediation**| `com.cloud.hisavana` | `3.6.0.2` | Transsion's proprietary unified ad mediation platform. |

---

## 2. Media Playback & Multimedia Frameworks

| Framework / SDK | Package Prefix | Native Binary | Primary Purpose |
| :--- | :--- | :--- | :--- |
| **AndroidX Media3** | `androidx.media3.exoplayer` | `libmedia3ext.so` | Core adaptive DASH / HLS playback engine. |
| **Alibaba Cloud Player**| `com.aliyun.player` | `libalivcffmpeg.so` | Hardware-accelerated H.264/HEVC decoding. |
| **Google AV1** | `com.google.android.exoplayer2.ext.av1` | `libgav1JNI.so` | AV1 software video decoder. |
| **FFmpeg Multimedia**| Native C/JNI bindings | `libavcodec.so`, `libavformat.so`, `libswscale.so` | Audio/video parsing, muxing, and color conversion. |
| **Glide Image Loader**| `com.bumptech.glide` | `libglide-webp.so` | Poster and thumbnail image caching & WebP decoding. |

---

## 3. Storage, Database & Hot-Patching

| Framework / SDK | Package Prefix | Native Binary | Primary Purpose |
| :--- | :--- | :--- | :--- |
| **Tencent Tinker** | `com.tencent.tinker` | Java / Dex | Differential runtime bytecode hot-patching. |
| **Tencent MMKV** | `com.tencent.mmkv` | `libmmkv.so` | High-performance zero-copy mmap key-value store. |
| **AndroidX Room** | `androidx.room` | SQLite | Local relational data persistence. |
| **Jetpack DataStore**| `androidx.datastore` | `libdatastore_shared_counter.so` | Thread-safe preferences storage. |

---

## 4. Networking, Cloud & Payment Gateways

| Framework / SDK | Package Prefix | Primary Purpose |
| :--- | :--- | :--- |
| **Square OkHttp** | `okhttp3` (v4.x) | HTTP/2 and HTTPS client with custom interceptors. |
| **Square Retrofit** | `retrofit2` (v2.x) | REST API interface declarations and serialization. |
| **Amazon AWS SDK** | `com.amazonaws.services.s3` | Multipart direct S3 uploads for creator videos. |
| **Google Play Billing** | `com.android.billingclient` (v6.1.0) | Official Google Play In-App purchases. |
| **Paynicorn Gateway**| `com.transsion.shorttv.order` | Emerging market payment gateway for coin purchases. |
| **PalmPay SDK** | `com.transsion.fission` | Mobile wallet payment integration across Africa. |

---

## 5. UI Presentation & Reactive Frameworks

| Framework / SDK | Package Prefix | Primary Purpose |
| :--- | :--- | :--- |
| **Jetpack Compose** | `androidx.compose.ui`, `foundation`, `runtime` | Declarative UI framework for modern app screens. |
| **Kotlin Coroutines** | `kotlinx.coroutines` | Asynchronous programming and background tasks. |
| **ReactiveX (RxJava 3)**| `io.reactivex.rxjava3` | Reactive event stream processing. |
| **TheRouter** | `com.therouter` | Modular component navigation and dynamic route resolution. |

