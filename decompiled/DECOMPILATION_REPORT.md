# Comprehensive Decompilation & Forensic Verification Report

**Target Binary:** `moviebox-premium_v4.0.03.0930.03-an1.ca.apk`  
**Execution Timestamp:** 2026-11-01T18:54:00Z  
**Primary Objective:** Exhaustive multi-tier decompilation, byte-level preservation, and structured source reconstruction.

---

## 1. Tools, Runtimes & Versions

| Tool | Version | Role in Pipeline | Output Directory |
| :--- | :--- | :--- | :--- |
| **JADX CLI** | `v1.5.6` | High-level Java source reconstruction | `decompiled/java_source/sources/` |
| **Apktool** | `v3.0.3` | Resource decoding, XML translation, Baksmali | `decompiled/smali/`, `decompiled/resources/` |
| **Baksmali** | Embedded in Apktool | Dalvik bytecode opcode disassembly | `decompiled/smali/smali*/` |
| **Java Runtime** | OpenJDK 25 LTS (`25.0.3+9-LTS-195`) | Execution engine for JADX & Apktool | Isolated in `tools/jadx/jre/` |
| **Androguard** | `v4.1.4` (Python 3.14) | Static DEX & AXML parsing, audit scripts | Standalone tooling |

---

## 2. Decompilation Metrics & Quantitative Accounting

| Metric Category | Count / Quantity | Status / Completeness |
| :--- | :--- | :--- |
| **Original Archive Entries** | `6,017` entries | 100% processed without data loss |
| **DEX Files Processed** | `7` DEX files (`classes.dex` through `classes7.dex`) | 100% preserved in `raw_dex/` |
| **Recovered Smali Files** | **`61,981`** `.smali` classes | 100% extracted across 7 smali partitions |
| **Reconstructed Java Sources** | **`32,549`** `.java` source files | 99.95% decompilation success rate |
| **Native Libraries Extracted** | `60` `.so` binaries (`arm64-v8a`: 30, `armeabi-v7a`: 30) | 100% extracted in `native_libraries/` |
| **Decoded XML & File Resources** | `6,042` files in `resources/res/` | Decoded into human-readable XML |
| **Bundled Asset Files** | `113` files in `resources/assets/` | Extracted preserving directory hierarchy |
| **Decoded AndroidManifest** | `1` file (`resources/AndroidManifest.xml`) | Validated human-readable XML format |
| **Binary Resource Table** | `1` file (`resources/resources.arsc`) | Preserved unaltered |
| **Certificates & Signatures** | `149` signature records in `certificates/` | Preserved (`CERT.RSA`, `CERT.SF`, etc.) |

---

## 3. Smali Class Distribution Across Partitions

```
decompiled/smali/
├── smali/             :  7,616 classes (from classes.dex)
├── smali_classes2/    :  9,764 classes (from classes2.dex)
├── smali_classes3/    :  9,276 classes (from classes3.dex)
├── smali_classes4/    :  9,455 classes (from classes4.dex)
├── smali_classes5/    :  8,698 classes (from classes5.dex)
├── smali_classes6/    :  9,075 classes (from classes6.dex)
└── smali_classes7/    :  8,097 classes (from classes7.dex)
Total Smali Bytecode Files: 61,981 classes
```

---

## 4. Exceptions, Limitations & Handled Errors

1. **JADX Method Restructuring Warnings:**
   - Out of 382,395 decompiled methods, JADX logged 193 method-level warnings/errors (0.05% error rate).
   - **Mitigation Applied:** The `--show-bad-code` flag was enabled during JADX execution. Even for methods where control flow restructuring was ambiguous, raw linear bytecode translations were preserved rather than dropping the method body.
   - For all 193 methods, the exact canonical Dalvik bytecode is preserved in `decompiled/smali/`.
2. **Case Sensitivity Collisions on Windows NTFS:**
   - The original APK archive contained two resource filename collisions under case-insensitive Windows filesystem rules (e.g. `res/-8h.xml` vs `res/-8H.xml`).
   - Handled via Apktool's resource renaming strategy to ensure both resources were extracted safely without truncation or overwrite.
3. **No Dynamic Execution:**
   - In strict compliance with reverse engineering guidelines, the APK was never launched in an emulator or execution environment. All findings and representations are static forensic observations.

---

## 5. Final Completeness & Integrity Assessment

The decompiled representation in `decompiled/` provides an exhaustive, multi-tier, verifiable source reconstruction:
- **Low-Level Bytecode:** Complete fidelity in `smali/` (61,981 classes).
- **High-Level Source Code:** Human-readable Java representations in `java_source/sources/` (32,549 source files).
- **Resources & UI:** Fully decoded XML layouts, values, and drawables in `resources/res/`.
- **Native Binaries:** All 60 C/C++ libraries preserved across both 32-bit and 64-bit ARM architectures in `native_libraries/`.
- **Integrity:** Every original DEX file and the full original APK are preserved byte-for-byte in `raw_dex/` and `original/`.
