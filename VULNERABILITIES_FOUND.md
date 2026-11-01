# Security Assessment & Vulnerability Audit Report

**Target Artifact:** `moviebox-premium_v4.0.03.0930.03-an1.ca.apk`  
**Package Identifier:** `com.community.oneroom`  
**Distribution:** Modified / Unlocked by Abdullah (AN1 release)  
**Assessment Date:** November 2026  
**Auditing Standard:** OWASP Mobile Application Security Verification Standard (MASVS)  

---

## 📋 Executive Summary

A comprehensive static forensic audit was conducted on the Android application package `moviebox-premium_v4.0.03.0930.03-an1.ca.apk` (`com.community.oneroom`). The investigation identified multiple high-risk vulnerabilities, aggressive user-data collection vectors, and critical architectural backdoors introduced by third-party modding layers.

The most critical finding is an **Untrusted Remote Code Execution / Update Hijacking vector**: the app holds the `REQUEST_INSTALL_PACKAGES` permission and has had its internal update routing diverted to an unverified personal GitHub repository. If that repository is updated or compromised, arbitrary malicious APKs can be pushed to user devices.

---

## 🚨 Vulnerability Severity Matrix

| ID | Vulnerability Title | Category | Severity | CVSS v3.1 | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **VULN-01** | Unverified Remote Update Hijacking | Supply Chain / RCE | **CRITICAL** | `9.3` | Confirmed in `libdexloader.so` |
| **VULN-02** | Hardcoded Plaintext HMAC Gateway Secrets | Cryptographic Failure | **HIGH** | `7.5` | Confirmed in Manifest |
| **VULN-03** | System-Level Package Manager Reflection Proxy | Defense Evasion | **HIGH** | `7.1` | Confirmed in `Abdullah.hook` |
| **VULN-04** | Client-Side Entitlement & DRM Absence | Authorization Bypass | **HIGH** | `6.5` | Confirmed in `ORPlayer` |
| **VULN-05** | Over-Privileged Permissions & Device Profiling | Privacy Violation | **MEDIUM** | `5.8` | Confirmed in Manifest & SDKs |
| **VULN-06** | Insecure IPC & Exported Component Services | Component Security | **MEDIUM** | `5.3` | Confirmed in Manifest |

---

## 🔎 Detailed Vulnerability Findings

### VULN-01: Unverified Remote Update Hijacking & Arbitrary APK Delivery

- **Severity:** **CRITICAL** (CVSS: `9.3` — `CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H`)
- **Impacted Components:** `libdexloader.so`, `com.transsion.version.update.UpdateManager`
- **Dangerous Permission:** `android.permission.REQUEST_INSTALL_PACKAGES`

#### Description & Mechanics:
In the official Transsion release, version checks and OTA hotfixes query Transsion's remote configuration server (`https://cloud-config-api.shalltry.com`). In this modified build, the native library `libdexloader.so` intercepts the `UpdateManager` routine and redirects the update manifest query to a personal raw GitHub URL:

```
https://raw.githubusercontent.net/abpremiumapps/MovieBox/refs/heads/main/MovieBox
```

#### Code Evidence in `libdexloader.so`:
```
Embedded String in .rodata / JNI table:
https://raw.githubusercontent.net/abpremiumapps/MovieBox/refs/heads/main/MovieBox
Custom Prompt Strings:
- "NEW UPDATE"
- "PLEASE UPDATE YOUR APPS TO ENJOY NEW FEATURES"
- "UPDATE NOW"
```

#### Risk Analysis:
1. The remote endpoint has no cryptographic signature verification or certificate pinning.
2. The APK holds `android.permission.REQUEST_INSTALL_PACKAGES`, allowing it to trigger APK installation prompts directly from storage.
3. If the GitHub repository or the account holder (`abpremiumapps`) is compromised, a malicious APK payload (e.g., banking trojan, ransomware, or spyware) can be pushed to thousands of installed devices under the guise of a routine update.

---

### VULN-02: Hardcoded Plaintext HMAC API Gateway Secrets

- **Severity:** **HIGH** (CVSS: `7.5` — `CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N`)
- **Impacted Components:** `AndroidManifest.xml`, `com.transsion.api.gateway.GatewayInterceptor`

#### Description & Mechanics:
Transsion's API Gateway enforces an HMAC-SHA256 signature protocol (`x-tr-signature`) to authenticate requests sent to `https://i-api.aoneroom.com` and `https://api.hisavana.com`. However, the shared cryptographic secrets are stored directly in plaintext within `AndroidManifest.xml` `<meta-data>` tags:

```xml
<!-- Extracted from AndroidManifest.xml -->
<meta-data 
    android:name="gateway_secret_online" 
    android:value="76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O" />
<meta-data 
    android:name="gateway_secret_test" 
    android:value="Xqn2nnO41/L92o1iuXhSLHTbXvY4Z5ZZ62m8mSLA" />
```

#### Risk Analysis:
Because these keys are readable in plaintext, any external actor can construct valid HMAC signatures matching `GatewayInterceptor.doGzipOrSign()` and make authenticated requests directly to the cloud backend, scraping content catalogs, bypassing rate limits, or abusing user endpoints.

---

### VULN-03: System-Level Package Manager Reflection & Store Spoofing

- **Severity:** **HIGH** (CVSS: `7.1` — `CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N`)
- **Impacted Components:** `Abdullah.hook`, `ActivityThread.sPackageManager`

