package com.apm.insight.j;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f19566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f19567b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f19568c;

    a(Handler handler, long j11) {
        this.f19566a = handler;
        this.f19568c = j11;
    }

    final void a() {
        this.f19566a.post(this);
    }

    final void a(long j11) {
        if (j11 > 0) {
            this.f19566a.postDelayed(this, j11);
        } else {
            this.f19566a.post(this);
        }
    }

    final long b() {
        return this.f19568c;
    }
}
