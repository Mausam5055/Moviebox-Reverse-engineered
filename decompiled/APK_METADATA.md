# APK Metadata & Integrity Specification

## 1. File Identity & Cryptographic Hashes

- **Filename:** `moviebox-premium_v4.0.03.0930.03-an1.ca.apk`
- **File Size:** `63,981,198` bytes (61.02 MB)
- **SHA-256:** `1ecabfddb42e2898122c0dc82773592602fb97b9d8c3ea502d50fc0e2e51e33f`
- **MD5:** `186da028df1d50c5344d9f67a6db33d4`
- **SHA-1:** `8fc4e87265be7dfad9e3381fa1e793910cbe43b4`

---

## 2. Android Manifest Configuration

- **Package Name:** `com.community.oneroom`
- **Version Name:** `4.0.03.0930.03`
- **Version Code:** `50020132`
- **Minimum SDK Level:** `23` (Android 6.0 Marshmallow)
- **Target SDK Level:** `35` (Android 15)
- **Compile SDK Version:** `35` (Codename: `15`)
- **Main Launcher Activity:** `com.transsion.subroom.activity.SplashActivity`
- **Application Class:** `Abdullah.hook` (Original: `com.transsion.subroom.app.SubRoomApp`)

---

## 3. DEX File Inventory & Checksums

| DEX File | File Size (Bytes) | Class Count | SHA-256 Hash |
| :--- | :--- | :--- | :--- |
| `classes.dex` | 7,939,332 | 7,616 | `9797a180aaa652a513f19c80a5f251b397c3e4482d9501a8bd463b832c352985` |
| `classes2.dex` | 7,987,680 | 9,764 | `cbd65b59b5844298c2eb5f6fffb2e603ad77e9aa169d3402ac676987111d31d2` |
| `classes3.dex` | 9,119,616 | 9,276 | `84411eea9b4fabc0fa8b263954a325fc294d06a05b5087b03c2f0b12ddd8185f` |
| `classes4.dex` | 7,532,832 | 9,455 | `afd3b026fa08bc8292eacf51c048c6f73e4682d73852472f16118dc5f7585050` |
| `classes5.dex` | 9,503,772 | 8,698 | `94f492191d4a4d24b64b5129665bad29bfd02ad75572e21dd4dbe05adc0380ca` |
| `classes6.dex` | 8,651,956 | 9,075 | `217d2208aed0691d35b0df61ec5c621de9a2c942d45ff93df39ae32967671f96` |
| `classes7.dex` | 6,822,928 | 8,097 | `ec333fea83589cdbf2f8906f3f6966584726dc1c762c2fa30d13cf0e7408abe6` |
| **Total** | **57,558,116** | **61,981** | — |

---

## 4. Signing Certificates

### 4.1 APK Signing Scheme
- **v1 Signing (JAR Signature):** Present (`META-INF/CERT.RSA`, `CERT.SF`, `MANIFEST.MF`)
- **v2 Signing (APK Signature Scheme v2):** Present in APK Signing Block
- **Signer Identity (Embedded in APK):**  
  Custom re-signed certificate generated during mod instrumentation.

### 4.2 Spoofed Production Certificate
Decoded from Base64 string in `Abdullah.hook`:
- **Subject:** `C=CN, ST=shanghai, L=shanghai, O=mi, OU=transsion, CN=tsoneroom`
- **Issuer:** `C=CN, ST=shanghai, L=shanghai, O=mi, OU=transsion, CN=tsoneroom`
- **Validity:** `2022-07-15 06:12:39` to `2121-06-21 06:12:39`
- **Public Key:** RSA 2048-bit (`MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk0YZEMSQ...`)
- **Signature Algorithm:** `SHA256withRSA`

---

## 5. Native Binary Inventory (60 Libraries)

### 64-bit ARM (`arm64-v8a`) — 30 Libraries
- `libalivcffmpeg.so` (4.87 MB) — Alibaba Cloud Player & FFmpeg decoders
- `libavcodec.so` (4.02 MB) — FFmpeg video codec library
- `libavformat.so` (2.51 MB) — FFmpeg container multiplexer/demuxer
- `libavutil.so` (593 KB) — FFmpeg core utility routines
- `libgav1JNI.so` (1.58 MB) — Google AV1 software video decoder
- `libdexloader.so` (1.42 MB) — Custom compiled modding injection engine
- `libsaasCorePlayer.so` (4.17 MB) — Core Transsion SaaS player engine
- `libsaasDownloader.so` (264 KB) — Transsnet chunked range download engine
- `libmmkv.so` (597 KB) — Tencent MMKV zero-copy key-value storage
- `libswscale.so` (602 KB) — Video image scaling and color conversion
- `libswresample.so` (89 KB) — Audio resampling and channel mixing
- `libmedia3ext.so` (233 KB) — AndroidX Media3 native player extensions
- `libmediainfo.so` (18 KB) — Media file metadata probe
- `libnms.so` (292 KB) — Security and anti-tamper verification library
- `libor_signal.so` (29 KB) — OneRoom native signal crash reporter
- `libapminsighta.so` (102 KB) / `libapminsightb.so` (124 KB) — ByteDance APM Insight
- `libbuffer_pgl.so`, `libfile_lock_pgl.so`, `libpglarmor.so` — ByteDance Pangle Ad SDK
- `libcrashlytics.so`, `libcrashlytics-handler.so`, `libcrashlytics-common.so`, `libcrashlytics-trampoline.so` — Firebase Crashlytics NDK

### 32-bit ARM (`armeabi-v7a`) — 30 Libraries
- Matching 32-bit ARM counterparts for all libraries listed above.

