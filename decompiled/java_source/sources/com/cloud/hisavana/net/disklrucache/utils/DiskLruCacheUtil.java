package com.cloud.hisavana.net.disklrucache.utils;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.DiskCacheProvider;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes3.dex */
public class DiskLruCacheUtil {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static IDiskCache f21410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static IDiskCache f21411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static IDiskCache f21412e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f21408a = StandardCharsets.US_ASCII;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f21409b = StandardCharsets.UTF_8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final char[] f21413f = "0123456789abcdef".toCharArray();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final char[] f21414g = new char[64];

    private DiskLruCacheUtil() {
    }

    private static String a(byte[] bArr, char[] cArr) {
        for (int i11 = 0; i11 < bArr.length; i11++) {
            byte b11 = bArr[i11];
            int i12 = i11 * 2;
            char[] cArr2 = f21413f;
            cArr[i12] = cArr2[(b11 & 255) >>> 4];
            cArr[i12 + 1] = cArr2[b11 & 15];
        }
        return new String(cArr);
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e11) {
                c.netLog("closeQuietly --> " + Log.getStackTraceString(e11));
            }
        }
    }

    public static void c(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                c(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public static File d(int i11) {
        if (i11 != 3) {
            return i11 != 4 ? StorageUtils.a(e.a()) : StorageUtils.c(e.a(), true);
        }
        return StorageUtils.f(e.a(), true);
    }

    public static String e(String str, int i11) {
        File fileD;
        if (TextUtils.isEmpty(str) || (fileD = d(i11)) == null) {
            return "";
        }
        return fileD + File.separator + (SafeKeyUtils.b(new ImageCacheURL(str)) + ".0");
    }

    private static IDiskCache f() {
        if (f21412e == null) {
            HttpRequest httpRequest = HttpRequest.f21328a;
            f21412e = new DiskCacheProvider().b(httpRequest.f() <= 0 ? TmcConstants.LOCAL_FILE_MAX_SIZE : ((long) (httpRequest.f() * 1024)) * 1024, 4);
        }
        return f21412e;
    }

    public static synchronized IDiskCache g(int i11) {
        try {
            if (i11 == 3) {
                return i();
            }
            if (i11 != 4) {
                return h();
            }
            return f();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static IDiskCache h() {
        if (f21410c == null) {
            HttpRequest httpRequest = HttpRequest.f21328a;
            f21410c = new DiskCacheProvider().b(httpRequest.e() <= 0 ? 314572800L : ((long) (httpRequest.e() * 1024)) * 1024, 1);
        }
        return f21410c;
    }

    private static IDiskCache i() {
        if (f21411d == null) {
            HttpRequest httpRequest = HttpRequest.f21328a;
            f21411d = new DiskCacheProvider().b(httpRequest.i() <= 0 ? 157286400L : ((long) (httpRequest.i() * 1024)) * 1024, 3);
        }
        return f21411d;
    }

    public static String j(byte[] bArr) {
        String strA;
        char[] cArr = f21414g;
        synchronized (cArr) {
            strA = a(bArr, cArr);
        }
        return strA;
    }
}
