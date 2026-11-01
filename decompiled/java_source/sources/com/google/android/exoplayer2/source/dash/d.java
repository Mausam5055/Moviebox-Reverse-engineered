package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import t9.s;
import x9.f;

/* JADX INFO: loaded from: classes3.dex */
final class d implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o1 f25873a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f25875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f25876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f25877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25878f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25879g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.metadata.emsg.b f25874b = new com.google.android.exoplayer2.metadata.emsg.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f25880h = C.TIME_UNSET;

    public d(f fVar, o1 o1Var, boolean z10) {
        this.f25873a = o1Var;
        this.f25877e = fVar;
        this.f25875c = fVar.f78092b;
        d(fVar, z10);
    }

    public String a() {
        return this.f25877e.a();
    }

    public void b(long j11) {
        int iE = p0.e(this.f25875c, j11, true, false);
        this.f25879g = iE;
        if (!this.f25876d || iE != this.f25875c.length) {
            j11 = C.TIME_UNSET;
        }
        this.f25880h = j11;
    }

    @Override // t9.s
    public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        int i12 = this.f25879g;
        boolean z10 = i12 == this.f25875c.length;
        if (z10 && !this.f25876d) {
            decoderInputBuffer.k(4);
            return -4;
        }
        if ((i11 & 2) != 0 || !this.f25878f) {
            p1Var.f25598b = this.f25873a;
            this.f25878f = true;
            return -5;
        }
        if (z10) {
            return -3;
        }
        if ((i11 & 1) == 0) {
            this.f25879g = i12 + 1;
        }
        if ((i11 & 4) == 0) {
            byte[] bArrA = this.f25874b.a(this.f25877e.f78091a[i12]);
            decoderInputBuffer.m(bArrA.length);
            decoderInputBuffer.f24843c.put(bArrA);
        }
        decoderInputBuffer.f24845e = this.f25875c[i12];
        decoderInputBuffer.k(1);
        return -4;
    }

    public void d(f fVar, boolean z10) {
        int i11 = this.f25879g;
        long j11 = i11 == 0 ? -9223372036854775807L : this.f25875c[i11 - 1];
        this.f25876d = z10;
        this.f25877e = fVar;
        long[] jArr = fVar.f78092b;
        this.f25875c = jArr;
        long j12 = this.f25880h;
        if (j12 != C.TIME_UNSET) {
            b(j12);
        } else if (j11 != C.TIME_UNSET) {
            this.f25879g = p0.e(jArr, j11, false, false);
        }
    }

    @Override // t9.s
    public boolean isReady() {
        return true;
    }

    @Override // t9.s
    public void maybeThrowError() {
    }

    @Override // t9.s
    public int skipData(long j11) {
        int iMax = Math.max(this.f25879g, p0.e(this.f25875c, j11, true, false));
        int i11 = iMax - this.f25879g;
        this.f25879g = iMax;
        return i11;
    }
}
