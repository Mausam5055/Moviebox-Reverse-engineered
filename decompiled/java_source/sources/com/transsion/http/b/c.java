package com.transsion.http.b;

import am.f;
import android.os.Looper;
import androidx.annotation.NonNull;
import cm.d;
import com.transsion.http.impl.DownloadCallback;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import xl.e;

/* JADX INFO: loaded from: classes5.dex */
public class c implements Runnable, Comparable<c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final wl.b f45907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final DownloadCallback f45908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f45909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f45910d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f45913g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f45914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f45915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f45916j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f f45917k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile boolean f45918l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final wl.c f45919m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f45920n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f45911e = new AtomicBoolean();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f45912f = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f45921o = 0;

    public c(wl.b bVar, DownloadCallback downloadCallback) {
        this.f45907a = bVar;
        this.f45908b = downloadCallback;
        this.f45916j = bVar.c().k();
        this.f45913g = bVar.c().m();
        this.f45909c = bVar.c().i();
        String strN = bVar.c().n();
        this.f45914h = strN;
        this.f45919m = new wl.c(strN);
    }

    private File a(f fVar) throws Throwable {
        FileOutputStream fileOutputStream;
        long j11;
        this.f45912f.a(this.f45919m);
        this.f45910d = this.f45909c + ".tmp";
        File file = new File(this.f45910d);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("can not create dir: " + parentFile.getAbsolutePath());
            }
        } else if (this.f45916j) {
            this.f45921o = file.length();
        }
        this.f45907a.c().f().put("RANGE", "bytes=" + this.f45921o + "-");
        if (c()) {
            return null;
        }
        fVar.g();
        this.f45915i = fVar.b();
        InputStream inputStreamC = fVar.c();
        File file2 = new File(this.f45910d);
        if (this.f45916j) {
            j11 = this.f45921o;
            fileOutputStream = new FileOutputStream(file2, true);
        } else {
            fileOutputStream = new FileOutputStream(file2);
            j11 = 0;
        }
        long j12 = this.f45915i + j11;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamC);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        if (c()) {
            return null;
        }
        DownloadCallback downloadCallback = this.f45908b;
        if (downloadCallback != null) {
            downloadCallback.y(this.f45917k.f(), this.f45914h, j11, j12);
        }
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = bufferedInputStream.read(bArr);
            if (i11 == -1) {
                bufferedOutputStream.flush();
                d.a(bufferedInputStream);
                d.a(bufferedOutputStream);
                this.f45912f.b(this.f45919m);
                if (!this.f45909c.equals(this.f45910d)) {
                    File file3 = new File(this.f45909c);
                    if (file2.renameTo(file3)) {
                        return file3;
                    }
                }
                return file2;
            }
            if (!file2.getParentFile().exists()) {
                d.a(bufferedInputStream);
                d.a(bufferedOutputStream);
                d.a(fileOutputStream);
                this.f45912f.b(this.f45919m);
                throw new IOException("parent be deleted!");
            }
            bufferedOutputStream.write(bArr, 0, i11);
            j11 += (long) i11;
            if (c()) {
                return null;
            }
            DownloadCallback downloadCallback2 = this.f45908b;
            if (downloadCallback2 != null) {
                downloadCallback2.y(this.f45917k.f(), this.f45914h, j11, j12);
            }
            bufferedInputStream = bufferedInputStream;
        }
    }

    private void e() {
        if (this.f45917k != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new Thread(new b(this)).start();
            } else {
                this.f45917k.a();
            }
        }
    }

    private synchronized void f() {
        DownloadCallback downloadCallback;
        if (!this.f45918l && this.f45911e.get() && (downloadCallback = this.f45908b) != null) {
            downloadCallback.e();
        }
    }

    private synchronized void g() {
        DownloadCallback downloadCallback;
        if (!this.f45918l && this.f45911e.get() && (downloadCallback = this.f45908b) != null) {
            downloadCallback.u();
        }
    }

    public void a(a aVar) {
    }

    public boolean a() {
        bm.a.f16624a.d("book", "cancel by tag");
        this.f45911e.set(true);
        f();
        e();
        return c();
    }

    public Object b() {
        return this.f45913g;
    }

    public boolean c() {
        return this.f45911e.get();
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull c cVar) {
        return 0;
    }

    public boolean d() {
        this.f45911e.set(true);
        e();
        boolean z10 = this.f45911e.get();
        if (z10) {
            g();
        }
        return z10;
    }

    @Override // java.lang.Runnable
    public void run() {
        DownloadCallback downloadCallback;
        DownloadCallback downloadCallback2;
        DownloadCallback downloadCallback3;
        DownloadCallback downloadCallback4;
        if (c()) {
            return;
        }
        DownloadCallback downloadCallback5 = this.f45908b;
        if (downloadCallback5 != null) {
            downloadCallback5.a();
        }
        f fVarD = this.f45907a.d();
        this.f45917k = fVarD;
        try {
            File fileA = a(fVarD);
            if (fileA == null || !fileA.exists() || fileA.length() <= 0) {
                if (!c() && (downloadCallback3 = this.f45908b) != null) {
                    downloadCallback3.w(fVarD.f(), this.f45914h, "file is null");
                }
            } else if (!c() && (downloadCallback4 = this.f45908b) != null) {
                downloadCallback4.A(fVarD.f(), this.f45914h, fileA);
            }
        } catch (Throwable th2) {
            try {
                File file = new File(this.f45909c);
                if (!file.exists() || file.length() <= 0) {
                    if (!c() && (downloadCallback = this.f45908b) != null) {
                        downloadCallback.w(fVarD.f(), this.f45914h, th2.getMessage());
                    }
                } else if (!c() && (downloadCallback2 = this.f45908b) != null) {
                    downloadCallback2.A(fVarD.f(), this.f45914h, file);
                }
            } catch (Throwable th3) {
                fVarD.a();
                throw th3;
            }
        }
        fVarD.a();
        if (c()) {
            return;
        }
        DownloadCallback downloadCallback6 = this.f45908b;
        if (downloadCallback6 != null) {
            downloadCallback6.b();
        }
        this.f45918l = true;
    }
}
