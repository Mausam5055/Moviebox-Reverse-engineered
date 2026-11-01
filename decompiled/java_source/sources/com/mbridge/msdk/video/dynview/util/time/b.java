package com.mbridge.msdk.video.dynview.util.time;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f39115a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f39116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.util.time.a f39117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f39118d;

    private static class a extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.video.dynview.util.time.a f39119a;

        public a(long j11, long j12) {
            super(j11, j12);
        }

        void a(com.mbridge.msdk.video.dynview.util.time.a aVar) {
            this.f39119a = aVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            com.mbridge.msdk.video.dynview.util.time.a aVar = this.f39119a;
            if (aVar != null) {
                aVar.onFinish();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
            com.mbridge.msdk.video.dynview.util.time.a aVar = this.f39119a;
            if (aVar != null) {
                aVar.onTick(j11);
            }
        }
    }

    public b a(long j11) {
        if (j11 < 0) {
            j11 = 1000;
        }
        this.f39116b = j11;
        return this;
    }

    public b a(com.mbridge.msdk.video.dynview.util.time.a aVar) {
        this.f39117c = aVar;
        return this;
    }

    public void a() {
        a aVar = this.f39118d;
        if (aVar != null) {
            aVar.cancel();
            this.f39118d = null;
        }
    }

    public void a(long j11, com.mbridge.msdk.video.dynview.util.time.a aVar) {
        this.f39115a = j11;
        this.f39117c = aVar;
        b();
        a aVar2 = this.f39118d;
        if (aVar2 != null) {
            aVar2.start();
        }
    }

    public b b(long j11) {
        this.f39115a = j11;
        return this;
    }

    public void b() {
        a aVar = this.f39118d;
        if (aVar != null) {
            aVar.cancel();
            this.f39118d = null;
        }
        if (this.f39116b <= 0) {
            this.f39116b = this.f39115a + 1000;
        }
        a aVar2 = new a(this.f39115a, this.f39116b);
        this.f39118d = aVar2;
        aVar2.a(this.f39117c);
    }

    public void c() {
        if (this.f39118d == null) {
            b();
        }
        this.f39118d.start();
    }
}
