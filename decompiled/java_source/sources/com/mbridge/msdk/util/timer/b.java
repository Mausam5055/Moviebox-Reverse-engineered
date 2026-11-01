package com.mbridge.msdk.util.timer;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.util.timer.a f38765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f38767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f38768d = 0;

    private static class a extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.util.timer.a f38769a;

        public a(long j11, long j12) {
            super(j11, j12);
        }

        void a(com.mbridge.msdk.util.timer.a aVar) {
            this.f38769a = aVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            com.mbridge.msdk.util.timer.a aVar = this.f38769a;
            if (aVar != null) {
                aVar.onFinish();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
            com.mbridge.msdk.util.timer.a aVar = this.f38769a;
            if (aVar != null) {
                aVar.onTick(j11);
            }
        }
    }

    public b a(long j11) {
        if (j11 < 0) {
            j11 = 1000;
        }
        this.f38766b = j11;
        return this;
    }

    public b a(com.mbridge.msdk.util.timer.a aVar) {
        this.f38765a = aVar;
        return this;
    }

    public void a() {
        a aVar = this.f38767c;
        if (aVar != null) {
            aVar.cancel();
            this.f38767c = null;
        }
    }

    public b b(long j11) {
        this.f38768d = j11;
        return this;
    }

    public void b() {
        a aVar = this.f38767c;
        if (aVar != null) {
            aVar.cancel();
            this.f38767c = null;
        }
        if (this.f38766b <= 0) {
            this.f38766b = this.f38768d + 1000;
        }
        a aVar2 = new a(this.f38768d, this.f38766b);
        this.f38767c = aVar2;
        aVar2.a(this.f38765a);
    }

    public void c() {
        if (this.f38767c == null) {
            b();
        }
        this.f38767c.start();
    }
}
