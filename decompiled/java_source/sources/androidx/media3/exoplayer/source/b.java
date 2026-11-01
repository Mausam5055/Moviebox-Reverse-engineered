package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements q, q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f12682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q.a f12683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a[] f12684c = new a[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f12685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f12686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f12687f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ClippingMediaSource.IllegalClippingException f12688g;

    private final class a implements g2.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g2.u f12689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f12690b;

        public a(g2.u uVar) {
            this.f12689a = uVar;
        }

        public void a() {
            this.f12690b = false;
        }

        @Override // g2.u
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            if (b.this.j()) {
                return -3;
            }
            if (this.f12690b) {
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            long bufferedPositionUs = b.this.getBufferedPositionUs();
            int iC = this.f12689a.c(s2Var, decoderInputBuffer, i11);
            if (iC == -5) {
                androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
                int i12 = rVar.H;
                if (i12 != 0 || rVar.I != 0) {
                    b bVar = b.this;
                    if (bVar.f12686e != 0) {
                        i12 = 0;
                    }
                    s2Var.f12570b = rVar.b().Z(i12).a0(bVar.f12687f == Long.MIN_VALUE ? rVar.I : 0).N();
                }
                return -5;
            }
            long j11 = b.this.f12687f;
            if (j11 == Long.MIN_VALUE || ((iC != -4 || decoderInputBuffer.f10920e < j11) && !(iC == -3 && bufferedPositionUs == Long.MIN_VALUE && !decoderInputBuffer.f10919d))) {
                return iC;
            }
            decoderInputBuffer.clear();
            decoderInputBuffer.setFlags(4);
            this.f12690b = true;
            return -4;
        }

        @Override // g2.u
        public boolean isReady() {
            return !b.this.j() && this.f12689a.isReady();
        }

        @Override // g2.u
        public void maybeThrowError() {
            this.f12689a.maybeThrowError();
        }

        @Override // g2.u
        public int skipData(long j11) {
            if (b.this.j()) {
                return -3;
            }
            return this.f12689a.skipData(j11);
        }
    }

    public b(q qVar, boolean z10, long j11, long j12) {
        this.f12682a = qVar;
        this.f12685d = z10 ? j11 : C.TIME_UNSET;
        this.f12686e = j11;
        this.f12687f = j12;
    }

    private c4 h(long j11, c4 c4Var) {
        long jQ = a1.q(c4Var.f11347a, 0L, j11 - this.f12686e);
        long j12 = c4Var.f11348b;
        long j13 = this.f12687f;
        long jQ2 = a1.q(j12, 0L, j13 == Long.MIN_VALUE ? Long.MAX_VALUE : j13 - j11);
        return (jQ == c4Var.f11347a && jQ2 == c4Var.f11348b) ? c4Var : new c4(jQ, jQ2);
    }

    private static long i(long j11, long j12, long j13) {
        long jMax = Math.max(j11, j12);
        return j13 != Long.MIN_VALUE ? Math.min(jMax, j13) : jMax;
    }

    private static boolean m(long j11, long j12, j2.z[] zVarArr) {
        if (j11 < j12) {
            return true;
        }
        if (j11 != 0) {
            for (j2.z zVar : zVarArr) {
                if (zVar != null) {
                    androidx.media3.common.r selectedFormat = zVar.getSelectedFormat();
                    if (!androidx.media3.common.y.a(selectedFormat.f10161o, selectedFormat.f10157k)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        return this.f12682a.a(v2Var);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        long j12 = this.f12686e;
        if (j11 == j12) {
            return j12;
        }
        return this.f12682a.b(j11, h(j11, c4Var));
    }

    @Override // androidx.media3.exoplayer.source.q.a
    public void c(q qVar) {
        if (this.f12688g != null) {
            return;
        }
        ((q.a) androidx.media3.common.util.a.e(this.f12683b)).c(this);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        this.f12682a.discardBuffer(j11, z10);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        this.f12684c = new a[uVarArr.length];
        g2.u[] uVarArr2 = new g2.u[uVarArr.length];
        int i11 = 0;
        while (true) {
            g2.u uVar = null;
            if (i11 >= uVarArr.length) {
                break;
            }
            a[] aVarArr = this.f12684c;
            a aVar = (a) uVarArr[i11];
            aVarArr[i11] = aVar;
            if (aVar != null) {
                uVar = aVar.f12689a;
            }
            uVarArr2[i11] = uVar;
            i11++;
        }
        long jE = this.f12682a.e(zVarArr, zArr, uVarArr2, zArr2, j11);
        long jI = i(jE, j11, this.f12687f);
        this.f12685d = (j() && m(jE, j11, zVarArr)) ? jI : C.TIME_UNSET;
        for (int i12 = 0; i12 < uVarArr.length; i12++) {
            g2.u uVar2 = uVarArr2[i12];
            if (uVar2 == null) {
                this.f12684c[i12] = null;
            } else {
                a[] aVarArr2 = this.f12684c;
                a aVar2 = aVarArr2[i12];
                if (aVar2 == null || aVar2.f12689a != uVar2) {
                    aVarArr2[i12] = new a(uVar2);
                }
            }
            uVarArr[i12] = this.f12684c[i12];
        }
        return jI;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        this.f12683b = aVar;
        this.f12682a.g(this, j11);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f12682a.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j11 = this.f12687f;
            if (j11 == Long.MIN_VALUE || bufferedPositionUs < j11) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f12682a.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j11 = this.f12687f;
            if (j11 == Long.MIN_VALUE || nextLoadPositionUs < j11) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        return this.f12682a.getTrackGroups();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f12682a.isLoading();
    }

    boolean j() {
        return this.f12685d != C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.f0.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void f(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12683b)).f(this);
    }

    public void l(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.f12688g = illegalClippingException;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.f12688g;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.f12682a.maybeThrowPrepareError();
    }

    public void n(long j11, long j12) {
        this.f12686e = j11;
        this.f12687f = j12;
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        if (!j()) {
            long discontinuity = this.f12682a.readDiscontinuity();
            return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : i(discontinuity, this.f12686e, this.f12687f);
        }
        long j11 = this.f12685d;
        this.f12685d = C.TIME_UNSET;
        long discontinuity2 = readDiscontinuity();
        return discontinuity2 != C.TIME_UNSET ? discontinuity2 : j11;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        this.f12682a.reevaluateBuffer(j11);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        this.f12685d = C.TIME_UNSET;
        for (a aVar : this.f12684c) {
            if (aVar != null) {
                aVar.a();
            }
        }
        return i(this.f12682a.seekToUs(j11), this.f12686e, this.f12687f);
    }
}
