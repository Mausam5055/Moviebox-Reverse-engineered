package com.blankj.utilcode.util;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.StatFs;
import android.text.TextUtils;
import com.cloud.tmc.miniutils.constant.RegexConstants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f20092a = System.getProperty("line.separator");

    class a implements FileFilter {
        a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return true;
        }
    }

    public static boolean a(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean b(String str) {
        return a(f(str));
    }

    public static boolean c(File file) {
        return e(file, new a());
    }

    private static boolean d(File file) {
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
                } else if (file2.isDirectory() && !d(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static boolean e(File file, FileFilter fileFilter) {
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
                    } else if (file2.isDirectory() && !d(file2)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static File f(String str) {
        if (e0.D(str)) {
            return null;
        }
        return new File(str);
    }

    public static String g(String str) {
        if (e0.D(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || str.lastIndexOf(File.separator) >= iLastIndexOf) ? "" : str.substring(iLastIndexOf + 1);
    }

    private static long h(File file) {
        if (l(file)) {
            return file.length();
        }
        return -1L;
    }

    public static long i(String str) {
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
        return h(f(str));
    }

    public static long j(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        StatFs statFs = new StatFs(str);
        return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
    }

    public static long k(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        StatFs statFs = new StatFs(str);
        return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
    }

    public static boolean l(File file) {
        return file != null && file.exists() && file.isFile();
    }

    public static boolean m(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return true;
        }
        return n(file.getAbsolutePath());
    }

    public static boolean n(String str) {
        File fileF = f(str);
        if (fileF == null) {
            return false;
        }
        if (fileF.exists()) {
            return true;
        }
        return o(str);
    }

    private static boolean o(String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = Utils.a().getContentResolver().openAssetFileDescriptor(Uri.parse(str), CampaignEx.JSON_KEY_AD_R);
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
}