#### Description & Mechanics:
The application entry point is hijacked via `Abdullah.hook` (which subclasses `SubRoomApp`). During `attachBaseContext()`, the mod utilizes Java reflection to access internal Android runtime state and proxies `ActivityThread.sPackageManager`:

```java
// Reconstructed from Abdullah/hook.java
public class hook extends SubRoomApp implements InvocationHandler {
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        String methodName = method.getName();
        
        // 1. Spoof Google Play Store installation origin
        if ("getInstallerPackageName".equals(methodName)) {
            return "com.android.vending"; // Spoofs Play Store
        }
        
        // 2. Intercept signature validation and inject real Transsion cert
        if ("getPackageInfo".equals(methodName)) {
            PackageInfo info = (PackageInfo) method.invoke(this.base, args);
            info.signatures = a.signatures; // Injects genuine Transsion SHA-256 cert
            return info;
        }
        return method.invoke(this.base, args);
    }
}
```

#### Risk Analysis:
- Subverts Android's OS-level tampering detection mechanisms.
- Prevents anti-tamper and on-device security solutions from detecting that the application package has been altered from its official Play Store release.

---

### VULN-04: Absence of DRM & Client-Side Entitlement Gating

- **Severity:** **HIGH** (CVSS: `6.5` — `CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N`)
- **Impacted Components:** `com.transsion.player.longvideo.intercept.PlaybackInterceptionManager`, `ORPlayer`

#### Description & Mechanics:
Media streams (including 1080p and 4K UHD resolutions) are not protected by Widevine Modular DRM or hardware-backed content protection. Instead, the application relies on client-side boolean checks:

```java
// Reconstructed from PlaybackInterceptionManager.java
canNonSubscriberPlay(boolean isVip, int currentResolution, int targetResolution, PlayCallback callback)
```

The native library `libdexloader.so` hooks into `MemberProvider` and `PremiumProvider`, replacing data class accessors (`PremiumV2CheckAccessDto.getHasAccess()`) with native routines that unconditionally return `true`.

#### Risk Analysis:
The backend CDN origins (`https://v.aoneroom.com`) serve plain HLS (`.m3u8`) and DASH (`.mpd`) video chunks without session-bound hardware token verification, allowing the client-side injection to unlock all premium resolution tiers.

---

### VULN-05: Over-Privileged Permissions & Aggressive Device Profiling

- **Severity:** **MEDIUM** (CVSS: `5.8` — `CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N`)
- **Impacted Components:** `AndroidManifest.xml`, Ad Mediation SDKs, Telemetry

#### Declared High-Risk Permissions:

| Permission | Purpose Claimed | Actual Security & Privacy Threat |
| :--- | :--- | :--- |
| `android.permission.ACCESS_FINE_LOCATION` | Geotargeting | Collects precise GPS coordinates sent to third-party ad bidding networks (Pangle, Mintegral, Hisavana). |
| `android.permission.READ_PHONE_STATE` | Carrier Billing | Accesses cellular carrier identifiers (MCC/MNC), network operator details, and telephony state. |
| `android.permission.SYSTEM_ALERT_WINDOW` | Picture-in-Picture | Grants permission to render overlays over any active application on the device. |
| `android.permission.CAMERA` & `RECORD_AUDIO` | UGC Creator Studio | Captures microphone and camera feeds for short-video creation. |
| `android.permission.RECEIVE_BOOT_COMPLETED` | Service Persistence | Registers persistent background services that restart automatically upon device reboot. |

#### Continuous Data Exfiltration Endpoints:
- **`https://ire-oneid.shalltry.com` (Transsion OneID):** Unified hardware fingerprinting across all Transsion applications.
- **`https://tracking.twibida.com` (Twibida Analytics):** Ingests real-time events for every view, search query, click, and user session.

---

### VULN-06: Insecure IPC & Exported Component Services

- **Severity:** **MEDIUM** (CVSS: `5.3` — `CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:L`)
- **Impacted Components:** `AndroidManifest.xml` (`IpcMainProcessClientService`, `DownloadGuardService`)

#### Description:
Several Android services supporting inter-process communication (between the `:main` application process and the `:mini` Transsion Mini Cloud container) are declared in the manifest without explicit `signature`-level permission guards, allowing other locally installed applications on the device to send intents and bind to internal service interfaces.

---

## 🛡️ Recommended Security Remediations

### For Developers & Application Publishers:
1. **Remove Plaintext Secrets from Manifest:**
   - Migrate HMAC shared secrets into hardware-backed Android Keystore or retrieve ephemeral signed session tokens dynamically after mutual TLS (mTLS) handshake.
2. **Implement Server-Side DRM (Widevine L1 / L3):**
   - Discontinue reliance on client-side resolution gates (`canNonSubscriberPlay`). Encrypt media playlists using Widevine DRM and issue content decryption licenses strictly upon server-side entitlement validation.
3. **Adopt Google Play Integrity API:**
   - Replace local `PackageManager.getPackageInfo` certificate checks with server-verified Google Play Integrity API attestation, ensuring that modified, repacked, or non-Play Store binaries are refused backend API access.
4. **Enforce Strict Update Certificate Pinning:**
   - Sign update manifests with an offline private key and verify signatures cryptographically before initiating download routines.

### For End-Users:
- **Do not install modified / cracked application binaries:** Modded APK distributions that request `REQUEST_INSTALL_PACKAGES` can be weaponized at any time via remote updates without user re-authentication.
- **Revoke dangerous permissions:** Disallow Location and Phone State permissions under Android App Settings for applications that only require media playback capabilities.

