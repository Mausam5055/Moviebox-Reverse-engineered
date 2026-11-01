package com.google.android.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

/* JADX INFO: loaded from: classes3.dex */
public class n implements t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.o f25460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f25461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f25462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f25463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f25464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f25465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f25466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f25467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f25468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f25469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f25470k;

    public n() {
        this(new com.google.android.exoplayer2.upstream.o(true, 65536), DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 5000, -1, false, 0, false);
    }

    protected n(com.google.android.exoplayer2.upstream.o oVar, int i11, int i12, int i13, int i14, int i15, boolean z10, int i16, boolean z11) {
        d(i13, 0, "bufferForPlaybackMs", "0");
        d(i14, 0, "bufferForPlaybackAfterRebufferMs", "0");
        d(i11, i13, "minBufferMs", "bufferForPlaybackMs");
        d(i11, i14, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        d(i12, i11, "maxBufferMs", "minBufferMs");
        d(i16, 0, "backBufferDurationMs", "0");
        this.f25460a = oVar;
        this.f25461b = com.google.android.exoplayer2.util.p0.B0(i11);
        this.f25462c = com.google.android.exoplayer2.util.p0.B0(i12);
        this.f25463d = com.google.android.exoplayer2.util.p0.B0(i13);
        this.f25464e = com.google.android.exoplayer2.util.p0.B0(i14);
        this.f25465f = i15;
        this.f25469j = i15 == -1 ? C.DEFAULT_VIDEO_BUFFER_SIZE : i15;
        this.f25466g = z10;
        this.f25467h = com.google.android.exoplayer2.util.p0.B0(i16);
        this.f25468i = z11;
    }

    private static void d(int i11, int i12, String str, String str2) {
        com.google.android.exoplayer2.util.a.b(i11 >= i12, str + " cannot be less than " + str2);
    }

    private static int f(int i11) {
        switch (i11) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    private void g(boolean z10) {
        int i11 = this.f25465f;
        if (i11 == -1) {
            i11 = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        this.f25469j = i11;
        this.f25470k = false;
        if (z10) {
            this.f25460a.d();
        }
    }

    @Override // com.google.android.exoplayer2.t1
    public boolean a(long j11, float f11, boolean z10, long j12) {
        long jF0 = com.google.android.exoplayer2.util.p0.f0(j11, f11);
        long jMin = z10 ? this.f25464e : this.f25463d;
        if (j12 != C.TIME_UNSET) {
            jMin = Math.min(j12 / 2, jMin);
        }
        return jMin <= 0 || jF0 >= jMin || (!this.f25466g && this.f25460a.c() >= this.f25469j);
    }

    @Override // com.google.android.exoplayer2.t1
    public void b(x2[] x2VarArr, t9.x xVar, com.google.android.exoplayer2.trackselection.h[] hVarArr) {
        int iE = this.f25465f;
        if (iE == -1) {
            iE = e(x2VarArr, hVarArr);
        }
        this.f25469j = iE;
        this.f25460a.e(iE);
    }

    @Override // com.google.android.exoplayer2.t1
    public boolean c(long j11, long j12, float f11) {
        boolean z10 = true;
        boolean z11 = this.f25460a.c() >= this.f25469j;
        long jMin = this.f25461b;
        if (f11 > 1.0f) {
            jMin = Math.min(com.google.android.exoplayer2.util.p0.a0(jMin, f11), this.f25462c);
        }
        if (j12 < Math.max(jMin, 500000L)) {
            if (!this.f25466g && z11) {
                z10 = false;
            }
            this.f25470k = z10;
            if (!z10 && j12 < 500000) {
                com.google.android.exoplayer2.util.s.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j12 >= this.f25462c || z11) {
            this.f25470k = false;
        }
        return this.f25470k;
    }

    protected int e(x2[] x2VarArr, com.google.android.exoplayer2.trackselection.h[] hVarArr) {
        int iF = 0;
        for (int i11 = 0; i11 < x2VarArr.length; i11++) {
            if (hVarArr[i11] != null) {
                iF += f(x2VarArr[i11].getTrackType());
            }
        }
        return Math.max(C.DEFAULT_VIDEO_BUFFER_SIZE, iF);
    }

    @Override // com.google.android.exoplayer2.t1
    public com.google.android.exoplayer2.upstream.b getAllocator() {
        return this.f25460a;
    }

    @Override // com.google.android.exoplayer2.t1
    public long getBackBufferDurationUs() {
        return this.f25467h;
    }

    @Override // com.google.android.exoplayer2.t1
    public void onPrepared() {
        g(false);
    }

    @Override // com.google.android.exoplayer2.t1
    public void onReleased() {
        g(true);
    }

    @Override // com.google.android.exoplayer2.t1
    public void onStopped() {
        g(true);
    }

    @Override // com.google.android.exoplayer2.t1
    public boolean retainBackBufferFromKeyframe() {
        return this.f25468i;
    }
}
