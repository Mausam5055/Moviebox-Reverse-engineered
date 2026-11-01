package com.transsion.tinker.lib.custom.download;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.api.DownloadPolicy;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import ou.d;

/* JADX INFO: loaded from: classes6.dex */
public class DownloadManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f55078a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f55080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f55081d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile Thread f55085h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f55082e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f55083f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f55084g = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f55079b = new Handler(Looper.getMainLooper());

    public static final class NetworkPolicyException extends RuntimeException {
        public NetworkPolicyException(String str) {
            super(str);
        }
    }

    public interface a {
        void a(long j11, long j12);

        void b(Exception exc);

        void onSuccess(String str);
    }

    public DownloadManager(Context context) {
        this.f55080c = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.f55081d = 30000;
        this.f55078a = context.getApplicationContext();
        ou.a aVarS = ou.a.s();
        this.f55080c = aVarS.z();
        this.f55081d = aVarS.A();
    }

    private void e(String str, File file, final a aVar) throws Throwable {
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        FileOutputStream fileOutputStream = null;
        try {
            final long length = file.exists() ? file.length() : 0L;
            if (length > 0) {
                long jG = g(str);
                if (jG > 0 && length >= jG) {
                    ShareTinkerLog.i("Tinker.DownloadManager", "local file already complete (%d bytes), skip download", Long.valueOf(length));
                    return;
                }
            }
            boolean z10 = length > 0;
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            try {
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(this.f55080c);
                httpURLConnection.setReadTimeout(this.f55081d);
                if (z10) {
                    httpURLConnection.setRequestProperty("Range", "bytes=" + length + "-");
                    ShareTinkerLog.i("Tinker.DownloadManager", "resuming download from byte %d", Long.valueOf(length));
                }
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    z10 = false;
                    length = 0;
                } else if (responseCode != 206) {
                    if (responseCode != 416) {
                        throw new RuntimeException("HTTP " + responseCode);
                    }
                    ShareTinkerLog.w("Tinker.DownloadManager", "HTTP 416: range offset %d exceeds server file size, deleting partial file", Long.valueOf(length));
                    if (file.exists() && !file.delete()) {
                        try {
                            new FileOutputStream(file).close();
                        } catch (Exception unused) {
                        }
                        ShareTinkerLog.w("Tinker.DownloadManager", "HTTP 416: delete failed, truncated file instead", new Object[0]);
                    }
                    throw new RuntimeException("HTTP " + responseCode);
                }
                long contentLengthLong = httpURLConnection.getContentLengthLong();
                long j11 = contentLengthLong > 0 ? contentLengthLong + length : -1L;
                inputStream = httpURLConnection.getInputStream();
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file, z10);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int i11 = inputStream.read(bArr);
                            if (i11 == -1) {
                                try {
                                    fileOutputStream2.close();
                                } catch (Exception unused2) {
                                }
                                try {
                                    inputStream.close();
                                } catch (Exception unused3) {
                                }
                                httpURLConnection.disconnect();
                                return;
                            } else {
                                if (this.f55084g || Thread.currentThread().isInterrupted()) {
                                    throw new InterruptedException("download_cancelled");
                                }
                                fileOutputStream2.write(bArr, 0, i11);
                                length += (long) i11;
                                if (aVar != null && j11 > 0) {
                                    final long j12 = j11;
                                    this.f55079b.post(new Runnable() { // from class: ru.b
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            aVar.a(length, j12);
                                        }
                                    });
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception unused4) {
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused5) {
                            }
                        }
                        if (httpURLConnection == null) {
                            throw th;
                        }
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStream = null;
            httpURLConnection = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.net.HttpURLConnection] */
    private long g(String str) throws Throwable {
        Throwable th2;
        Exception e11;
        HttpURLConnection httpURLConnection;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                try {
                    httpURLConnection.setRequestMethod("HEAD");
                    httpURLConnection.setConnectTimeout(this.f55080c);
                    httpURLConnection.setReadTimeout(this.f55081d);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() == 200) {
                        long contentLengthLong = httpURLConnection.getContentLengthLong();
                        httpURLConnection.disconnect();
                        return contentLengthLong;
                    }
                } catch (Exception e12) {
                    e11 = e12;
                    ShareTinkerLog.w("Tinker.DownloadManager", "fetchContentLength failed: %s", e11.getMessage());
                    if (httpURLConnection == null) {
                        return -1L;
                    }
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (str != 0) {
                    str.disconnect();
                }
                throw th2;
            }
        } catch (Exception e13) {
            e11 = e13;
            httpURLConnection = null;
        } catch (Throwable th4) {
            th2 = th4;
            str = 0;
            if (str != 0) {
                str.disconnect();
            }
            throw th2;
        }
        httpURLConnection.disconnect();
        return -1L;
    }

    private boolean h() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f55078a.getSystemService("connectivity");
            if (connectivityManager == null) {
                return true;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1;
        } catch (SecurityException unused) {
            ShareTinkerLog.w("Tinker.DownloadManager", "ACCESS_NETWORK_STATE not granted, skip wifi check", new Object[0]);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(int i11, a aVar, long j11, d dVar, File file) {
        int i12 = 0;
        Exception e11 = null;
        while (i12 <= i11) {
            try {
                if (this.f55084g) {
                    m(aVar, new InterruptedException("download_cancelled"));
                    this.f55085h = null;
                    return;
                }
                if (i12 > 0) {
                    long jMin = Math.min((1 << (i12 - 1)) * j11, ou.a.s().E());
                    ShareTinkerLog.w("Tinker.DownloadManager", "retry #%d in %dms", Integer.valueOf(i12), Long.valueOf(jMin));
                    try {
                        Thread.sleep(jMin);
                    } catch (InterruptedException unused) {
                        m(aVar, new InterruptedException("download_cancelled"));
                        this.f55085h = null;
                        return;
                    }
                }
                try {
                    try {
                        try {
                            e(dVar.c(), file, aVar);
                            n(aVar, file.getAbsolutePath());
                            this.f55085h = null;
                            return;
                        } catch (Exception e12) {
                            e11 = e12;
                            i12++;
                            ShareTinkerLog.w("Tinker.DownloadManager", "download attempt %d/%d failed: %s", Integer.valueOf(i12), Integer.valueOf(i11 + 1), e11.getMessage());
                        }
                    } catch (Exception e13) {
                        e11 = e13;
                    }
                } catch (InterruptedException unused2) {
                    m(aVar, new InterruptedException("download_cancelled"));
                    this.f55085h = null;
                    return;
                }
            } catch (Throwable th2) {
                this.f55085h = null;
                throw th2;
            }
        }
        if (e11 == null) {
            e11 = new RuntimeException("Unknown error");
        }
        m(aVar, e11);
        this.f55085h = null;
    }

    private void m(final a aVar, final Exception exc) {
        if (aVar == null) {
            return;
        }
        this.f55079b.post(new Runnable() { // from class: ru.c
            @Override // java.lang.Runnable
            public final void run() {
                aVar.b(exc);
            }
        });
    }

    private void n(final a aVar, final String str) {
        if (aVar == null) {
            return;
        }
        this.f55079b.post(new Runnable() { // from class: ru.d
            @Override // java.lang.Runnable
            public final void run() {
                aVar.onSuccess(str);
            }
        });
    }

    public void f(final d dVar, File file, final a aVar) {
        int iX;
        long jY;
        if (dVar == null || dVar.c() == null || dVar.c().isEmpty()) {
            m(aVar, new IllegalArgumentException("PatchInfo or url is null"));
            return;
        }
        if (!dVar.c().toLowerCase().startsWith("https://")) {
            m(aVar, new SecurityException("Only HTTPS URLs are allowed: " + dVar.c()));
            return;
        }
        if (dVar.b() == DownloadPolicy.WIFI_ONLY && !h()) {
            m(aVar, new NetworkPolicyException("DownloadPolicy.WIFI_ONLY: current network is not Wi-Fi"));
            return;
        }
        this.f55084g = false;
        if (!file.exists() && !file.mkdirs()) {
            m(aVar, new IllegalStateException("Cannot create dir: " + file));
            return;
        }
        final File file2 = new File(file, "patch_" + dVar.f().replaceAll("[^a-zA-Z0-9._\\-]", "_") + ".apk");
        if (dVar.i() > 0 && file2.exists() && file2.length() == dVar.i()) {
            ShareTinkerLog.i("Tinker.DownloadManager", "local file already complete (size=%d), skip download", Long.valueOf(file2.length()));
            n(aVar, file2.getAbsolutePath());
            return;
        }
        ou.a aVarS = ou.a.s();
        if (dVar.g() > 0) {
            iX = dVar.g();
        } else {
            iX = this.f55082e;
            if (iX < 0) {
                iX = aVarS.x();
            }
        }
        if (dVar.h() > 0) {
            jY = dVar.h();
        } else {
            jY = this.f55083f;
            if (jY < 0) {
                jY = aVarS.y();
            }
        }
        final long j11 = jY;
        final int i11 = iX;
        Thread thread = new Thread(new Runnable() { // from class: ru.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f74711a.j(i11, aVar, j11, dVar, file2);
            }
        }, "tinker-download");
        this.f55085h = thread;
        thread.start();
    }
}
