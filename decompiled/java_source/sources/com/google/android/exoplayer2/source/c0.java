package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.i0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class c0 implements n, Loader.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.n f25736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k.a f25737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k0 f25738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.z f25739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p.a f25740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t9.x f25741f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f25743h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final o1 f25745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f25746k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f25747l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    byte[] f25748m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f25749n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayList f25742g = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Loader f25744i = new Loader("SingleSampleMediaPeriod");

    private final class b implements t9.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f25750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f25751b;

        private b() {
        }

        private void a() {
            if (this.f25751b) {
                return;
            }
            c0.this.f25740e.i(com.google.android.exoplayer2.util.w.l(c0.this.f25745j.f25496l), c0.this.f25745j, 0, null, 0L);
            this.f25751b = true;
        }

        public void b() {
            if (this.f25750a == 2) {
                this.f25750a = 1;
            }
        }

        @Override // t9.s
        public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            a();
            c0 c0Var = c0.this;
            boolean z10 = c0Var.f25747l;
            if (z10 && c0Var.f25748m == null) {
                this.f25750a = 2;
            }
            int i12 = this.f25750a;
            if (i12 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            }
            if ((i11 & 2) != 0 || i12 == 0) {
                p1Var.f25598b = c0Var.f25745j;
                this.f25750a = 1;
                return -5;
            }
            if (!z10) {
                return -3;
            }
            com.google.android.exoplayer2.util.a.e(c0Var.f25748m);
            decoderInputBuffer.a(1);
            decoderInputBuffer.f24845e = 0L;
            if ((i11 & 4) == 0) {
                decoderInputBuffer.m(c0.this.f25749n);
                ByteBuffer byteBuffer = decoderInputBuffer.f24843c;
                c0 c0Var2 = c0.this;
                byteBuffer.put(c0Var2.f25748m, 0, c0Var2.f25749n);
            }
            if ((i11 & 1) == 0) {
                this.f25750a = 2;
            }
            return -4;
        }

        @Override // t9.s
        public boolean isReady() {
            return c0.this.f25747l;
        }

        @Override // t9.s
        public void maybeThrowError() throws IOException {
            c0 c0Var = c0.this;
            if (c0Var.f25746k) {
                return;
            }
            c0Var.f25744i.maybeThrowError();
        }

        @Override // t9.s
        public int skipData(long j11) {
            a();
            if (j11 <= 0 || this.f25750a == 2) {
                return 0;
            }
            this.f25750a = 2;
            return 1;
        }
    }

    static final class c implements Loader.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f25753a = t9.h.a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.exoplayer2.upstream.n f25754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final i0 f25755c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f25756d;

        public c(com.google.android.exoplayer2.upstream.n nVar, com.google.android.exoplayer2.upstream.k kVar) {
            this.f25754b = nVar;
            this.f25755c = new i0(kVar);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public void cancelLoad() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public void load() {
            this.f25755c.j();
            try {
                this.f25755c.a(this.f25754b);
                int i11 = 0;
                while (i11 != -1) {
                    int iF = (int) this.f25755c.f();
                    byte[] bArr = this.f25756d;
                    if (bArr == null) {
                        this.f25756d = new byte[1024];
                    } else if (iF == bArr.length) {
                        this.f25756d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    i0 i0Var = this.f25755c;
                    byte[] bArr2 = this.f25756d;
                    i11 = i0Var.read(bArr2, iF, bArr2.length - iF);
                }
            } finally {
                com.google.android.exoplayer2.upstream.m.a(this.f25755c);
            }
        }
    }

    public c0(com.google.android.exoplayer2.upstream.n nVar, com.google.android.exoplayer2.upstream.k.a aVar, k0 k0Var, o1 o1Var, long j11, com.google.android.exoplayer2.upstream.z zVar, p.a aVar2, boolean z10) {
        this.f25736a = nVar;
        this.f25737b = aVar;
        this.f25738c = k0Var;
        this.f25745j = o1Var;
        this.f25743h = j11;
        this.f25739d = zVar;
        this.f25740e = aVar2;
        this.f25746k = z10;
        this.f25741f = new t9.x(new TrackGroup(o1Var));
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            t9.s sVar = sVarArr[i11];
            if (sVar != null && (hVarArr[i11] == null || !zArr[i11])) {
                this.f25742g.remove(sVar);
                sVarArr[i11] = null;
            }
            if (sVarArr[i11] == null && hVarArr[i11] != null) {
                b bVar = new b();
                this.f25742g.add(bVar);
                sVarArr[i11] = bVar;
                zArr2[i11] = true;
            }
        }
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        if (this.f25747l || this.f25744i.i() || this.f25744i.h()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.k kVarCreateDataSource = this.f25737b.createDataSource();
        k0 k0Var = this.f25738c;
        if (k0Var != null) {
            kVarCreateDataSource.e(k0Var);
        }
        c cVar = new c(this.f25736a, kVarCreateDataSource);
        this.f25740e.A(new t9.h(cVar.f25753a, this.f25736a, this.f25744i.m(cVar, this, this.f25739d.a(1))), 1, -1, this.f25745j, 0, null, 0L, this.f25743h);
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void j(c cVar, long j11, long j12, boolean z10) {
        i0 i0Var = cVar.f25755c;
        t9.h hVar = new t9.h(cVar.f25753a, cVar.f25754b, i0Var.h(), i0Var.i(), j11, j12, i0Var.f());
        this.f25739d.b(cVar.f25753a);
        this.f25740e.r(hVar, 1, -1, null, 0, null, 0L, this.f25743h);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        aVar.h(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void l(c cVar, long j11, long j12) {
        this.f25749n = (int) cVar.f25755c.f();
        this.f25748m = (byte[]) com.google.android.exoplayer2.util.a.e(cVar.f25756d);
        this.f25747l = true;
        i0 i0Var = cVar.f25755c;
        t9.h hVar = new t9.h(cVar.f25753a, cVar.f25754b, i0Var.h(), i0Var.i(), j11, j12, this.f25749n);
        this.f25739d.b(cVar.f25753a);
        this.f25740e.u(hVar, 1, -1, this.f25745j, 0, null, 0L, this.f25743h);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Loader.c n(c cVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        i0 i0Var = cVar.f25755c;
        t9.h hVar = new t9.h(cVar.f25753a, cVar.f25754b, i0Var.h(), i0Var.i(), j11, j12, i0Var.f());
        long jC = this.f25739d.c(new com.google.android.exoplayer2.upstream.z.c(hVar, new t9.i(1, -1, this.f25745j, 0, null, 0L, p0.e1(this.f25743h)), iOException, i11));
        boolean z10 = jC == C.TIME_UNSET || i11 >= this.f25739d.a(1);
        if (this.f25746k && z10) {
            com.google.android.exoplayer2.util.s.j("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f25747l = true;
            cVarG = Loader.f27246f;
        } else {
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f27247g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f25740e.w(hVar, 1, -1, this.f25745j, 0, null, 0L, this.f25743h, iOException, !zC);
        if (!zC) {
            this.f25739d.b(cVar.f25753a);
        }
        return cVar2;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return this.f25747l ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return (this.f25747l || this.f25744i.i()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.n
    public t9.x getTrackGroups() {
        return this.f25741f;
    }

    public void h() {
        this.f25744i.k();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f25744i.i();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() {
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        for (int i11 = 0; i11 < this.f25742g.size(); i11++) {
            ((b) this.f25742g.get(i11)).b();
        }
        return j11;
    }
}
