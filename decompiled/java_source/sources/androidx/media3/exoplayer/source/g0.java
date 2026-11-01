package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class g0 implements q, Loader.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w1.h f12774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.datasource.a.InterfaceC0091a f12775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w1.n f12776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f12777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s.a f12778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g2.z f12779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayList f12780g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f12781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Loader f12782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final androidx.media3.common.r f12783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f12784k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f12785l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    byte[] f12786m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f12787n;

    private final class b implements g2.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f12789b;

        private b() {
        }

        private void a() {
            if (this.f12789b) {
                return;
            }
            g0.this.f12778e.j(androidx.media3.common.y.k(g0.this.f12783j.f10161o), g0.this.f12783j, 0, null, 0L);
            this.f12789b = true;
        }

        public void b() {
            if (this.f12788a == 2) {
                this.f12788a = 1;
            }
        }

        @Override // g2.u
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            a();
            g0 g0Var = g0.this;
            boolean z10 = g0Var.f12785l;
            if (z10 && g0Var.f12786m == null) {
                this.f12788a = 2;
            }
            int i12 = this.f12788a;
            if (i12 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i11 & 2) != 0 || i12 == 0) {
                s2Var.f12570b = g0Var.f12783j;
                this.f12788a = 1;
                return -5;
            }
            if (!z10) {
                return -3;
            }
            androidx.media3.common.util.a.e(g0Var.f12786m);
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.f10920e = 0L;
            if ((i11 & 4) == 0) {
                decoderInputBuffer.b(g0.this.f12787n);
                ByteBuffer byteBuffer = decoderInputBuffer.f10918c;
                g0 g0Var2 = g0.this;
                byteBuffer.put(g0Var2.f12786m, 0, g0Var2.f12787n);
            }
            if ((i11 & 1) == 0) {
                this.f12788a = 2;
            }
            return -4;
        }

        @Override // g2.u
        public boolean isReady() {
            return g0.this.f12785l;
        }

        @Override // g2.u
        public void maybeThrowError() throws IOException {
            g0 g0Var = g0.this;
            if (g0Var.f12784k) {
                return;
            }
            g0Var.f12782i.maybeThrowError();
        }

        @Override // g2.u
        public int skipData(long j11) {
            a();
            if (j11 <= 0 || this.f12788a == 2) {
                return 0;
            }
            this.f12788a = 2;
            return 1;
        }
    }

    static final class c implements Loader.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f12791a = g2.i.a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w1.h f12792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final w1.l f12793c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f12794d;

        public c(w1.h hVar, androidx.media3.datasource.a aVar) {
            this.f12792b = hVar;
            this.f12793c = new w1.l(aVar);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.d
        public void cancelLoad() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.d
        public void load() {
            this.f12793c.g();
            try {
                this.f12793c.a(this.f12792b);
                int i11 = 0;
                while (i11 != -1) {
                    int iD = (int) this.f12793c.d();
                    byte[] bArr = this.f12794d;
                    if (bArr == null) {
                        this.f12794d = new byte[1024];
                    } else if (iD == bArr.length) {
                        this.f12794d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    w1.l lVar = this.f12793c;
                    byte[] bArr2 = this.f12794d;
                    i11 = lVar.read(bArr2, iD, bArr2.length - iD);
                }
            } finally {
                w1.g.a(this.f12793c);
            }
        }
    }

    public g0(w1.h hVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, w1.n nVar, androidx.media3.common.r rVar, long j11, androidx.media3.exoplayer.upstream.m mVar, s.a aVar, boolean z10, androidx.media3.exoplayer.util.c cVar) {
        this.f12774a = hVar;
        this.f12775b = interfaceC0091a;
        this.f12776c = nVar;
        this.f12783j = rVar;
        this.f12781h = j11;
        this.f12777d = mVar;
        this.f12778e = aVar;
        this.f12784k = z10;
        this.f12779f = new g2.z(new androidx.media3.common.f0(rVar));
        this.f12782i = cVar != null ? new Loader(cVar) : new Loader("SingleSampleMediaPeriod");
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        if (this.f12785l || this.f12782i.i() || this.f12782i.h()) {
            return false;
        }
        androidx.media3.datasource.a aVarCreateDataSource = this.f12775b.createDataSource();
        w1.n nVar = this.f12776c;
        if (nVar != null) {
            aVarCreateDataSource.c(nVar);
        }
        this.f12782i.m(new c(this.f12774a, aVarCreateDataSource), this, this.f12777d.a(1));
        return true;
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        return j11;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void q(c cVar, long j11, long j12, boolean z10) {
        w1.l lVar = cVar.f12793c;
        g2.i iVar = new g2.i(cVar.f12791a, cVar.f12792b, lVar.e(), lVar.f(), j11, j12, lVar.d());
        this.f12777d.b(cVar.f12791a);
        this.f12778e.t(iVar, 1, -1, null, 0, null, 0L, this.f12781h);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            g2.u uVar = uVarArr[i11];
            if (uVar != null && (zVarArr[i11] == null || !zArr[i11])) {
                this.f12780g.remove(uVar);
                uVarArr[i11] = null;
            }
            if (uVarArr[i11] == null && zVarArr[i11] != null) {
                b bVar = new b();
                this.f12780g.add(bVar);
                uVarArr[i11] = bVar;
                zArr2[i11] = true;
            }
        }
        return j11;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void p(c cVar, long j11, long j12) {
        this.f12787n = (int) cVar.f12793c.d();
        this.f12786m = (byte[]) androidx.media3.common.util.a.e(cVar.f12794d);
        this.f12785l = true;
        w1.l lVar = cVar.f12793c;
        g2.i iVar = new g2.i(cVar.f12791a, cVar.f12792b, lVar.e(), lVar.f(), j11, j12, this.f12787n);
        this.f12777d.b(cVar.f12791a);
        this.f12778e.w(iVar, 1, -1, this.f12783j, 0, null, 0L, this.f12781h);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        aVar.c(this);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        return this.f12785l ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return (this.f12785l || this.f12782i.i()) ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        return this.f12779f;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Loader.c k(c cVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        w1.l lVar = cVar.f12793c;
        g2.i iVar = new g2.i(cVar.f12791a, cVar.f12792b, lVar.e(), lVar.f(), j11, j12, lVar.d());
        long jC = this.f12777d.c(new androidx.media3.exoplayer.upstream.m.c(iVar, new g2.j(1, -1, this.f12783j, 0, null, 0L, a1.y1(this.f12781h)), iOException, i11));
        boolean z10 = jC == C.TIME_UNSET || i11 >= this.f12777d.a(1);
        if (this.f12784k && z10) {
            androidx.media3.common.util.u.i("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f12785l = true;
            cVarG = Loader.f12949f;
        } else {
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12950g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f12778e.y(iVar, 1, -1, this.f12783j, 0, null, 0L, this.f12781h, iOException, !zC);
        if (!zC) {
            this.f12777d.b(cVar.f12791a);
        }
        return cVar2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void o(c cVar, long j11, long j12, int i11) {
        w1.l lVar = cVar.f12793c;
        this.f12778e.C(i11 == 0 ? new g2.i(cVar.f12791a, cVar.f12792b, j11) : new g2.i(cVar.f12791a, cVar.f12792b, lVar.e(), lVar.f(), j11, j12, lVar.d()), 1, -1, this.f12783j, 0, null, 0L, this.f12781h, i11);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f12782i.i();
    }

    public void j() {
        this.f12782i.k();
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        for (int i11 = 0; i11 < this.f12780g.size(); i11++) {
            ((b) this.f12780g.get(i11)).b();
        }
        return j11;
    }
}
