package com.journeyapps.barcodescanner.camera;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes4.dex */
class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static k f33998e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f33999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f34000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34001c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f34002d = new Object();

    private k() {
    }

    private void a() {
        synchronized (this.f34002d) {
            try {
                if (this.f33999a == null) {
                    if (this.f34001c <= 0) {
                        throw new IllegalStateException("CameraThread is not open");
                    }
                    HandlerThread handlerThread = new HandlerThread("CameraThread");
                    this.f34000b = handlerThread;
                    handlerThread.start();
                    this.f33999a = new Handler(this.f34000b.getLooper());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static k d() {
        if (f33998e == null) {
            f33998e = new k();
        }
        return f33998e;
    }

    private void f() {
        synchronized (this.f34002d) {
            this.f34000b.quit();
            this.f34000b = null;
            this.f33999a = null;
        }
    }

    protected void b() {
        synchronized (this.f34002d) {
            try {
                int i11 = this.f34001c - 1;
                this.f34001c = i11;
                if (i11 == 0) {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void c(Runnable runnable) {
        synchronized (this.f34002d) {
            a();
            this.f33999a.post(runnable);
        }
    }

    protected void e(Runnable runnable) {
        synchronized (this.f34002d) {
            this.f34001c++;
            c(runnable);
        }
    }
}
