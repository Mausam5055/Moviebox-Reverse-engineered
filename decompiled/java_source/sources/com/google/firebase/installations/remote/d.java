package com.google.firebase.installations.remote;

import com.google.firebase.installations.h;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f31946d = TimeUnit.HOURS.toMillis(24);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f31947e = TimeUnit.MINUTES.toMillis(30);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f31948a = h.c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f31949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f31950c;

    d() {
    }

    private synchronized long a(int i11) {
        if (c(i11)) {
            return (long) Math.min(Math.pow(2.0d, this.f31950c) + this.f31948a.e(), f31947e);
        }
        return f31946d;
    }

    private static boolean c(int i11) {
        return i11 == 429 || (i11 >= 500 && i11 < 600);
    }

    private static boolean d(int i11) {
        return (i11 >= 200 && i11 < 300) || i11 == 401 || i11 == 404;
    }

    private synchronized void e() {
        this.f31950c = 0;
    }

    public synchronized boolean b() {
        return this.f31950c == 0 || this.f31948a.a() > this.f31949b;
    }

    public synchronized void f(int i11) {
        if (d(i11)) {
            e();
            return;
        }
        this.f31950c++;
        this.f31949b = this.f31948a.a() + a(i11);
    }
}
