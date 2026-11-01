package androidx.media3.exoplayer.source;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class k0 implements q, q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q f12846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f12847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private q.a f12848c;

    private static final class a implements g2.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g2.u f12849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f12850b;

        public a(g2.u uVar, long j11) {
            this.f12849a = uVar;
            this.f12850b = j11;
        }

        public g2.u a() {
            return this.f12849a;
        }

        @Override // g2.u
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            int iC = this.f12849a.c(s2Var, decoderInputBuffer, i11);
            if (iC == -4) {
                decoderInputBuffer.f10920e += this.f12850b;
            }
            return iC;
        }

        @Override // g2.u
        public boolean isReady() {
            return this.f12849a.isReady();
        }

        @Override // g2.u
        public void maybeThrowError() {
            this.f12849a.maybeThrowError();
        }

        @Override // g2.u
        public int skipData(long j11) {
            return this.f12849a.skipData(j11 - this.f12850b);
        }
    }

    public k0(q qVar, long j11) {
        this.f12846a = qVar;
        this.f12847b = j11;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        return this.f12846a.a(v2Var.a().f(v2Var.f13050a - this.f12847b).d());
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        return this.f12846a.b(j11 - this.f12847b, c4Var) + this.f12847b;
    }

    @Override // androidx.media3.exoplayer.source.q.a
    public void c(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12848c)).c(this);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        this.f12846a.discardBuffer(j11 - this.f12847b, z10);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        g2.u[] uVarArr2 = new g2.u[uVarArr.length];
        int i11 = 0;
        while (true) {
            g2.u uVarA = null;
            if (i11 >= uVarArr.length) {
                break;
            }
            a aVar = (a) uVarArr[i11];
            if (aVar != null) {
                uVarA = aVar.a();
            }
            uVarArr2[i11] = uVarA;
            i11++;
        }
        long jE = this.f12846a.e(zVarArr, zArr, uVarArr2, zArr2, j11 - this.f12847b);
        for (int i12 = 0; i12 < uVarArr.length; i12++) {
            g2.u uVar = uVarArr2[i12];
            if (uVar == null) {
                uVarArr[i12] = null;
            } else {
                g2.u uVar2 = uVarArr[i12];
                if (uVar2 == null || ((a) uVar2).a() != uVar) {
                    uVarArr[i12] = new a(uVar, this.f12847b);
                }
            }
        }
        return jE + this.f12847b;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        this.f12848c = aVar;
        this.f12846a.g(this, j11 - this.f12847b);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f12846a.getBufferedPositionUs();
        if (bufferedPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f12847b + bufferedPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f12846a.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f12847b + nextLoadPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        return this.f12846a.getTrackGroups();
    }

    public q h() {
        return this.f12846a;
    }

    @Override // androidx.media3.exoplayer.source.f0.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void f(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12848c)).f(this);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f12846a.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
        this.f12846a.maybeThrowPrepareError();
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        long discontinuity = this.f12846a.readDiscontinuity();
        return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : this.f12847b + discontinuity;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        this.f12846a.reevaluateBuffer(j11 - this.f12847b);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        return this.f12846a.seekToUs(j11 - this.f12847b) + this.f12847b;
    }
}
