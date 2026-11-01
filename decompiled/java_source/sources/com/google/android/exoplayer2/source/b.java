package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements n, n.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f25716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n.a f25717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a[] f25718c = new a[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f25719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f25720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f25721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ClippingMediaSource.IllegalClippingException f25722g;

    private final class a implements t9.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t9.s f25723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f25724b;

        public a(t9.s sVar) {
            this.f25723a = sVar;
        }

        public void a() {
            this.f25724b = false;
        }

        @Override // t9.s
        public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            if (b.this.f()) {
                return -3;
            }
            if (this.f25724b) {
                decoderInputBuffer.k(4);
                return -4;
            }
            int iC = this.f25723a.c(p1Var, decoderInputBuffer, i11);
            if (iC == -5) {
                o1 o1Var = (o1) com.google.android.exoplayer2.util.a.e(p1Var.f25598b);
                int i12 = o1Var.B;
                if (i12 != 0 || o1Var.C != 0) {
                    b bVar = b.this;
                    if (bVar.f25720e != 0) {
                        i12 = 0;
                    }
                    p1Var.f25598b = o1Var.b().N(i12).O(bVar.f25721f == Long.MIN_VALUE ? o1Var.C : 0).E();
                }
                return -5;
            }
            b bVar2 = b.this;
            long j11 = bVar2.f25721f;
            if (j11 == Long.MIN_VALUE || ((iC != -4 || decoderInputBuffer.f24845e < j11) && !(iC == -3 && bVar2.getBufferedPositionUs() == Long.MIN_VALUE && !decoderInputBuffer.f24844d))) {
                return iC;
            }
            decoderInputBuffer.b();
            decoderInputBuffer.k(4);
            this.f25724b = true;
            return -4;
        }

        @Override // t9.s
        public boolean isReady() {
            return !b.this.f() && this.f25723a.isReady();
        }

        @Override // t9.s
        public void maybeThrowError() {
            this.f25723a.maybeThrowError();
        }

        @Override // t9.s
        public int skipData(long j11) {
            if (b.this.f()) {
                return -3;
            }
            return this.f25723a.skipData(j11);
        }
    }

    public b(n nVar, boolean z10, long j11, long j12) {
        this.f25716a = nVar;
        this.f25719d = z10 ? j11 : C.TIME_UNSET;
        this.f25720e = j11;
        this.f25721f = j12;
    }

    private c3 c(long j11, c3 c3Var) {
        long jR = p0.r(c3Var.f24835a, 0L, j11 - this.f25720e);
        long j12 = c3Var.f24836b;
        long j13 = this.f25721f;
        long jR2 = p0.r(j12, 0L, j13 == Long.MIN_VALUE ? Long.MAX_VALUE : j13 - j11);
        return (jR == c3Var.f24835a && jR2 == c3Var.f24836b) ? c3Var : new c3(jR, jR2);
    }

    private static boolean k(long j11, com.google.android.exoplayer2.trackselection.h[] hVarArr) {
        if (j11 != 0) {
            for (com.google.android.exoplayer2.trackselection.h hVar : hVarArr) {
                if (hVar != null) {
                    o1 selectedFormat = hVar.getSelectedFormat();
                    if (!com.google.android.exoplayer2.util.w.a(selectedFormat.f25496l, selectedFormat.f25493i)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        long j12 = this.f25720e;
        if (j11 == j12) {
            return j12;
        }
        return this.f25716a.a(j11, c(j11, c3Var));
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        long j12;
        boolean z10;
        this.f25718c = new a[sVarArr.length];
        t9.s[] sVarArr2 = new t9.s[sVarArr.length];
        int i11 = 0;
        while (true) {
            t9.s sVar = null;
            if (i11 >= sVarArr.length) {
                break;
            }
            a[] aVarArr = this.f25718c;
            a aVar = (a) sVarArr[i11];
            aVarArr[i11] = aVar;
            if (aVar != null) {
                sVar = aVar.f25723a;
            }
            sVarArr2[i11] = sVar;
            i11++;
        }
        long jB = this.f25716a.b(hVarArr, zArr, sVarArr2, zArr2, j11);
        if (f()) {
            long j13 = this.f25720e;
            if (j11 == j13 && k(j13, hVarArr)) {
                j12 = jB;
            } else {
                j12 = C.TIME_UNSET;
            }
        } else {
            j12 = C.TIME_UNSET;
        }
        this.f25719d = j12;
        if (jB != j11) {
            if (jB >= this.f25720e) {
                long j14 = this.f25721f;
                z10 = j14 == Long.MIN_VALUE || jB <= j14;
            }
        }
        com.google.android.exoplayer2.util.a.g(z10);
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            t9.s sVar2 = sVarArr2[i12];
            if (sVar2 == null) {
                this.f25718c[i12] = null;
            } else {
                a[] aVarArr2 = this.f25718c;
                a aVar2 = aVarArr2[i12];
                if (aVar2 == null || aVar2.f25723a != sVar2) {
                    aVarArr2[i12] = new a(sVar2);
                }
            }
            sVarArr[i12] = this.f25718c[i12];
        }
        return jB;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        return this.f25716a.continueLoading(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        this.f25716a.discardBuffer(j11, z10);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        this.f25717b = aVar;
        this.f25716a.e(this, j11);
    }

    boolean f() {
        return this.f25719d != C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f25716a.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j11 = this.f25721f;
            if (j11 == Long.MIN_VALUE || bufferedPositionUs < j11) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f25716a.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j11 = this.f25721f;
            if (j11 == Long.MIN_VALUE || nextLoadPositionUs < j11) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.n
    public t9.x getTrackGroups() {
        return this.f25716a.getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void h(n nVar) {
        if (this.f25722g != null) {
            return;
        }
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25717b)).h(this);
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void g(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25717b)).g(this);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f25716a.isLoading();
    }

    public void j(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.f25722g = illegalClippingException;
    }

    public void l(long j11, long j12) {
        this.f25720e = j11;
        this.f25721f = j12;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.f25722g;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.f25716a.maybeThrowPrepareError();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        if (f()) {
            long j11 = this.f25719d;
            this.f25719d = C.TIME_UNSET;
            long discontinuity = readDiscontinuity();
            return discontinuity != C.TIME_UNSET ? discontinuity : j11;
        }
        long discontinuity2 = this.f25716a.readDiscontinuity();
        if (discontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        com.google.android.exoplayer2.util.a.g(discontinuity2 >= this.f25720e);
        long j12 = this.f25721f;
        com.google.android.exoplayer2.util.a.g(j12 == Long.MIN_VALUE || discontinuity2 <= j12);
        return discontinuity2;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        this.f25716a.reevaluateBuffer(j11);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        this.f25719d = C.TIME_UNSET;
        boolean z10 = false;
        for (a aVar : this.f25718c) {
            if (aVar != null) {
                aVar.a();
            }
        }
        long jSeekToUs = this.f25716a.seekToUs(j11);
        if (jSeekToUs == j11) {
            z10 = true;
        } else if (jSeekToUs >= this.f25720e) {
            long j12 = this.f25721f;
            if (j12 == Long.MIN_VALUE || jSeekToUs <= j12) {
                z10 = true;
            }
        }
        com.google.android.exoplayer2.util.a.g(z10);
        return jSeekToUs;
    }
}
