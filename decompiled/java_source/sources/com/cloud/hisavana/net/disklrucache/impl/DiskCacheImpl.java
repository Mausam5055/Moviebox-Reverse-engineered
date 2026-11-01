package com.cloud.hisavana.net.disklrucache.impl;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.disklrucache.DiskCacheWriteLocker;
import com.cloud.hisavana.net.disklrucache.DiskLruCache;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.disklrucache.utils.SafeKeyUtils;
import com.cloud.sdk.commonutil.util.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
public class DiskCacheImpl implements IDiskCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DiskCacheWriteLocker f21398a = new DiskCacheWriteLocker();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DiskLruCache f21399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f21400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f21401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f21402e;

    protected DiskCacheImpl(File file, long j11, int i11) {
        this.f21400c = file;
        this.f21401d = j11;
        this.f21402e = i11;
    }

    private DiskLruCache g() {
        DiskLruCache diskLruCacheT = this.f21399b;
        if (diskLruCacheT == null) {
            synchronized (DiskCacheImpl.class) {
                try {
                    diskLruCacheT = this.f21399b;
                    if (diskLruCacheT == null) {
                        File fileD = DiskLruCacheUtil.d(this.f21402e);
                        if (Log.isLoggable("ADSDK", 3)) {
                            c.netLog(" ----- getDiskLruCache: directory = " + this.f21400c + " , cacheFile = " + fileD);
                        }
                        File file = this.f21400c;
                        if (file != null) {
                            fileD = file;
                        }
                        this.f21400c = fileD;
                        diskLruCacheT = DiskLruCache.T(fileD, 1, 1, this.f21401d);
                        this.f21399b = diskLruCacheT;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return diskLruCacheT;
    }

    @Override // com.cloud.hisavana.net.disklrucache.impl.IDiskCache
    public void a(ImageCacheURL imageCacheURL) {
        try {
            g().d0(SafeKeyUtils.b(imageCacheURL));
        } catch (Exception unused) {
        }
    }

    @Override // com.cloud.hisavana.net.disklrucache.impl.IDiskCache
    public String b(ImageCacheURL imageCacheURL, byte[] bArr) {
        String strE = "";
        this.f21398a.a(imageCacheURL);
        String strB = SafeKeyUtils.b(imageCacheURL);
        OutputStream outputStreamG = null;
        try {
            try {
                if (g().v(strB) != null) {
                    DiskLruCacheUtil.b(null);
                    this.f21398a.b(imageCacheURL);
                    return null;
                }
                DiskLruCache.Editor editorT = this.f21399b.t(strB);
                if (editorT == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    outputStreamG = editorT.g(0);
                    outputStreamG.write(bArr);
                    outputStreamG.flush();
                    editorT.f();
                    this.f21399b.flush();
                    strE = DiskLruCacheUtil.e(imageCacheURL.c(), this.f21402e);
                    if (Log.isLoggable("ADSDK", 3)) {
                        c.netLog("url :" + imageCacheURL.c() + " cacheToDisk with buff: " + strE);
                    }
                    editorT.b();
                    DiskLruCacheUtil.b(outputStreamG);
                    this.f21398a.b(imageCacheURL);
                    return strE;
                } catch (Throwable th2) {
                    editorT.b();
                    throw th2;
                }
            } catch (IOException unused) {
                c.netLog("put: fail");
            }
        } catch (Throwable th3) {
            DiskLruCacheUtil.b(null);
            this.f21398a.b(imageCacheURL);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.net.disklrucache.impl.IDiskCache
    public File c(ImageCacheURL imageCacheURL) {
        return h(imageCacheURL);
    }

    @Override // com.cloud.hisavana.net.disklrucache.impl.IDiskCache
    public String d(ImageCacheURL imageCacheURL, Response response) {
        return (response == null || response.body() == null) ? "" : e(imageCacheURL, response.body().byteStream());
    }

    @Override // com.cloud.hisavana.net.disklrucache.impl.IDiskCache
    public String e(ImageCacheURL imageCacheURL, InputStream inputStream) {
        String strE = "";
        if (imageCacheURL == null || inputStream == null) {
            return "";
        }
        this.f21398a.a(imageCacheURL);
        String strB = SafeKeyUtils.b(imageCacheURL);
        try {
            try {
                if (g().v(strB) != null) {
                    DiskLruCacheUtil.b(null);
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    this.f21398a.b(imageCacheURL);
                    return null;
                }
                DiskLruCache.Editor editorT = this.f21399b.t(strB);
                if (editorT == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    OutputStream outputStreamG = editorT.g(0);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i11 = inputStream.read(bArr);
                        if (i11 == -1) {
                            break;
                        }
                        outputStreamG.write(bArr, 0, i11);
                    }
                    outputStreamG.flush();
                    editorT.f();
                    this.f21399b.flush();
                    strE = DiskLruCacheUtil.e(imageCacheURL.c(), this.f21402e);
                    if (Log.isLoggable("ADSDK", 3)) {
                        c.netLog("url :" + imageCacheURL.c() + " cacheToDisk with response: " + strE);
                    }
                    editorT.b();
                    DiskLruCacheUtil.b(outputStreamG);
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                    this.f21398a.b(imageCacheURL);
                    return strE;
                } catch (Throwable th2) {
                    editorT.b();
                    throw th2;
                }
            } catch (Exception unused3) {
                c.netLog("put: fail");
                DiskLruCacheUtil.b(null);
            }
        } catch (Throwable th3) {
            DiskLruCacheUtil.b(null);
            try {
                inputStream.close();
            } catch (IOException unused4) {
            }
            this.f21398a.b(imageCacheURL);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.net.disklrucache.impl.IDiskCache
    public boolean f(String str) {
        try {
            return g().v(SafeKeyUtils.b(new ImageCacheURL(str))) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    protected File h(ImageCacheURL imageCacheURL) {
        File fileD;
        if (TextUtils.isEmpty(imageCacheURL.c()) || (fileD = DiskLruCacheUtil.d(this.f21402e)) == null) {
            return null;
        }
        String str = SafeKeyUtils.b(imageCacheURL) + ".0";
        try {
            g().v(str);
        } catch (Exception unused) {
        }
        return new File(fileD + File.separator + str);
    }
}
