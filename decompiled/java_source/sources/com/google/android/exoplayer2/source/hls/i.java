package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.n0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class i extends v9.n {
    private static final AtomicInteger M = new AtomicInteger();
    private final boolean A;
    private final boolean B;
    private final u1 C;
    private j D;
    private p E;
    private int F;
    private boolean G;
    private volatile boolean H;
    private boolean I;
    private ImmutableList J;
    private boolean K;
    private boolean L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f25982k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f25983l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Uri f25984m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f25985n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f25986o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f25987p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.n f25988q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final j f25989r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f25990s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f25991t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final l0 f25992u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final g f25993v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final List f25994w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final DrmInitData f25995x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final com.google.android.exoplayer2.metadata.id3.b f25996y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final d0 f25997z;

    private i(g gVar, com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, boolean z10, com.google.android.exoplayer2.upstream.k kVar2, com.google.android.exoplayer2.upstream.n nVar2, boolean z11, Uri uri, List list, int i11, Object obj, long j11, long j12, long j13, int i12, boolean z12, int i13, boolean z13, boolean z14, l0 l0Var, DrmInitData drmInitData, j jVar, com.google.android.exoplayer2.metadata.id3.b bVar, d0 d0Var, boolean z15, u1 u1Var) {
        super(kVar, nVar, o1Var, i11, obj, j11, j12, j13);
        this.A = z10;
        this.f25986o = i12;
        this.L = z12;
        this.f25983l = i13;
        this.f25988q = nVar2;
        this.f25987p = kVar2;
        this.G = nVar2 != null;
        this.B = z11;
        this.f25984m = uri;
        this.f25990s = z14;
        this.f25992u = l0Var;
        this.f25991t = z13;
        this.f25993v = gVar;
        this.f25994w = list;
        this.f25995x = drmInitData;
        this.f25989r = jVar;
        this.f25996y = bVar;
        this.f25997z = d0Var;
        this.f25985n = z15;
        this.C = u1Var;
        this.J = ImmutableList.of();
        this.f25982k = M.getAndIncrement();
    }

    private static com.google.android.exoplayer2.upstream.k g(com.google.android.exoplayer2.upstream.k kVar, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return kVar;
        }
        com.google.android.exoplayer2.util.a.e(bArr2);
        return new a(kVar, bArr, bArr2);
    }

    public static i h(g gVar, com.google.android.exoplayer2.upstream.k kVar, o1 o1Var, long j11, com.google.android.exoplayer2.source.hls.playlist.d dVar, e.C0371e c0371e, Uri uri, List list, int i11, Object obj, boolean z10, q qVar, i iVar, byte[] bArr, byte[] bArr2, boolean z11, u1 u1Var) {
        com.google.android.exoplayer2.upstream.k kVarG;
        com.google.android.exoplayer2.upstream.n nVar;
        boolean z12;
        com.google.android.exoplayer2.metadata.id3.b bVar;
        d0 d0Var;
        j jVar;
        com.google.android.exoplayer2.source.hls.playlist.d.e eVar = c0371e.f25974a;
        com.google.android.exoplayer2.upstream.n nVarA = new com.google.android.exoplayer2.upstream.n.b().i(n0.e(dVar.f78950a, eVar.f26149a)).h(eVar.f26157i).g(eVar.f26158j).b(c0371e.f25977d ? 8 : 0).a();
        boolean z13 = bArr != null;
        com.google.android.exoplayer2.upstream.k kVarG2 = g(kVar, bArr, z13 ? j((String) com.google.android.exoplayer2.util.a.e(eVar.f26156h)) : null);
        com.google.android.exoplayer2.source.hls.playlist.d.C0373d c0373d = eVar.f26150b;
        if (c0373d != null) {
            boolean z14 = bArr2 != null;
            byte[] bArrJ = z14 ? j((String) com.google.android.exoplayer2.util.a.e(c0373d.f26156h)) : null;
            nVar = new com.google.android.exoplayer2.upstream.n(n0.e(dVar.f78950a, c0373d.f26149a), c0373d.f26157i, c0373d.f26158j);
            kVarG = g(kVar, bArr2, bArrJ);
            z12 = z14;
        } else {
            kVarG = null;
            nVar = null;
            z12 = false;
        }
        long j12 = j11 + eVar.f26153e;
        long j13 = j12 + eVar.f26151c;
        int i12 = dVar.f26129j + eVar.f26152d;
        if (iVar != null) {
            com.google.android.exoplayer2.upstream.n nVar2 = iVar.f25988q;
            boolean z15 = nVar == nVar2 || (nVar != null && nVar2 != null && nVar.f27437a.equals(nVar2.f27437a) && nVar.f27443g == iVar.f25988q.f27443g);
            boolean z16 = uri.equals(iVar.f25984m) && iVar.I;
            bVar = iVar.f25996y;
            d0Var = iVar.f25997z;
            jVar = (z15 && z16 && !iVar.K && iVar.f25983l == i12) ? iVar.D : null;
        } else {
            bVar = new com.google.android.exoplayer2.metadata.id3.b();
            d0Var = new d0(10);
            jVar = null;
        }
        return new i(gVar, kVarG2, nVarA, o1Var, z13, kVarG, nVar, z12, uri, list, i11, obj, j12, j13, c0371e.f25975b, c0371e.f25976c, !c0371e.f25977d, i12, eVar.f26159k, z10, qVar.a(i12), eVar.f26154f, jVar, bVar, d0Var, z11, u1Var);
    }

    private void i(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, boolean z10, boolean z11) {
        com.google.android.exoplayer2.upstream.n nVarE;
        long position;
        long j11;
        boolean z12 = false;
        if (z10) {
            z12 = this.F != 0;
            nVarE = nVar;
        } else {
            nVarE = nVar.e(this.F);
        }
        try {
            g9.f fVarS = s(kVar, nVarE, z11);
            if (z12) {
                fVarS.skipFully(this.F);
            }
            while (!this.H && this.D.a(fVarS)) {
                try {
                    try {
                    } catch (EOFException e11) {
                        if ((this.f77135d.f25489e & 16384) == 0) {
                            throw e11;
                        }
                        this.D.c();
                        position = fVarS.getPosition();
                        j11 = nVar.f27443g;
                    }
                } catch (Throwable th2) {
                    this.F = (int) (fVarS.getPosition() - nVar.f27443g);
                    throw th2;
                }
            }
            position = fVarS.getPosition();
            j11 = nVar.f27443g;
            this.F = (int) (position - j11);
            com.google.android.exoplayer2.upstream.m.a(kVar);
        } catch (Throwable th3) {
            com.google.android.exoplayer2.upstream.m.a(kVar);
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

    private static boolean n(e.C0371e c0371e, com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        com.google.android.exoplayer2.source.hls.playlist.d.e eVar = c0371e.f25974a;
        if (eVar instanceof com.google.android.exoplayer2.source.hls.playlist.d.b) {
            return ((com.google.android.exoplayer2.source.hls.playlist.d.b) eVar).f26142l || (c0371e.f25976c == 0 && dVar.f78952c);
        }
        return dVar.f78952c;
    }

    private void p() {
        i(this.f77140i, this.f77133b, this.A, true);
    }

    private void q() {
        if (this.G) {
            com.google.android.exoplayer2.util.a.e(this.f25987p);
            com.google.android.exoplayer2.util.a.e(this.f25988q);
            i(this.f25987p, this.f25988q, this.B, false);
            this.F = 0;
            this.G = false;
        }
    }

    private long r(g9.m mVar) {
        mVar.resetPeekPosition();
        try {
            this.f25997z.L(10);
            mVar.peekFully(this.f25997z.d(), 0, 10);
            if (this.f25997z.G() != 4801587) {
                return C.TIME_UNSET;
            }
            this.f25997z.Q(3);
            int iC = this.f25997z.C();
            int i11 = iC + 10;
            if (i11 > this.f25997z.b()) {
                byte[] bArrD = this.f25997z.d();
                this.f25997z.L(i11);
                System.arraycopy(bArrD, 0, this.f25997z.d(), 0, 10);
            }
            mVar.peekFully(this.f25997z.d(), 10, iC);
            Metadata metadataE = this.f25996y.e(this.f25997z.d(), iC);
            if (metadataE == null) {
                return C.TIME_UNSET;
            }
            int length = metadataE.length();
            for (int i12 = 0; i12 < length; i12++) {
                Metadata.Entry entry = metadataE.get(i12);
                if (entry instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) entry;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.owner)) {
                        System.arraycopy(privFrame.privateData, 0, this.f25997z.d(), 0, 8);
                        this.f25997z.P(0);
                        this.f25997z.O(8);
                        return this.f25997z.w() & 8589934591L;
                    }
                }
            }
            return C.TIME_UNSET;
        } catch (EOFException unused) {
        }
    }

    private g9.f s(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, boolean z10) throws InterruptedIOException {
        long jA = kVar.a(nVar);
        if (z10) {
            try {
                this.f25992u.h(this.f25990s, this.f77138g);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        g9.f fVar = new g9.f(kVar, nVar.f27443g, jA);
        if (this.D == null) {
            long jR = r(fVar);
            fVar.resetPeekPosition();
            j jVar = this.f25989r;
            j jVarF = jVar != null ? jVar.f() : this.f25993v.a(nVar.f27437a, this.f77135d, this.f25994w, this.f25992u, kVar.getResponseHeaders(), fVar, this.C);
            this.D = jVarF;
            if (jVarF.e()) {
                this.E.a0(jR != C.TIME_UNSET ? this.f25992u.b(jR) : this.f77138g);
            } else {
                this.E.a0(0L);
            }
            this.E.M();
            this.D.b(this.E);
        }
        this.E.X(this.f25995x);
        return fVar;
    }

    public static boolean u(i iVar, Uri uri, com.google.android.exoplayer2.source.hls.playlist.d dVar, e.C0371e c0371e, long j11) {
        if (iVar == null) {
            return false;
        }
        if (uri.equals(iVar.f25984m) && iVar.I) {
            return false;
        }
        return !n(c0371e, dVar) || j11 + c0371e.f25974a.f26153e < iVar.f77139h;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void cancelLoad() {
        this.H = true;
    }

    @Override // v9.n
    public boolean f() {
        return this.I;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int k(int i11) {
        com.google.android.exoplayer2.util.a.g(!this.f25985n);
        if (i11 >= this.J.size()) {
            return 0;
        }
        return ((Integer) this.J.get(i11)).intValue();
    }

    public void l(p pVar, ImmutableList immutableList) {
        this.E = pVar;
        this.J = immutableList;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void load() {
        j jVar;
        com.google.android.exoplayer2.util.a.e(this.E);
        if (this.D == null && (jVar = this.f25989r) != null && jVar.d()) {
            this.D = this.f25989r;
            this.G = false;
        }
        q();
        if (this.H) {
            return;
        }
        if (!this.f25991t) {
            p();
        }
        this.I = !this.H;
    }

    public void m() {
        this.K = true;
    }

    public boolean o() {
        return this.L;
    }

    public void t() {
        this.L = true;
    }
}
