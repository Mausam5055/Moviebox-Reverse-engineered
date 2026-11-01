package com.tencent.tinker.loader.shareutil;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.tencent.tinker.loader.TinkerRuntimeException;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public class ShareTinkerInternals {
    private static final boolean VM_IS_ART = isVmArt(System.getProperty("java.vm.version"));
    private static final boolean VM_IS_JIT = isVmJitInternal();
    private static Boolean isPatchProcess = null;
    private static Boolean isARKHotRunning = null;
    private static final String[] processName = {null};
    private static String tinkerID = null;
    private static String currentInstructionSet = null;

    public static ShareDexDiffPatchInfo changeTestDexToClassN(ShareDexDiffPatchInfo shareDexDiffPatchInfo, int i11) {
        String str;
        if (!shareDexDiffPatchInfo.rawName.startsWith("test.dex")) {
            return null;
        }
        if (i11 != 1) {
            str = "classes" + i11 + ".dex";
        } else {
            str = "classes.dex";
        }
        return new ShareDexDiffPatchInfo(str, shareDexDiffPatchInfo.path, shareDexDiffPatchInfo.destMd5InDvm, shareDexDiffPatchInfo.destMd5InArt, shareDexDiffPatchInfo.dexDiffMd5, shareDexDiffPatchInfo.oldDexCrC, shareDexDiffPatchInfo.newOrPatchedDexCrC, shareDexDiffPatchInfo.dexMode);
    }

    public static int checkPackageAndTinkerFlag(ShareSecurityCheck shareSecurityCheck, int i11) {
        if (isTinkerEnabledAll(i11)) {
            return 0;
        }
        HashMap<String, String> metaContentMap = shareSecurityCheck.getMetaContentMap();
        if (!isTinkerEnabledForDex(i11) && metaContentMap.containsKey("assets/dex_meta.txt")) {
            return -9;
        }
        if (isTinkerEnabledForNativeLib(i11) || !metaContentMap.containsKey("assets/so_meta.txt")) {
            return (isTinkerEnabledForResource(i11) || !metaContentMap.containsKey("assets/res_meta.txt")) ? 0 : -9;
        }
        return -9;
    }

    public static int checkSignatureAndTinkerID(Context context, File file, ShareSecurityCheck shareSecurityCheck) {
        if (!shareSecurityCheck.verifyPatchMetaSignature(file)) {
            return -1;
        }
        String manifestTinkerID = getManifestTinkerID(context);
        if (manifestTinkerID == null) {
            return -5;
        }
        HashMap<String, String> packagePropertiesIfPresent = shareSecurityCheck.getPackagePropertiesIfPresent();
        if (packagePropertiesIfPresent == null) {
            return -2;
        }
        String str = packagePropertiesIfPresent.get("TINKER_ID");
        if (str == null) {
            return -6;
        }
        if (manifestTinkerID.equals(str)) {
            return 0;
        }
        ShareTinkerLog.e("Tinker.TinkerInternals", "tinkerId in patch is not matched with the one in base pack, base: %s, patch: %s.", manifestTinkerID, str);
        return -7;
    }

    public static int checkTinkerPackage(Context context, int i11, File file, ShareSecurityCheck shareSecurityCheck) {
        int iCheckSignatureAndTinkerID = checkSignatureAndTinkerID(context, file, shareSecurityCheck);
        return iCheckSignatureAndTinkerID == 0 ? checkPackageAndTinkerFlag(shareSecurityCheck, i11) : iCheckSignatureAndTinkerID;
    }

    public static void cleanPatch(Context context) {
        if (context == null) {
            throw new TinkerRuntimeException("context is null");
        }
        File patchDirectory = SharePatchFileUtil.getPatchDirectory(context);
        if (!patchDirectory.exists()) {
            ShareTinkerLog.printErrStackTrace("Tinker.TinkerInternals", new Throwable(), "try to clean patch while there're not any applied patches.", new Object[0]);
            return;
        }
        File patchInfoFile = SharePatchFileUtil.getPatchInfoFile(patchDirectory.getAbsolutePath());
        if (!patchInfoFile.exists()) {
            ShareTinkerLog.printErrStackTrace("Tinker.TinkerInternals", new Throwable(), "try to clean patch while patch info file does not exist.", new Object[0]);
            return;
        }
        File patchInfoLockFile = SharePatchFileUtil.getPatchInfoLockFile(patchDirectory.getAbsolutePath());
        SharePatchInfo andCheckPropertyWithLock = SharePatchInfo.readAndCheckPropertyWithLock(patchInfoFile, patchInfoLockFile);
        if (andCheckPropertyWithLock == null) {
            ShareTinkerLog.printErrStackTrace("Tinker.TinkerInternals", new Throwable(), "fail to get patchInfo.", new Object[0]);
            return;
        }
        if (andCheckPropertyWithLock.newVersion.equals(andCheckPropertyWithLock.oldVersion)) {
            andCheckPropertyWithLock.versionToRemove = andCheckPropertyWithLock.newVersion;
        } else {
            SharePatchFileUtil.deleteDir(new File(patchDirectory, SharePatchFileUtil.getPatchVersionDirectory(andCheckPropertyWithLock.newVersion)));
            andCheckPropertyWithLock.newVersion = andCheckPropertyWithLock.oldVersion;
            andCheckPropertyWithLock.versionToRemove = "";
        }
        SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, andCheckPropertyWithLock, patchInfoLockFile);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    public static Properties fastGetPatchPackageMeta(File file) throws Throwable {
        ZipFile zipFile;
        InputStream inputStream;
        ?? r11 = 0;
        if (file != null && file.isFile()) {
            ?? r12 = (file.length() > 0L ? 1 : (file.length() == 0L ? 0 : -1));
            try {
                if (r12 != 0) {
                    try {
                        zipFile = new ZipFile(file);
                        try {
                            ZipEntry entry = zipFile.getEntry("assets/package_meta.txt");
                            if (entry == null) {
                                ShareTinkerLog.e("Tinker.TinkerInternals", "patch meta entry not found", new Object[0]);
                                SharePatchFileUtil.closeZip(zipFile);
                                return null;
                            }
                            try {
                                inputStream = zipFile.getInputStream(entry);
                                try {
                                    Properties properties = new Properties();
                                    properties.load(inputStream);
                                    SharePatchFileUtil.closeQuietly(inputStream);
                                    SharePatchFileUtil.closeZip(zipFile);
                                    return properties;
                                } catch (Throwable th2) {
                                    th = th2;
                                    SharePatchFileUtil.closeQuietly(inputStream);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = null;
                            }
                        } catch (IOException e11) {
                            e = e11;
                            ShareTinkerLog.e("Tinker.TinkerInternals", "fastGetPatchPackageMeta exception:" + e.getMessage(), new Object[0]);
                            SharePatchFileUtil.closeZip(zipFile);
                            return null;
                        }
                    } catch (IOException e12) {
                        e = e12;
                        zipFile = null;
                    } catch (Throwable th4) {
                        th = th4;
                        SharePatchFileUtil.closeZip(r11);
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                r11 = r12;
            }
        }
        ShareTinkerLog.e("Tinker.TinkerInternals", "patchFile is illegal", new Object[0]);
        return null;
    }

    public static String getCurrentInstructionSet() {
        byte b11 = 1;
        String str = currentInstructionSet;
        if (str != null) {
            return str;
        }
        try {
            Method declaredMethod = Class.forName("dalvik.system.VMRuntime").getDeclaredMethod("getCurrentInstructionSet", null);
            declaredMethod.setAccessible(true);
            currentInstructionSet = (String) declaredMethod.invoke(null, null);
        } catch (Throwable unused) {
            String str2 = Build.CPU_ABI;
            str2.hashCode();
            switch (str2.hashCode()) {
                case -1073971299:
                    b11 = !str2.equals("mips64") ? (byte) -1 : (byte) 0;
                    break;
                case -806050265:
                    if (!str2.equals("x86_64")) {
                        b11 = -1;
                    }
                    break;
                case -738963905:
                    b11 = !str2.equals("armeabi") ? (byte) -1 : (byte) 2;
                    break;
                case 117110:
                    b11 = !str2.equals("x86") ? (byte) -1 : (byte) 3;
                    break;
                case 3351711:
                    b11 = !str2.equals("mips") ? (byte) -1 : (byte) 4;
                    break;
                case 145444210:
                    b11 = !str2.equals("armeabi-v7a") ? (byte) -1 : (byte) 5;
                    break;
                case 1431565292:
                    b11 = !str2.equals("arm64-v8a") ? (byte) -1 : (byte) 6;
                    break;
                default:
                    b11 = -1;
                    break;
            }
            switch (b11) {
                case 0:
                    currentInstructionSet = "mips64";
                    break;
                case 1:
                    currentInstructionSet = "x86_64";
                    break;
                case 2:
                case 5:
                    currentInstructionSet = "arm";
                    break;
                case 3:
                    currentInstructionSet = "x86";
                    break;
                case 4:
                    currentInstructionSet = "mips";
                    break;
                case 6:
                    currentInstructionSet = "arm64";
                    break;
                default:
                    throw new IllegalStateException("Unsupported abi: " + str2);
            }
        }
        ShareTinkerLog.d("Tinker.TinkerInternals", "getCurrentInstructionSet:" + currentInstructionSet, new Object[0]);
        return currentInstructionSet;
    }

    public static String getCurrentOatMode(Context context, String str) {
        if (str.equals("changing")) {
            return isInMainProcess(context) ? "odex" : "interpet";
        }
        return str;
    }

    public static String getExceptionCauseString(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        while (true) {
            try {
                Throwable cause = th2.getCause();
                if (cause == null) {
                    th2.printStackTrace(printStream);
                    String visualString = toVisualString(byteArrayOutputStream.toString());
                    SharePatchFileUtil.closeQuietly(printStream);
                    return visualString;
                }
                th2 = cause;
            } catch (Throwable th3) {
                SharePatchFileUtil.closeQuietly(printStream);
                throw th3;
            }
        }
    }

    public static String getManifestTinkerID(Context context) {
        String str = tinkerID;
        if (str != null) {
            return str;
        }
        try {
            Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("TINKER_ID");
            if (obj != null) {
                tinkerID = String.valueOf(obj);
            } else {
                tinkerID = null;
            }
            return tinkerID;
        } catch (Exception e11) {
            ShareTinkerLog.e("Tinker.TinkerInternals", "getManifestTinkerID exception:" + e11.getMessage(), new Object[0]);
            return null;
        }
    }

    public static String getProcessName(Context context) {
        String[] strArr = processName;
        if (strArr[0] == null) {
            synchronized (strArr) {
                try {
                    if (strArr[0] == null) {
                        strArr[0] = getProcessNameInternal(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        String str = strArr[0];
        return str != null ? str : "";
    }

    @SuppressLint({"NewApi"})
    private static String getProcessNameInternal(Context context) {
        BufferedReader bufferedReader;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (isNewerOrEqualThanVersion(28, true)) {
            String processName2 = Application.getProcessName();
            if (!TextUtils.isEmpty(processName2)) {
                return processName2;
            }
        }
        if (isNewerOrEqualThanVersion(18, true)) {
            try {
                Method methodFindMethod = ShareReflectUtil.findMethod(Class.forName(ProcessUtils.ACTIVITY_THREAD), "currentProcessName", (Class<?>[]) new Class[0]);
                methodFindMethod.setAccessible(true);
                String str = (String) methodFindMethod.invoke(null, null);
                if (str != null && !str.isEmpty()) {
                    return str;
                }
            } catch (Throwable th2) {
                ShareTinkerLog.e("Tinker.TinkerInternals", "getProcessNameInternal reflect activity thread exception:" + th2.getMessage(), new Object[0]);
            }
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/self/cmdline"), StandardCharsets.US_ASCII));
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String strTrim = line.trim();
                    if (!strTrim.isEmpty()) {
                        SharePatchFileUtil.closeQuietly(bufferedReader);
                        return strTrim;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    ShareTinkerLog.e("Tinker.TinkerInternals", "getProcessNameInternal parse cmdline exception:" + th.getMessage(), new Object[0]);
                } catch (Throwable th4) {
                    SharePatchFileUtil.closeQuietly(bufferedReader);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
        }
        SharePatchFileUtil.closeQuietly(bufferedReader);
        if (context != null) {
            try {
                int iMyPid = Process.myPid();
                int iMyUid = Process.myUid();
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.pid == iMyPid && runningAppProcessInfo.uid == iMyUid) {
                            return runningAppProcessInfo.processName;
                        }
                    }
                }
            } catch (Throwable th6) {
                ShareTinkerLog.e("Tinker.TinkerInternals", "getProcessNameInternal getRunningAppProcesses exception:" + th6.getMessage(), new Object[0]);
            }
        }
        return null;
    }

    public static int getSafeModeCount(Context context) {
        String str = "safemode_count_rec_" + getProcessName(context);
        File file = new File(SharePatchFileUtil.getPatchDirectory(context), str);
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new FileInputStream(file));
            try {
                String utf = dataInputStream2.readUTF();
                if (!"safe_mode_count_1.9.15.2".equals(utf)) {
                    ShareTinkerLog.w("Tinker.TinkerInternals", "getSafeModeCount: key is not equal, expt: %s, actul: %s, return 0 instead.", "safe_mode_count_1.9.15.2", utf);
                    SharePatchFileUtil.closeQuietly(dataInputStream2);
                    return 0;
                }
                int i11 = dataInputStream2.readInt();
                ShareTinkerLog.i("Tinker.TinkerInternals", "getSafeModeCount: count: %s", Integer.valueOf(i11));
                SharePatchFileUtil.closeQuietly(dataInputStream2);
                return i11;
            } catch (Throwable unused) {
                dataInputStream = dataInputStream2;
                try {
                    ShareTinkerLog.w("Tinker.TinkerInternals", "getSafeModeCount: recFileName:" + str + " failed, return 0 instead.", new Object[0]);
                    return 0;
                } finally {
                    SharePatchFileUtil.closeQuietly(dataInputStream);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private static String getTinkerSwitchSPKey(Context context) {
        String manifestTinkerID = getManifestTinkerID(context);
        if (isNullOrNil(manifestTinkerID)) {
            manifestTinkerID = "@@";
        }
        return "tinker_enable_1.9.15.2_" + manifestTinkerID;
    }

    public static String getTypeString(int i11) {
        switch (i11) {
            case 1:
                return "patch_file";
            case 2:
                return "patch_info";
            case 3:
                return "dex";
            case 4:
                return "dex_opt";
            case 5:
                return "lib";
            case 6:
                return "resource";
            default:
                return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    public static boolean is32BitEnv() {
        String currentInstructionSet2 = getCurrentInstructionSet();
        return "arm".equals(currentInstructionSet2) || "x86".equals(currentInstructionSet2) || "mips".equals(currentInstructionSet2);
    }

    public static boolean isAfterAndroidO() {
        return Build.VERSION.SDK_INT > 25;
    }

    public static boolean isArkHotRuning() {
        Boolean bool = isARKHotRunning;
        if (bool != null) {
            return bool.booleanValue();
        }
        isARKHotRunning = Boolean.FALSE;
        try {
            Method declaredMethod = ClassLoader.getSystemClassLoader().getParent().loadClass("com.huawei.ark.app.ArkApplicationInfo").getDeclaredMethod("isRunningInArk", null);
            declaredMethod.setAccessible(true);
            isARKHotRunning = (Boolean) declaredMethod.invoke(null, null);
        } catch (ClassNotFoundException unused) {
            ShareTinkerLog.i("Tinker.TinkerInternals", "class not found exception", new Object[0]);
        } catch (IllegalAccessException unused2) {
            ShareTinkerLog.i("Tinker.TinkerInternals", "illegal access exception", new Object[0]);
        } catch (IllegalArgumentException unused3) {
            ShareTinkerLog.i("Tinker.TinkerInternals", "illegal argument exception", new Object[0]);
        } catch (NoSuchMethodException unused4) {
            ShareTinkerLog.i("Tinker.TinkerInternals", "no such method exception", new Object[0]);
        } catch (SecurityException unused5) {
            ShareTinkerLog.i("Tinker.TinkerInternals", "security exception", new Object[0]);
        } catch (InvocationTargetException unused6) {
            ShareTinkerLog.i("Tinker.TinkerInternals", "invocation target exception", new Object[0]);
        }
        return isARKHotRunning.booleanValue();
    }

    public static boolean isInMainProcess(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = applicationInfo != null ? applicationInfo.processName : null;
        if (isNullOrNil(packageName)) {
            packageName = context.getPackageName();
        }
        String processName2 = getProcessName(context);
        if (processName2 == null || processName2.length() == 0) {
            processName2 = "";
        }
        return packageName.equals(processName2);
    }

    public static boolean isInPatchProcess(Context context) {
        Boolean bool = isPatchProcess;
        if (bool != null) {
            return bool.booleanValue();
        }
        Boolean boolValueOf = Boolean.valueOf(getProcessName(context).endsWith(":patch"));
        isPatchProcess = boolValueOf;
        return boolValueOf.booleanValue();
    }

    public static boolean isNewerOrEqualThanVersion(int i11, boolean z10) {
        if (!z10) {
            return Build.VERSION.SDK_INT >= i11;
        }
        int i12 = Build.VERSION.SDK_INT;
        return i12 >= i11 || (i12 == i11 - 1 && Build.VERSION.PREVIEW_SDK_INT > 0);
    }

    public static boolean isNullOrNil(String str) {
        return str == null || str.length() <= 0;
    }

    public static boolean isOlderOrEqualThanVersion(int i11, boolean z10) {
        if (!z10) {
            return Build.VERSION.SDK_INT <= i11;
        }
        int i12 = Build.VERSION.SDK_INT;
        return i12 <= i11 || (i12 == i11 - 1 && Build.VERSION.PREVIEW_SDK_INT > 0);
    }

    public static boolean isSystemOTA(String str) {
        String str2 = Build.FINGERPRINT;
        if (str == null || str.equals("") || str2 == null || str2.equals("")) {
            ShareTinkerLog.d("Tinker.TinkerInternals", "fingerprint empty:" + str + ",current:" + str2, new Object[0]);
            return false;
        }
        if (str.equals(str2)) {
            ShareTinkerLog.d("Tinker.TinkerInternals", "same fingerprint:" + str2, new Object[0]);
            return false;
        }
        ShareTinkerLog.d("Tinker.TinkerInternals", "system OTA,fingerprint not equal:" + str + "," + str2, new Object[0]);
        return true;
    }

    public static boolean isTinkerEnableWithSharedPreferences(Context context) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences("tinker_share_config", 4).getBoolean(getTinkerSwitchSPKey(context), true);
    }

    public static boolean isTinkerEnabled(int i11) {
        return i11 != 0;
    }

    public static boolean isTinkerEnabledAll(int i11) {
        return i11 == 15;
    }

    public static boolean isTinkerEnabledForArkHot(int i11) {
        return (i11 & 8) != 0;
    }

    public static boolean isTinkerEnabledForDex(int i11) {
        return (i11 & 1) != 0;
    }

    public static boolean isTinkerEnabledForNativeLib(int i11) {
        return (i11 & 2) != 0;
    }

    public static boolean isTinkerEnabledForResource(int i11) {
        return (i11 & 4) != 0;
    }

    public static boolean isVersionInRange(int i11, int i12, boolean z10) {
        return isNewerOrEqualThanVersion(i11, z10) && isOlderOrEqualThanVersion(i12, z10);
    }

    public static boolean isVmArt() {
        return true;
    }

    private static boolean isVmArt(String str) {
        if (str == null) {
            return false;
        }
        Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
        if (!matcher.matches()) {
            return false;
        }
        try {
            int i11 = Integer.parseInt(matcher.group(1));
            return i11 > 2 || (i11 == 2 && Integer.parseInt(matcher.group(2)) >= 1);
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean isVmJit() {
        return VM_IS_JIT && Build.VERSION.SDK_INT < 24;
    }

    private static boolean isVmJitInternal() {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            String str = (String) declaredMethod.invoke(null, "dalvik.vm.usejit");
            return !isNullOrNil(str) && isNullOrNil((String) declaredMethod.invoke(null, "dalvik.vm.usejitprofiles")) && str.equals("true");
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.TinkerInternals", "isVmJitInternal ex:" + th2, new Object[0]);
        }
    }

    public static void killProcessExceptMain(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.uid == Process.myUid() && !runningAppProcessInfo.processName.equals(context.getPackageName())) {
                Process.killProcess(runningAppProcessInfo.pid);
            }
        }
    }

    public static void setSafeModeCount(Context context, int i11) {
        String str = "safemode_count_rec_" + getProcessName(context);
        File file = new File(SharePatchFileUtil.getPatchDirectory(context), str);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
        }
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream2.writeUTF("safe_mode_count_1.9.15.2");
                dataOutputStream2.writeInt(i11);
                ShareTinkerLog.i("Tinker.TinkerInternals", "setSafeModeCount: count: %s", Integer.valueOf(i11));
                SharePatchFileUtil.closeQuietly(dataOutputStream2);
            } catch (Throwable unused) {
                dataOutputStream = dataOutputStream2;
                try {
                    ShareTinkerLog.w("Tinker.TinkerInternals", "setSafeModeCount: recFileName:" + str + " failed, return 0 instead.", new Object[0]);
                } finally {
                    SharePatchFileUtil.closeQuietly(dataOutputStream);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static void setTinkerDisableWithSharedPreferences(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("tinker_share_config", 4);
        sharedPreferences.edit().putBoolean(getTinkerSwitchSPKey(context), false).commit();
    }

    public static String toVisualString(String str) {
        char[] charArray;
        if (str == null || (charArray = str.toCharArray()) == null) {
            return null;
        }
        for (int i11 = 0; i11 < charArray.length; i11++) {
            if (charArray[i11] > 127) {
                charArray[i11] = 0;
                return new String(charArray, 0, i11);
            }
        }
        return str;
    }
}
