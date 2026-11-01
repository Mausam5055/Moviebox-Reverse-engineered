package com.cloud.tmc.miniutils.util;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniutils.constant.RegexConstants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.model.AdPayload;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public final class FileUtils {
    private static final String LINE_SEP = System.getProperty("line.separator");

    public interface OnReplaceListener {
        boolean onReplace(File file, File file2);
    }

    private FileUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @SuppressLint({"DefaultLocale"})
    public static String byte2FitMemorySize(long j11) {
        return byte2FitMemorySize(j11, 3);
    }

    @SuppressLint({"DefaultLocale"})
    public static String byte2FitMemorySize(long j11, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("precision shouldn't be less than zero!");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("byteSize shouldn't be less than zero!");
        }
        if (j11 < 1024) {
            return String.format("%." + i11 + "fB", Double.valueOf(j11));
        }
        if (j11 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%." + i11 + "fKB", Double.valueOf(j11 / 1024.0d));
        }
        if (j11 < 1073741824) {
            return String.format("%." + i11 + "fMB", Double.valueOf(j11 / 1048576.0d));
        }
        return String.format("%." + i11 + "fGB", Double.valueOf(j11 / 1.073741824E9d));
    }

    public static boolean copy(File file, File file2) {
        return copy(file, file2, (OnReplaceListener) null);
    }

    public static boolean copy(File file, File file2, OnReplaceListener onReplaceListener) {
        if (file == null) {
            return false;
        }
        return file.isDirectory() ? copyDir(file, file2, onReplaceListener) : copyFile(file, file2, onReplaceListener);
    }

    public static boolean copy(String str, String str2) {
        return copy(getFileByPath(str), getFileByPath(str2), (OnReplaceListener) null);
    }

    public static boolean copy(String str, String str2, OnReplaceListener onReplaceListener) {
        return copy(getFileByPath(str), getFileByPath(str2), onReplaceListener);
    }

    private static boolean copyDir(File file, File file2, OnReplaceListener onReplaceListener) {
        return copyOrMoveDir(file, file2, onReplaceListener, false);
    }

    private static boolean copyFile(File file, File file2, OnReplaceListener onReplaceListener) {
        return copyOrMoveFile(file, file2, onReplaceListener, false);
    }

    private static boolean copyOrMoveDir(File file, File file2, OnReplaceListener onReplaceListener, boolean z10) {
        if (file == null || file2 == null) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getPath());
        String str = File.separator;
        sb2.append(str);
        String string = sb2.toString();
        String str2 = file2.getPath() + str;
        if (str2.contains(string) || !file.exists() || !file.isDirectory() || !createOrExistsDir(file2)) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file3 : fileArrListFiles) {
                File file4 = new File(str2 + file3.getName());
                if (file3.isFile()) {
                    if (!copyOrMoveFile(file3, file4, onReplaceListener, z10)) {
                        return false;
                    }
                } else if (file3.isDirectory() && !copyOrMoveDir(file3, file4, onReplaceListener, z10)) {
                    return false;
                }
            }
        }
        return !z10 || deleteDir(file);
    }

    private static boolean copyOrMoveFile(File file, File file2, OnReplaceListener onReplaceListener, boolean z10) {
        if (file != null && file2 != null && !file.equals(file2) && file.exists() && file.isFile()) {
            if (file2.exists()) {
                if (onReplaceListener != null && !onReplaceListener.onReplace(file, file2)) {
                    return true;
                }
                if (!file2.delete()) {
                    return false;
                }
            }
            if (!createOrExistsDir(file2.getParentFile())) {
                return false;
            }
            try {
                if (UtilsBridge.writeFileFromIS(file2.getAbsolutePath(), new FileInputStream(file))) {
                    return !z10 || deleteFile(file);
                }
                return false;
            } catch (FileNotFoundException e11) {
                e11.printStackTrace();
            }
        }
        return false;
    }

    public static boolean createFileByDeleteOldFile(File file) {
        if (file == null) {
            return false;
        }
        if ((file.exists() && !file.delete()) || !createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean createFileByDeleteOldFile(String str) {
        return createFileByDeleteOldFile(getFileByPath(str));
    }

    public static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean createOrExistsDir(String str) {
        return createOrExistsDir(getFileByPath(str));
    }

    public static boolean createOrExistsFile(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean createOrExistsFile(String str) {
        return createOrExistsFile(getFileByPath(str));
    }

    public static boolean delete(File file) {
        if (file == null) {
            return false;
        }
        return file.isDirectory() ? deleteDir(file) : deleteFile(file);
    }

    public static boolean delete(String str) {
        return delete(getFileByPath(str));
    }

    public static boolean deleteAllInDir(File file) {
        return deleteFilesInDirWithFilter(file, new FileFilter() { // from class: com.cloud.tmc.miniutils.util.FileUtils.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return true;
            }
        });
    }

    public static boolean deleteAllInDir(String str) {
        return deleteAllInDir(getFileByPath(str));
    }

    private static boolean deleteDir(File file) {
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    if (!file2.delete()) {
                        return false;
                    }
                } else if (file2.isDirectory() && !deleteDir(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    private static boolean deleteFile(File file) {
        return file != null && (!file.exists() || (file.isFile() && file.delete()));
    }

    public static boolean deleteFilesInDir(File file) {
        return deleteFilesInDirWithFilter(file, new FileFilter() { // from class: com.cloud.tmc.miniutils.util.FileUtils.2
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.isFile();
            }
        });
    }

    public static boolean deleteFilesInDir(String str) {
        return deleteFilesInDir(getFileByPath(str));
    }

    public static boolean deleteFilesInDirWithFilter(File file, FileFilter fileFilter) {
        if (file == null || fileFilter == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (fileFilter.accept(file2)) {
                    if (file2.isFile()) {
                        if (!file2.delete()) {
                            return false;
                        }
                    } else if (file2.isDirectory() && !deleteDir(file2)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean deleteFilesInDirWithFilter(String str, FileFilter fileFilter) {
        return deleteFilesInDirWithFilter(getFileByPath(str), fileFilter);
    }

    private static long getDirLength(File file) {
        long dirLength = 0;
        if (!isDir(file)) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                dirLength += file2.isDirectory() ? getDirLength(file2) : file2.length();
            }
        }
        return dirLength;
    }

    public static String getDirName(File file) {
        return file == null ? "" : getDirName(file.getAbsolutePath());
    }

    public static String getDirName(String str) {
        int iLastIndexOf;
        return (UtilsBridge.isSpace(str) || (iLastIndexOf = str.lastIndexOf(File.separator)) == -1) ? "" : str.substring(0, iLastIndexOf + 1);
    }

    private static String getDirSize(File file) {
        long dirLength = getDirLength(file);
        return dirLength == -1 ? "" : UtilsBridge.byte2FitMemorySize(dirLength);
    }

    public static File getFileByPath(String str) {
        if (UtilsBridge.isSpace(str)) {
            return null;
        }
        return new File(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static String getFileCharsetSimple(File file) throws Throwable {
        int i11;
        if (file == null) {
            return "";
        }
        if (isUtf8(file)) {
            return "UTF-8";
        }
        ?? r11 = 0;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    i11 = (bufferedInputStream2.read() << 8) + bufferedInputStream2.read();
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                } catch (IOException e12) {
                    e = e12;
                    bufferedInputStream = bufferedInputStream2;
                    e.printStackTrace();
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    i11 = 0;
                } catch (Throwable th2) {
                    th = th2;
                    r11 = bufferedInputStream2;
                    if (r11 != 0) {
                        try {
                            r11.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e15) {
            e = e15;
        }
        r11 = 65279;
        if (i11 != 65279) {
            return i11 != 65534 ? "GBK" : "Unicode";
        }
        return "UTF-16BE";
    }

    public static String getFileCharsetSimple(String str) {
        return getFileCharsetSimple(getFileByPath(str));
    }

    public static String getFileExtension(File file) {
        return file == null ? "" : getFileExtension(file.getPath());
    }

    public static String getFileExtension(String str) {
        if (UtilsBridge.isSpace(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || str.lastIndexOf(File.separator) >= iLastIndexOf) ? "" : str.substring(iLastIndexOf + 1);
    }

    public static long getFileLastModified(File file) {
        if (file == null) {
            return -1L;
        }
        return file.lastModified();
    }

    public static long getFileLastModified(String str) {
        return getFileLastModified(getFileByPath(str));
    }

    private static long getFileLength(File file) {
        if (isFile(file)) {
            return file.length();
        }
        return -1L;
    }

    public static long getFileLength(String str) {
        if (str.matches(RegexConstants.REGEX_URL)) {
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                httpsURLConnection.setRequestProperty("Accept-Encoding", "identity");
                httpsURLConnection.connect();
                if (httpsURLConnection.getResponseCode() == 200) {
                    return httpsURLConnection.getContentLength();
                }
                return -1L;
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
        return getFileLength(getFileByPath(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x004f -> B:45:0x005e). Please report as a decompilation issue!!! */
    public static int getFileLines(File file) throws Throwable {
        int i11 = 1;
        ?? r11 = 0;
        BufferedInputStream bufferedInputStream = null;
        r11 = 0;
        try {
            try {
                try {
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                    try {
                        byte[] bArr = new byte[1024];
                        if (!LINE_SEP.endsWith("\n")) {
                            while (true) {
                                int i12 = bufferedInputStream2.read(bArr, 0, 1024);
                                if (i12 == -1) {
                                    break;
                                }
                                for (int i13 = 0; i13 < i12; i13++) {
                                    if (bArr[i13] == 13) {
                                        i11++;
                                    }
                                }
                            }
                        } else {
                            while (true) {
                                int i14 = bufferedInputStream2.read(bArr, 0, 1024);
                                if (i14 == -1) {
                                    break;
                                }
                                for (int i15 = 0; i15 < i14; i15++) {
                                    if (bArr[i15] == 10) {
                                        i11++;
                                    }
                                }
                            }
                        }
                        bufferedInputStream2.close();
                        r11 = bArr;
                    } catch (IOException e11) {
                        e = e11;
                        bufferedInputStream = bufferedInputStream2;
                        e.printStackTrace();
                        r11 = bufferedInputStream;
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                            r11 = bufferedInputStream;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r11 = bufferedInputStream2;
                        if (r11 != 0) {
                            try {
                                r11.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (IOException e14) {
            e14.printStackTrace();
            r11 = r11;
        }
        return i11;
    }

    public static int getFileLines(String str) {
        return getFileLines(getFileByPath(str));
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0051 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @NonNull
    public static byte[] getFileMD5(File file) throws Throwable {
        if (file == null) {
            return new byte[0];
        }
        DigestInputStream digestInputStream = null;
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    DigestInputStream digestInputStream2 = new DigestInputStream(fileInputStream, MessageDigest.getInstance("MD5"));
                    try {
                        fileInputStream.close();
                        while (digestInputStream2.read(new byte[262144]) > 0) {
                        }
                        byte[] bArrDigest = digestInputStream2.getMessageDigest().digest();
                        try {
                            digestInputStream2.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return bArrDigest;
                    } catch (IOException e12) {
                        e = e12;
                        digestInputStream = digestInputStream2;
                        e.printStackTrace();
                        if (digestInputStream != null) {
                            try {
                                digestInputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        return new byte[0];
                    } catch (NoSuchAlgorithmException e14) {
                        e = e14;
                        digestInputStream = digestInputStream2;
                        e.printStackTrace();
                        if (digestInputStream != null) {
                            digestInputStream.close();
                        }
                        return new byte[0];
                    } catch (Throwable th2) {
                        th = th2;
                        digestInputStream = digestInputStream2;
                        if (digestInputStream != null) {
                            try {
                                digestInputStream.close();
                            } catch (IOException e15) {
                                e15.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (IOException e16) {
            e = e16;
        } catch (NoSuchAlgorithmException e17) {
            e = e17;
        }
    }

    @NonNull
    public static byte[] getFileMD5(String str) {
        return getFileMD5(getFileByPath(str));
    }

    public static String getFileMD5ToString(File file) {
        return UtilsBridge.bytes2HexString(getFileMD5(file));
    }

    public static String getFileMD5ToString(String str) {
        return getFileMD5ToString(UtilsBridge.isSpace(str) ? null : new File(str));
    }

    public static String getFileName(File file) {
        return file == null ? "" : getFileName(file.getAbsolutePath());
    }

    public static String getFileName(String str) {
        if (UtilsBridge.isSpace(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(File.separator);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }

    public static String getFileNameNoExtension(File file) {
        return file == null ? "" : getFileNameNoExtension(file.getPath());
    }

    public static String getFileNameNoExtension(String str) {
        if (UtilsBridge.isSpace(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        int iLastIndexOf2 = str.lastIndexOf(File.separator);
        if (iLastIndexOf2 == -1) {
            return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
        }
        return (iLastIndexOf == -1 || iLastIndexOf2 > iLastIndexOf) ? str.substring(iLastIndexOf2 + 1) : str.substring(iLastIndexOf2 + 1, iLastIndexOf);
    }

    private static String getFileSize(File file) {
        long fileLength = getFileLength(file);
        return fileLength == -1 ? "" : UtilsBridge.byte2FitMemorySize(fileLength);
    }

    public static long getFsAvailableSize(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        StatFs statFs = new StatFs(str);
        return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
    }

    public static long getFsTotalSize(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        StatFs statFs = new StatFs(str);
        return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
    }

    public static long getLength(File file) {
        if (file == null) {
            return 0L;
        }
        return file.isDirectory() ? getDirLength(file) : getFileLength(file);
    }

    public static long getLength(String str) {
        return getLength(getFileByPath(str));
    }

    public static String getSize(File file) {
        if (file == null) {
            return "";
        }
        return file.isDirectory() ? getDirSize(file) : getFileSize(file);
    }

    public static String getSize(String str) {
        return getSize(getFileByPath(str));
    }

    public static boolean isDir(File file) {
        return file != null && file.exists() && file.isDirectory();
    }

    public static boolean isDir(String str) {
        return isDir(getFileByPath(str));
    }

    public static boolean isFile(File file) {
        return file != null && file.exists() && file.isFile();
    }

    public static boolean isFile(String str) {
        return isFile(getFileByPath(str));
    }

    public static boolean isFileExists(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return true;
        }
        return isFileExists(file.getAbsolutePath());
    }

    public static boolean isFileExists(String str) {
        File fileByPath = getFileByPath(str);
        if (fileByPath == null) {
            return false;
        }
        if (fileByPath.exists()) {
            return true;
        }
        return isFileExistsApi29(str);
    }

    private static boolean isFileExistsApi29(String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = Utils.getApp().getContentResolver().openAssetFileDescriptor(Uri.parse(str), CampaignEx.JSON_KEY_AD_R);
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    return false;
                }
                try {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                    return true;
                } catch (IOException unused) {
                    return true;
                }
            } catch (FileNotFoundException unused2) {
            }
        }
        return false;
    }

    private static int isUtf8(byte[] bArr) {
        if (bArr.length > 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return 100;
        }
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int length2 = 0;
        while (i11 < length) {
            byte b11 = bArr[i11];
            if (b11 == -1 || (b11 & (-2)) == -2) {
                return 0;
            }
            if (length2 == 0) {
                if ((b11 & 127) == b11 && b11 != 0) {
                    i12++;
                } else if ((b11 & (-64)) == -64) {
                    int i14 = length2;
                    for (int i15 = 0; i15 < 8; i15++) {
                        byte b12 = (byte) (128 >> i15);
                        if ((bArr[i11] & b12) != b12) {
                            break;
                        }
                        i14 = i15;
                    }
                    i13++;
                    length2 = i14;
                }
                i11++;
            } else {
                if (bArr.length - i11 <= length2) {
                    length2 = bArr.length - i11;
                }
                boolean z10 = false;
                for (int i16 = 0; i16 < length2; i16++) {
                    byte b13 = bArr[i11 + i16];
                    if ((b13 & (-128)) != -128) {
                        if ((b13 & 127) == b13 && bArr[i11] != 0) {
                            i12++;
                        }
                        z10 = true;
                    }
                }
                if (z10) {
                    i13--;
                    i11++;
                } else {
                    i13 += length2;
                    i11 += length2;
                }
                length2 = 0;
            }
        }
        if (i12 == length) {
            return 100;
        }
        return (int) (((i13 + i12) / length) * 100.0f);
    }

    public static boolean isUtf8(File file) throws Throwable {
        if (file == null) {
            return false;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                byte[] bArr = new byte[24];
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    int i11 = bufferedInputStream2.read(bArr);
                    if (i11 == -1) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return false;
                    }
                    byte[] bArr2 = new byte[i11];
                    System.arraycopy(bArr, 0, bArr2, 0, i11);
                    boolean z10 = isUtf8(bArr2) == 100;
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    return z10;
                } catch (IOException e13) {
                    e = e13;
                    bufferedInputStream = bufferedInputStream2;
                    e.printStackTrace();
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e16) {
            e = e16;
        }
    }

    public static boolean isUtf8(String str) {
        return isUtf8(getFileByPath(str));
    }

    public static List<File> listFilesInDir(File file) {
        return listFilesInDir(file, (Comparator<File>) null);
    }

    public static List<File> listFilesInDir(File file, Comparator<File> comparator) {
        return listFilesInDir(file, false, comparator);
    }

    public static List<File> listFilesInDir(File file, boolean z10) {
        return listFilesInDir(file, z10, (Comparator<File>) null);
    }

    public static List<File> listFilesInDir(File file, boolean z10, Comparator<File> comparator) {
        return listFilesInDirWithFilter(file, new FileFilter() { // from class: com.cloud.tmc.miniutils.util.FileUtils.3
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return true;
            }
        }, z10, comparator);
    }

    public static List<File> listFilesInDir(String str) {
        return listFilesInDir(str, (Comparator<File>) null);
    }

    public static List<File> listFilesInDir(String str, Comparator<File> comparator) {
        return listFilesInDir(getFileByPath(str), false, comparator);
    }

    public static List<File> listFilesInDir(String str, boolean z10) {
        return listFilesInDir(getFileByPath(str), z10);
    }

    public static List<File> listFilesInDir(String str, boolean z10, Comparator<File> comparator) {
        return listFilesInDir(getFileByPath(str), z10, comparator);
    }

    public static List<File> listFilesInDirWithFilter(File file, FileFilter fileFilter) {
        return listFilesInDirWithFilter(file, fileFilter, false, (Comparator<File>) null);
    }

    public static List<File> listFilesInDirWithFilter(File file, FileFilter fileFilter, Comparator<File> comparator) {
        return listFilesInDirWithFilter(file, fileFilter, false, comparator);
    }

    public static List<File> listFilesInDirWithFilter(File file, FileFilter fileFilter, boolean z10) {
        return listFilesInDirWithFilter(file, fileFilter, z10, (Comparator<File>) null);
    }

    public static List<File> listFilesInDirWithFilter(File file, FileFilter fileFilter, boolean z10, Comparator<File> comparator) {
        List<File> listListFilesInDirWithFilterInner = listFilesInDirWithFilterInner(file, fileFilter, z10);
        if (comparator != null) {
            Collections.sort(listListFilesInDirWithFilterInner, comparator);
        }
        return listListFilesInDirWithFilterInner;
    }

    public static List<File> listFilesInDirWithFilter(String str, FileFilter fileFilter) {
        return listFilesInDirWithFilter(getFileByPath(str), fileFilter);
    }

    public static List<File> listFilesInDirWithFilter(String str, FileFilter fileFilter, Comparator<File> comparator) {
        return listFilesInDirWithFilter(getFileByPath(str), fileFilter, comparator);
    }

    public static List<File> listFilesInDirWithFilter(String str, FileFilter fileFilter, boolean z10) {
        return listFilesInDirWithFilter(getFileByPath(str), fileFilter, z10);
    }

    public static List<File> listFilesInDirWithFilter(String str, FileFilter fileFilter, boolean z10, Comparator<File> comparator) {
        return listFilesInDirWithFilter(getFileByPath(str), fileFilter, z10, comparator);
    }

    private static List<File> listFilesInDirWithFilterInner(File file, FileFilter fileFilter, boolean z10) {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        if (isDir(file) && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                if (fileFilter.accept(file2)) {
                    arrayList.add(file2);
                }
                if (z10 && file2.isDirectory()) {
                    arrayList.addAll(listFilesInDirWithFilterInner(file2, fileFilter, true));
                }
            }
        }
        return arrayList;
    }

    public static boolean move(File file, File file2) {
        return move(file, file2, (OnReplaceListener) null);
    }

    public static boolean move(File file, File file2, OnReplaceListener onReplaceListener) {
        if (file == null) {
            return false;
        }
        return file.isDirectory() ? moveDir(file, file2, onReplaceListener) : moveFile(file, file2, onReplaceListener);
    }

    public static boolean move(String str, String str2) {
        return move(getFileByPath(str), getFileByPath(str2), (OnReplaceListener) null);
    }

    public static boolean move(String str, String str2, OnReplaceListener onReplaceListener) {
        return move(getFileByPath(str), getFileByPath(str2), onReplaceListener);
    }

    public static boolean moveDir(File file, File file2, OnReplaceListener onReplaceListener) {
        return copyOrMoveDir(file, file2, onReplaceListener, true);
    }

    public static boolean moveFile(File file, File file2, OnReplaceListener onReplaceListener) {
        return copyOrMoveFile(file, file2, onReplaceListener, true);
    }

    public static void notifySystemToScan(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.parse(AdPayload.FILE_SCHEME + file.getAbsolutePath()));
        Utils.getApp().sendBroadcast(intent);
    }

    public static void notifySystemToScan(String str) {
        notifySystemToScan(getFileByPath(str));
    }

    public static boolean rename(File file, String str) {
        if (file == null || !file.exists() || UtilsBridge.isSpace(str)) {
            return false;
        }
        if (str.equals(file.getName())) {
            return true;
        }
        File file2 = new File(file.getParent() + File.separator + str);
        return !file2.exists() && file.renameTo(file2);
    }

    public static boolean rename(String str, String str2) {
        return rename(getFileByPath(str), str2);
    }
}
