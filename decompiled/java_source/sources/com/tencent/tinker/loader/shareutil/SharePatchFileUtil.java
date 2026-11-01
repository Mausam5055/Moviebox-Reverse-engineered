package com.tencent.tinker.loader.shareutil;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.tencent.tinker.loader.TinkerRuntimeException;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public class SharePatchFileUtil {
    private static char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static boolean checkIfMd5Valid(String str) {
        return str != null && str.length() == 32;
    }

    public static boolean checkResourceArscMd5(File file, String str) {
        ZipFile zipFile = null;
        InputStream inputStream = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                ZipEntry entry = zipFile2.getEntry("resources.arsc");
                if (entry == null) {
                    ShareTinkerLog.i("Tinker.PatchFileUtil", "checkResourceArscMd5 resources.arsc not found", new Object[0]);
                    closeZip(zipFile2);
                    return false;
                }
                try {
                    inputStream = zipFile2.getInputStream(entry);
                    String md5 = getMD5(inputStream);
                    if (md5 != null && md5.equals(str)) {
                        closeQuietly(inputStream);
                        closeZip(zipFile2);
                        return true;
                    }
                    closeQuietly(inputStream);
                    closeZip(zipFile2);
                } catch (Throwable th2) {
                    closeQuietly(inputStream);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                zipFile = zipFile2;
                try {
                    ShareTinkerLog.i("Tinker.PatchFileUtil", "checkResourceArscMd5 throwable:" + th.getMessage(), new Object[0]);
                } finally {
                    closeZip(zipFile);
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return false;
    }

    public static String checkTinkerLastUncaughtCrash(Context context) throws Throwable {
        BufferedReader bufferedReader;
        File patchLastCrashFile = getPatchLastCrashFile(context);
        BufferedReader bufferedReader2 = null;
        if (!isLegalFile(patchLastCrashFile)) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(patchLastCrashFile)));
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            closeQuietly(bufferedReader);
                            return stringBuffer.toString();
                        }
                        stringBuffer.append(line);
                        stringBuffer.append("\n");
                    } catch (Exception e11) {
                        e = e11;
                        ShareTinkerLog.e("Tinker.PatchFileUtil", "checkTinkerLastUncaughtCrash exception: " + e, new Object[0]);
                        closeQuietly(bufferedReader);
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = bufferedReader;
                }
                th = th2;
                bufferedReader2 = bufferedReader;
                closeQuietly(bufferedReader2);
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @SuppressLint({"NewApi"})
    public static void closeQuietly(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (obj instanceof Closeable) {
                ((Closeable) obj).close();
            } else if (obj instanceof AutoCloseable) {
                ((AutoCloseable) obj).close();
            } else {
                if (!(obj instanceof ZipFile)) {
                    throw new IllegalArgumentException("obj: " + obj + " cannot be closed.");
                }
                ((ZipFile) obj).close();
            }
        } catch (Throwable unused) {
        }
    }

    public static void closeZip(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException e11) {
                ShareTinkerLog.w("Tinker.PatchFileUtil", "Failed to close resource", e11);
            }
        }
    }

    public static void copyFileUsingStream(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        if (!isLegalFile(file) || file2 == null || file.getAbsolutePath().equals(file2.getAbsolutePath())) {
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2, false);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i11 = fileInputStream2.read(bArr);
                        if (i11 <= 0) {
                            closeQuietly(fileInputStream2);
                            closeQuietly(fileOutputStream);
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i11);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    closeQuietly(fileInputStream);
                    closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static final boolean deleteDir(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.isFile()) {
            safeDeleteFile(file);
            return true;
        }
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return true;
        }
        for (File file2 : fileArrListFiles) {
            deleteDir(file2);
        }
        safeDeleteFile(file);
        return true;
    }

    public static final boolean deleteDir(String str) {
        if (str == null) {
            return false;
        }
        return deleteDir(new File(str));
    }

    public static void deleteDirAsync(final File file) {
        new Thread(new Runnable() { // from class: com.tencent.tinker.loader.shareutil.SharePatchFileUtil.1
            @Override // java.lang.Runnable
            public void run() {
                SharePatchFileUtil.deleteDir(file);
            }
        }, "tinker-clean") { // from class: com.tencent.tinker.loader.shareutil.SharePatchFileUtil.2
            {
                setPriority(4);
            }
        }.start();
    }

    public static void deleteDirAsync(String str) {
        deleteDirAsync(new File(str));
    }

    public static void ensureFileDirectory(File file) {
        if (file == null) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile.exists()) {
            return;
        }
        parentFile.mkdirs();
    }

    public static long getFileOrDirectorySize(File file) {
        long fileOrDirectorySize = 0;
        if (file != null && file.exists()) {
            if (file.isFile()) {
                return file.length();
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    fileOrDirectorySize += file2.isDirectory() ? getFileOrDirectorySize(file2) : file2.length();
                }
            }
        }
        return fileOrDirectorySize;
    }

    public static String getMD5(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    String md5 = getMD5(fileInputStream);
                    closeQuietly(fileInputStream);
                    return md5;
                } catch (Exception e11) {
                    e = e11;
                    ShareTinkerLog.e("Tinker.PatchFileUtil", e.getMessage(), new Object[0]);
                    closeQuietly(fileInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                closeQuietly(fileInputStream2);
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            closeQuietly(fileInputStream2);
            throw th;
        }
    }

    public static final String getMD5(InputStream inputStream) {
        int i11;
        if (inputStream == null) {
            return null;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            StringBuilder sb2 = new StringBuilder(32);
            byte[] bArr = new byte[4096];
            while (true) {
                int i12 = bufferedInputStream.read(bArr);
                if (i12 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i12);
            }
            for (byte b11 : messageDigest.digest()) {
                sb2.append(Integer.toString((b11 & 255) + 256, 16).substring(1));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getMD5(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr = new char[bArrDigest.length * 2];
            int i11 = 0;
            for (byte b11 : bArrDigest) {
                int i12 = i11 + 1;
                char[] cArr2 = hexDigits;
                cArr[i11] = cArr2[(b11 >>> 4) & 15];
                i11 += 2;
                cArr[i12] = cArr2[b11 & 15];
            }
            return new String(cArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static File getPatchDirectory(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return null;
        }
        "oppo".equalsIgnoreCase(Build.MANUFACTURER);
        return new File(applicationInfo.dataDir, "tinker");
    }

    public static File getPatchInfoFile(String str) {
        return new File(str + "/patch_meta.info");
    }

    public static File getPatchInfoLockFile(String str) {
        return new File(str + "/info.lock");
    }

    public static File getPatchLastCrashFile(Context context) {
        File patchTempDirectory = getPatchTempDirectory(context);
        if (patchTempDirectory == null) {
            return null;
        }
        return new File(patchTempDirectory, "tinker_last_crash");
    }

    public static File getPatchTempDirectory(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return null;
        }
        return new File(applicationInfo.dataDir, "tinker_temp");
    }

    public static String getPatchVersionDirectory(String str) {
        if (str == null || str.length() != 32) {
            return null;
        }
        return "patch-" + str.substring(0, 8);
    }

    public static String getPatchVersionFile(String str) {
        if (str == null || str.length() != 32) {
            return null;
        }
        return getPatchVersionDirectory(str) + ".apk";
    }

    public static final boolean isLegalFile(File file) {
        return file != null && file.exists() && file.canRead() && file.isFile() && file.length() > 0;
    }

    public static boolean isRawDexFile(String str) {
        if (str == null) {
            return false;
        }
        return str.endsWith(".dex");
    }

    public static String loadDigestes(JarFile jarFile, JarEntry jarEntry) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        BufferedInputStream bufferedInputStream = null;
        try {
            InputStream inputStream = jarFile.getInputStream(jarEntry);
            byte[] bArr = new byte[4096];
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            while (true) {
                try {
                    int i11 = bufferedInputStream2.read(bArr);
                    if (i11 <= 0) {
                        closeQuietly(bufferedInputStream2);
                        return sb2.toString();
                    }
                    sb2.append(new String(bArr, 0, i11));
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = bufferedInputStream2;
                    closeQuietly(bufferedInputStream);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String optimizedPathFor(File file, File file2) {
        if (!ShareTinkerInternals.isAfterAndroidO()) {
            String name = file.getName();
            if (!name.endsWith(".dex")) {
                int iLastIndexOf = name.lastIndexOf(".");
                if (iLastIndexOf < 0) {
                    name = name + ".dex";
                } else {
                    StringBuilder sb2 = new StringBuilder(iLastIndexOf + 4);
                    sb2.append((CharSequence) name, 0, iLastIndexOf);
                    sb2.append(".dex");
                    name = sb2.toString();
                }
            }
            return new File(file2, name).getPath();
        }
        try {
            String currentInstructionSet = ShareTinkerInternals.getCurrentInstructionSet();
            File parentFile = file.getParentFile();
            String name2 = file.getName();
            int iLastIndexOf2 = name2.lastIndexOf(46);
            if (iLastIndexOf2 > 0) {
                name2 = name2.substring(0, iLastIndexOf2);
            }
            return parentFile.getAbsolutePath() + "/oat/" + currentInstructionSet + "/" + name2 + ".odex";
        } catch (Exception e11) {
            throw new TinkerRuntimeException("getCurrentInstructionSet fail:", e11);
        }
    }

    public static final boolean safeDeleteFile(File file) {
        boolean zDelete = true;
        if (file == null) {
            return true;
        }
        if (file.exists()) {
            ShareTinkerLog.i("Tinker.PatchFileUtil", "safeDeleteFile, try to delete path: " + file.getPath(), new Object[0]);
            zDelete = file.delete();
            if (!zDelete) {
                ShareTinkerLog.e("Tinker.PatchFileUtil", "Failed to delete file, try to delete when exit. path: " + file.getPath(), new Object[0]);
                file.deleteOnExit();
            }
        }
        return zDelete;
    }

    public static final boolean shouldAcceptEvenIfIllegal(File file) {
        String str = Build.MANUFACTURER;
        return (("vivo".equalsIgnoreCase(str) || "oppo".equalsIgnoreCase(str) || "meizu".equalsIgnoreCase(str)) || (ShareTinkerInternals.isNewerOrEqualThanVersion(29, true) || ShareTinkerInternals.isArkHotRuning())) && (!file.exists() || (file.length() > 0L ? 1 : (file.length() == 0L ? 0 : -1)) == 0);
    }

    public static boolean verifyDexFileMd5(File file, String str) {
        return verifyDexFileMd5(file, "classes.dex", str);
    }

    public static boolean verifyDexFileMd5(File file, String str, String str2) throws Throwable {
        String md5;
        if (file == null || str2 == null || str == null) {
            return false;
        }
        if (isRawDexFile(file.getName())) {
            md5 = getMD5(file);
        } else {
            ZipFile zipFile = null;
            InputStream inputStream = null;
            try {
                ZipFile zipFile2 = new ZipFile(file);
                try {
                    ZipEntry entry = zipFile2.getEntry(str);
                    if (entry == null) {
                        ShareTinkerLog.e("Tinker.PatchFileUtil", "There's no entry named: classes.dex in " + file.getAbsolutePath(), new Object[0]);
                        closeZip(zipFile2);
                        return false;
                    }
                    try {
                        inputStream = zipFile2.getInputStream(entry);
                        String md6 = getMD5(inputStream);
                        closeQuietly(inputStream);
                        md5 = md6;
                    } catch (Throwable th2) {
                        try {
                            ShareTinkerLog.e("Tinker.PatchFileUtil", "exception occurred when get md5: " + file.getAbsolutePath(), th2);
                            closeQuietly(inputStream);
                            md5 = "";
                        } catch (Throwable th3) {
                            closeQuietly(inputStream);
                            throw th3;
                        }
                    }
                    closeZip(zipFile2);
                } catch (Throwable th4) {
                    th = th4;
                    zipFile = zipFile2;
                    try {
                        ShareTinkerLog.e("Tinker.PatchFileUtil", "Bad dex jar file: " + file.getAbsolutePath(), th);
                        return false;
                    } finally {
                        closeZip(zipFile);
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
        return str2.equals(md5);
    }

    public static boolean verifyFileMd5(File file, String str) {
        String md5;
        if (str == null || (md5 = getMD5(file)) == null) {
            return false;
        }
        return str.equals(md5);
    }
}
