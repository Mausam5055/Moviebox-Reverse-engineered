package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import androidx.media3.common.util.r0;
import androidx.media3.common.x;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
final class i extends h2.m {
    private static final AtomicInteger N = new AtomicInteger();
    private final boolean A;
    private final boolean B;
    private final f4 C;
    private final long D;
    private j E;
    private r F;
    private int G;
    private boolean H;
    private volatile boolean I;
    private boolean J;
    private ImmutableList K;
    private boolean L;
    private boolean M;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11742k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11743l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Uri f11744m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f11745n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f11746o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.media3.datasource.a f11747p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final w1.h f11748q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final j f11749r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f11750s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f11751t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final p0 f11752u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final g f11753v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final List f11754w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final DrmInitData f11755x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final z2.h f11756y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final j0 f11757z;

    private i(g gVar, androidx.media3.datasource.a aVar, w1.h hVar, androidx.media3.common.r rVar, boolean z10, androidx.media3.datasource.a aVar2, w1.h hVar2, boolean z11, Uri uri, List list, int i11, Object obj, long j11, long j12, long j13, int i12, boolean z12, int i13, boolean z13, boolean z14, p0 p0Var, long j14, DrmInitData drmInitData, j jVar, z2.h hVar3, j0 j0Var, boolean z15, f4 f4Var) {
        super(aVar, hVar, rVar, i11, obj, j11, j12, j13);
        this.A = z10;
        this.f11746o = i12;
        this.M = z12;
        this.f11743l = i13;
        this.f11748q = hVar2;
        this.f11747p = aVar2;
        this.H = hVar2 != null;
        this.B = z11;
        this.f11744m = uri;
        this.f11750s = z14;
        this.f11752u = p0Var;
        this.D = j14;
        this.f11751t = z13;
        this.f11753v = gVar;
        this.f11754w = list;
        this.f11755x = drmInitData;
        this.f11749r = jVar;
        this.f11756y = hVar3;
        this.f11757z = j0Var;
        this.f11745n = z15;
        this.C = f4Var;
        this.K = ImmutableList.of();
        this.f11742k = N.getAndIncrement();
    }

    private static androidx.media3.datasource.a g(androidx.media3.datasource.a aVar, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return aVar;
        }
        androidx.media3.common.util.a.e(bArr2);
        return new a(aVar, bArr, bArr2);
    }

    public static i h(g gVar, androidx.media3.datasource.a aVar, androidx.media3.common.r rVar, long j11, androidx.media3.exoplayer.hls.playlist.c cVar, e.C0097e c0097e, Uri uri, List list, int i11, Object obj, boolean z10, t tVar, long j12, i iVar, byte[] bArr, byte[] bArr2, boolean z11, f4 f4Var, androidx.media3.exoplayer.upstream.g.a aVar2) {
        w1.h hVarA;
        androidx.media3.datasource.a aVarG;
        boolean z12;
        z2.h hVar;
        j0 j0Var;
        j jVar;
        androidx.media3.exoplayer.hls.playlist.c.g gVar2 = c0097e.f11736a;
        w1.h hVarA2 = new w1.h.b().i(r0.f(cVar.f16984a, gVar2.f11916a)).h(gVar2.f11924i).g(gVar2.f11925j).b(c0097e.f11739d ? 8 : 0).a();
        boolean z13 = bArr != null;
        androidx.media3.datasource.a aVarG2 = g(aVar, bArr, z13 ? j((String) androidx.media3.common.util.a.e(gVar2.f11923h)) : null);
        androidx.media3.exoplayer.hls.playlist.c.f fVar = gVar2.f11917b;
        if (fVar != null) {
            boolean z14 = bArr2 != null;
            byte[] bArrJ = z14 ? j((String) androidx.media3.common.util.a.e(fVar.f11923h)) : null;
            hVarA = new w1.h.b().i(r0.f(cVar.f16984a, fVar.f11916a)).h(fVar.f11924i).g(fVar.f11925j).a();
            z12 = z14;
            aVarG = g(aVar, bArr2, bArrJ);
        } else {
            hVarA = null;
            aVarG = null;
            z12 = false;
        }
        long j13 = j11 + gVar2.f11920e;
        long j14 = j13 + gVar2.f11918c;
        int i12 = cVar.f11877j + gVar2.f11919d;
        if (iVar != null) {
            w1.h hVar2 = iVar.f11748q;
            boolean z15 = hVarA == hVar2 || (hVarA != null && hVar2 != null && hVarA.f77511a.equals(hVar2.f77511a) && hVarA.f77517g == iVar.f11748q.f77517g);
            boolean z16 = uri.equals(iVar.f11744m) && iVar.J;
            z2.h hVar3 = iVar.f11756y;
            j0 j0Var2 = iVar.f11757z;
            jVar = (z15 && z16 && !iVar.L && iVar.f11743l == i12) ? iVar.E : null;
            hVar = hVar3;
            j0Var = j0Var2;
        } else {
            hVar = new z2.h();
            j0Var = new j0(10);
            jVar = null;
        }
        return new i(gVar, aVarG2, hVarA2, rVar, z13, aVarG, hVarA, z12, uri, list, i11, obj, j13, j14, c0097e.f11737b, c0097e.f11738c, !c0097e.f11739d, i12, gVar2.f11926k, z10, tVar.a(i12), j12, gVar2.f11921f, jVar, hVar, j0Var, z11, f4Var);
    }

    private void i(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10, boolean z11) {
        w1.h hVarE;
        long position;
        long j11;
        boolean z12 = false;
        if (z10) {
            z12 = this.G != 0;
            hVarE = hVar;
        } else {
            hVarE = hVar.e(this.G);
        }
        try {
            l2.j jVarS = s(aVar, hVarE, z11);
            if (z12) {
                jVarS.skipFully(this.G);
            }
            while (!this.I && this.E.a(jVarS)) {
                try {
                    try {
                    } catch (EOFException e11) {
                        if ((this.f64299d.f10152f & 16384) == 0) {
                            throw e11;
                        }
                        this.E.c();
                        position = jVarS.getPosition();
                        j11 = hVar.f77517g;
                    }
                } catch (Throwable th2) {
                    this.G = (int) (jVarS.getPosition() - hVar.f77517g);
                    throw th2;
                }
            }
            position = jVarS.getPosition();
            j11 = hVar.f77517g;
            this.G = (int) (position - j11);
            w1.g.a(aVar);
        } catch (Throwable th3) {
            w1.g.a(aVar);
            throw th3;
        }
    }

    private static byte[] j(String str) {
        if (com.google.common.base.a.e(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    private static boolean n(e.C0097e c0097e, androidx.media3.exoplayer.hls.playlist.c cVar) {
        androidx.media3.exoplayer.hls.playlist.c.g gVar = c0097e.f11736a;
        if (gVar instanceof androidx.media3.exoplayer.hls.playlist.c.d) {
            return ((androidx.media3.exoplayer.hls.playlist.c.d) gVar).f11909l || (c0097e.f11738c == 0 && cVar.f16986c);
        }
        return cVar.f16986c;
    }

    private void p() {
        i(this.f64304i, this.f64297b, this.A, true);
    }

    private void q() {
        if (this.H) {
            androidx.media3.common.util.a.e(this.f11747p);
            androidx.media3.common.util.a.e(this.f11748q);
            i(this.f11747p, this.f11748q, this.B, false);
            this.G = 0;
            this.H = false;
        }
    }

    private long r(l2.s sVar) {
        sVar.resetPeekPosition();
        try {
            this.f11757z.S(10);
            sVar.peekFully(this.f11757z.e(), 0, 10);
            if (this.f11757z.K() != 4801587) {
                return C.TIME_UNSET;
            }
            this.f11757z.X(3);
            int iG = this.f11757z.G();
            int i11 = iG + 10;
            if (i11 > this.f11757z.b()) {
                byte[] bArrE = this.f11757z.e();
                this.f11757z.S(i11);
                System.arraycopy(bArrE, 0, this.f11757z.e(), 0, 10);
            }
            sVar.peekFully(this.f11757z.e(), 10, iG);
            x xVarE = this.f11756y.e(this.f11757z.e(), iG);
            if (xVarE == null) {
                return C.TIME_UNSET;
            }
            int iE = xVarE.e();
            for (int i12 = 0; i12 < iE; i12++) {
                x.a aVarD = xVarE.d(i12);
                if (aVarD instanceof z2.m) {
                    z2.m mVar = (z2.m) aVarD;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(mVar.f79202b)) {
                        System.arraycopy(mVar.f79203c, 0, this.f11757z.e(), 0, 8);
                        this.f11757z.W(0);
                        this.f11757z.V(8);
                        return this.f11757z.A() & 8589934591L;
                    }
                }
            }
            return C.TIME_UNSET;
        } catch (EOFException unused) {
        }
    }

    private l2.j s(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10) throws IOException {
        long jA = aVar.a(hVar);
        if (z10) {
            try {
                this.f11752u.j(this.f11750s, this.f64302g, this.D);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e11) {
                throw new IOException(e11);
            }
        }
        l2.j jVar = new l2.j(aVar, hVar.f77517g, jA);
        if (this.E == null) {
            long jR = r(jVar);
            jVar.resetPeekPosition();
            j jVar2 = this.f11749r;
            j jVarF = jVar2 != null ? jVar2.f() : this.f11753v.e(hVar.f77511a, this.f64299d, this.f11754w, this.f11752u, aVar.getResponseHeaders(), jVar, this.C);
            this.E = jVarF;
            if (jVarF.e()) {
                this.F.f0(jR != C.TIME_UNSET ? this.f11752u.b(jR) : this.f64302g);
            } else {
                this.F.f0(0L);
            }
            this.F.R();
            this.E.b(this.F);
        }
        this.F.c0(this.f11755x);
        return jVar;
    }

    public static boolean u(i iVar, Uri uri, androidx.media3.exoplayer.hls.playlist.c cVar, e.C0097e c0097e, long j11) {
        if (iVar == null) {
            return false;
        }
        if (uri.equals(iVar.f11744m) && iVar.J) {
            return false;
        }
        return !n(c0097e, cVar) || j11 + c0097e.f11736a.f11920e < iVar.f64303h;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public void cancelLoad() {
        this.I = true;
    }

    @Override // h2.m
    public boolean f() {
        return this.J;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int k(int i11) {
        androidx.media3.common.util.a.g(!this.f11745n);
        if (i11 >= this.K.size()) {
            return 0;
        }
        return ((Integer) this.K.get(i11)).intValue();
    }

    public void l(r rVar, ImmutableList immutableList) {
        this.F = rVar;
        this.K = immutableList;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public void load() {
        j jVar;
        androidx.media3.common.util.a.e(this.F);
        if (this.E == null && (jVar = this.f11749r) != null && jVar.d()) {
            this.E = this.f11749r;
            this.H = false;
        }
        q();
        if (this.I) {
            return;
        }
        if (!this.f11751t) {
            p();
        }
        this.J = !this.I;
    }

    public void m() {
        this.L = true;
    }

    public boolean o() {
        return this.M;
    }

    public void t() {
        this.M = true;
    }
}
