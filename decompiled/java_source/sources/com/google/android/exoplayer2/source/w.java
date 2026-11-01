package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.i0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class w implements n, g9.n, Loader.b, Loader.e, a0.d {
    private static final Map M = y();
    private static final o1 N = new o1.b().S("icy").e0("application/x-icy").E();
    private boolean A;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private long G;
    private boolean I;
    private int J;
    private boolean K;
    private boolean L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f26640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f26641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f26642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.z f26643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p.a f26644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.s.a f26645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f26646g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f26648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f26649j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final r f26651l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private n.a f26656q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private IcyHeaders f26657r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f26660u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f26661v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f26662w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private e f26663x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private g9.b0 f26664y;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Loader f26650k = new Loader("ProgressiveMediaPeriod");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h f26652m = new com.google.android.exoplayer2.util.h();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Runnable f26653n = new Runnable() { // from class: com.google.android.exoplayer2.source.s
        @Override // java.lang.Runnable
        public final void run() {
            this.f26525a.H();
        }
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Runnable f26654o = new Runnable() { // from class: com.google.android.exoplayer2.source.t
        @Override // java.lang.Runnable
        public final void run() {
            this.f26636a.E();
        }
    };

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Handler f26655p = p0.w();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private d[] f26659t = new d[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a0[] f26658s = new a0[0];
    private long H = C.TIME_UNSET;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f26665z = C.TIME_UNSET;
    private int B = 1;

    final class a implements Loader.d, k.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Uri f26667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final i0 f26668c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final r f26669d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final g9.n f26670e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.h f26671f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private volatile boolean f26673h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f26675j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private g9.e0 f26677l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f26678m;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final g9.a0 f26672g = new g9.a0();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f26674i = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f26666a = t9.h.a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.n f26676k = g(0);

        public a(Uri uri, com.google.android.exoplayer2.upstream.k kVar, r rVar, g9.n nVar, com.google.android.exoplayer2.util.h hVar) {
            this.f26667b = uri;
            this.f26668c = new i0(kVar);
            this.f26669d = rVar;
            this.f26670e = nVar;
            this.f26671f = hVar;
        }

        private com.google.android.exoplayer2.upstream.n g(long j11) {
            return new com.google.android.exoplayer2.upstream.n.b().i(this.f26667b).h(j11).f(w.this.f26648i).b(6).e(w.M).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(long j11, long j12) {
            this.f26672g.f63369a = j11;
            this.f26675j = j12;
            this.f26674i = true;
            this.f26678m = false;
        }

        @Override // com.google.android.exoplayer2.source.k.a
        public void a(com.google.android.exoplayer2.util.d0 d0Var) {
            long jMax = !this.f26678m ? this.f26675j : Math.max(w.this.A(true), this.f26675j);
            int iA = d0Var.a();
            g9.e0 e0Var = (g9.e0) com.google.android.exoplayer2.util.a.e(this.f26677l);
            e0Var.c(d0Var, iA);
            e0Var.d(jMax, 1, iA, 0, null);
            this.f26678m = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public void cancelLoad() {
            this.f26673h = true;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0029 */
        @Override // com.google.android.exoplayer2.upstream.Loader.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load() {
            int iC = 0;
            while (iC == 0 && !this.f26673h) {
                long j11 = this.f26672g.f63369a;
                com.google.android.exoplayer2.upstream.n nVarG = g(j11);
                this.f26676k = nVarG;
                long jA = this.f26668c.a(nVarG);
                if (jA != -1) {
                    jA += j11;
                    w.this.M();
                }
                long j12 = jA;
                w.this.f26657r = IcyHeaders.parse(this.f26668c.getResponseHeaders());
                com.google.android.exoplayer2.upstream.g kVar = this.f26668c;
                if (w.this.f26657r != null && w.this.f26657r.metadataInterval != -1) {
                    kVar = new k(this.f26668c, w.this.f26657r.metadataInterval, this);
                    g9.e0 e0VarB = w.this.B();
                    this.f26677l = e0VarB;
                    e0VarB.e(w.N);
                }
                long jB = j11;
                this.f26669d.d(kVar, this.f26667b, this.f26668c.getResponseHeaders(), j11, j12, this.f26670e);
                if (w.this.f26657r != null) {
                    this.f26669d.a();
                }
                if (this.f26674i) {
                    this.f26669d.seek(jB, this.f26675j);
                    this.f26674i = false;
                }
                while (true) {
                    long j13 = jB;
                    while (true) {
                        if (iC != 0 || this.f26673h) {
                            break;
                        }
                        try {
                            this.f26671f.a();
                            iC = this.f26669d.c(this.f26672g);
                            jB = this.f26669d.b();
                            if (jB > w.this.f26649j + j13) {
                                this.f26671f.d();
                                w.this.f26655p.post(w.this.f26654o);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iC == 1) {
                    iC = 0;
                } else if (this.f26669d.b() != -1) {
                    this.f26672g.f63369a = this.f26669d.b();
                }
                com.google.android.exoplayer2.upstream.m.a(this.f26668c);
            }
        }
    }

    interface b {
        void p(long j11, boolean z10, boolean z11);
    }

    private final class c implements t9.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f26680a;

        public c(int i11) {
            this.f26680a = i11;
        }

        @Override // t9.s
        public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            return w.this.R(this.f26680a, p1Var, decoderInputBuffer, i11);
        }

        @Override // t9.s
        public boolean isReady() {
            return w.this.D(this.f26680a);
        }

        @Override // t9.s
        public void maybeThrowError() throws IOException {
            w.this.L(this.f26680a);
        }

        @Override // t9.s
        public int skipData(long j11) {
            return w.this.V(this.f26680a, j11);
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f26682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f26683b;

        public d(int i11, boolean z10) {
            this.f26682a = i11;
            this.f26683b = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f26682a == dVar.f26682a && this.f26683b == dVar.f26683b;
        }

        public int hashCode() {
            return (this.f26682a * 31) + (this.f26683b ? 1 : 0);
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t9.x f26684a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f26685b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean[] f26686c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean[] f26687d;

        public e(t9.x xVar, boolean[] zArr) {
            this.f26684a = xVar;
            this.f26685b = zArr;
            int i11 = xVar.f76165a;
            this.f26686c = new boolean[i11];
            this.f26687d = new boolean[i11];
        }
    }

    public w(Uri uri, com.google.android.exoplayer2.upstream.k kVar, r rVar, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.drm.s.a aVar, com.google.android.exoplayer2.upstream.z zVar, p.a aVar2, b bVar, com.google.android.exoplayer2.upstream.b bVar2, String str, int i11) {
        this.f26640a = uri;
        this.f26641b = kVar;
        this.f26642c = uVar;
        this.f26645f = aVar;
        this.f26643d = zVar;
        this.f26644e = aVar2;
        this.f26646g = bVar;
        this.f26647h = bVar2;
        this.f26648i = str;
        this.f26649j = i11;
        this.f26651l = rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A(boolean z10) {
        long jMax = Long.MIN_VALUE;
        for (int i11 = 0; i11 < this.f26658s.length; i11++) {
            if (z10 || ((e) com.google.android.exoplayer2.util.a.e(this.f26663x)).f26686c[i11]) {
                jMax = Math.max(jMax, this.f26658s[i11].z());
            }
        }
        return jMax;
    }

    private boolean C() {
        return this.H != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        if (this.L) {
            return;
        }
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f26656q)).g(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        this.F = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if (this.L || this.f26661v || !this.f26660u || this.f26664y == null) {
            return;
        }
        for (a0 a0Var : this.f26658s) {
            if (a0Var.F() == null) {
                return;
            }
        }
        this.f26652m.d();
        int length = this.f26658s.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        for (int i11 = 0; i11 < length; i11++) {
            o1 o1VarE = (o1) com.google.android.exoplayer2.util.a.e(this.f26658s[i11].F());
            String str = o1VarE.f25496l;
            boolean zP = com.google.android.exoplayer2.util.w.p(str);
            boolean z10 = zP || com.google.android.exoplayer2.util.w.t(str);
            zArr[i11] = z10;
            this.f26662w = z10 | this.f26662w;
            IcyHeaders icyHeaders = this.f26657r;
            if (icyHeaders != null) {
                if (zP || this.f26659t[i11].f26683b) {
                    Metadata metadata = o1VarE.f25494j;
                    o1VarE = o1VarE.b().X(metadata == null ? new Metadata(icyHeaders) : metadata.copyWithAppendedEntries(icyHeaders)).E();
                }
                if (zP && o1VarE.f25490f == -1 && o1VarE.f25491g == -1 && icyHeaders.bitrate != -1) {
                    o1VarE = o1VarE.b().G(icyHeaders.bitrate).E();
                }
            }
            trackGroupArr[i11] = new TrackGroup(Integer.toString(i11), o1VarE.c(this.f26642c.a(o1VarE)));
        }
        this.f26663x = new e(new t9.x(trackGroupArr), zArr);
        this.f26661v = true;
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f26656q)).h(this);
    }

    private void I(int i11) {
        w();
        e eVar = this.f26663x;
        boolean[] zArr = eVar.f26687d;
        if (zArr[i11]) {
            return;
        }
        o1 o1VarC = eVar.f26684a.b(i11).c(0);
        this.f26644e.i(com.google.android.exoplayer2.util.w.l(o1VarC.f25496l), o1VarC, 0, null, this.G);
        zArr[i11] = true;
    }

    private void J(int i11) {
        w();
        boolean[] zArr = this.f26663x.f26685b;
        if (this.I && zArr[i11]) {
            if (this.f26658s[i11].K(false)) {
                return;
            }
            this.H = 0L;
            this.I = false;
            this.D = true;
            this.G = 0L;
            this.J = 0;
            for (a0 a0Var : this.f26658s) {
                a0Var.V();
            }
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f26656q)).g(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        this.f26655p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f26637a.F();
            }
        });
    }

    private g9.e0 Q(d dVar) {
        int length = this.f26658s.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (dVar.equals(this.f26659t[i11])) {
                return this.f26658s[i11];
            }
        }
        a0 a0VarK = a0.k(this.f26647h, this.f26642c, this.f26645f);
        a0VarK.d0(this);
        int i12 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f26659t, i12);
        dVarArr[length] = dVar;
        this.f26659t = (d[]) p0.k(dVarArr);
        a0[] a0VarArr = (a0[]) Arrays.copyOf(this.f26658s, i12);
        a0VarArr[length] = a0VarK;
        this.f26658s = (a0[]) p0.k(a0VarArr);
        return a0VarK;
    }

    private boolean T(boolean[] zArr, long j11) {
        int length = this.f26658s.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (!this.f26658s[i11].Z(j11, false) && (zArr[i11] || !this.f26662w)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public void G(g9.b0 b0Var) {
        this.f26664y = this.f26657r == null ? b0Var : new g9.b0.b(C.TIME_UNSET);
        this.f26665z = b0Var.getDurationUs();
        boolean z10 = !this.F && b0Var.getDurationUs() == C.TIME_UNSET;
        this.A = z10;
        this.B = z10 ? 7 : 1;
        this.f26646g.p(this.f26665z, b0Var.isSeekable(), this.A);
        if (this.f26661v) {
            return;
        }
        H();
    }

    private void W() {
        a aVar = new a(this.f26640a, this.f26641b, this.f26651l, this, this.f26652m);
        if (this.f26661v) {
            com.google.android.exoplayer2.util.a.g(C());
            long j11 = this.f26665z;
            if (j11 != C.TIME_UNSET && this.H > j11) {
                this.K = true;
                this.H = C.TIME_UNSET;
                return;
            }
            aVar.h(((g9.b0) com.google.android.exoplayer2.util.a.e(this.f26664y)).getSeekPoints(this.H).f63370a.f63376b, this.H);
            for (a0 a0Var : this.f26658s) {
                a0Var.b0(this.H);
            }
            this.H = C.TIME_UNSET;
        }
        this.J = z();
        this.f26644e.A(new t9.h(aVar.f26666a, aVar.f26676k, this.f26650k.m(aVar, this, this.f26643d.a(this.B))), 1, -1, null, 0, null, aVar.f26675j, this.f26665z);
    }

    private boolean X() {
        return this.D || C();
    }

    private void w() {
        com.google.android.exoplayer2.util.a.g(this.f26661v);
        com.google.android.exoplayer2.util.a.e(this.f26663x);
        com.google.android.exoplayer2.util.a.e(this.f26664y);
    }

    private boolean x(a aVar, int i11) {
        g9.b0 b0Var;
        if (this.F || !((b0Var = this.f26664y) == null || b0Var.getDurationUs() == C.TIME_UNSET)) {
            this.J = i11;
            return true;
        }
        if (this.f26661v && !X()) {
            this.I = true;
            return false;
        }
        this.D = this.f26661v;
        this.G = 0L;
        this.J = 0;
        for (a0 a0Var : this.f26658s) {
            a0Var.V();
        }
        aVar.h(0L, 0L);
        return true;
    }

    private static Map y() {
        HashMap map = new HashMap();
        map.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(map);
    }

    private int z() {
        int iG = 0;
        for (a0 a0Var : this.f26658s) {
            iG += a0Var.G();
        }
        return iG;
    }

    g9.e0 B() {
        return Q(new d(0, true));
    }

    boolean D(int i11) {
        return !X() && this.f26658s[i11].K(this.K);
    }

    void K() throws IOException {
        this.f26650k.j(this.f26643d.a(this.B));
    }

    void L(int i11) throws IOException {
        this.f26658s[i11].N();
        K();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void j(a aVar, long j11, long j12, boolean z10) {
        i0 i0Var = aVar.f26668c;
        t9.h hVar = new t9.h(aVar.f26666a, aVar.f26676k, i0Var.h(), i0Var.i(), j11, j12, i0Var.f());
        this.f26643d.b(aVar.f26666a);
        this.f26644e.r(hVar, 1, -1, null, 0, null, aVar.f26675j, this.f26665z);
        if (z10) {
            return;
        }
        for (a0 a0Var : this.f26658s) {
            a0Var.V();
        }
        if (this.E > 0) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f26656q)).g(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void l(a aVar, long j11, long j12) {
        g9.b0 b0Var;
        if (this.f26665z == C.TIME_UNSET && (b0Var = this.f26664y) != null) {
            boolean zIsSeekable = b0Var.isSeekable();
            long jA = A(true);
            long j13 = jA == Long.MIN_VALUE ? 0L : jA + 10000;
            this.f26665z = j13;
            this.f26646g.p(j13, zIsSeekable, this.A);
        }
        i0 i0Var = aVar.f26668c;
        t9.h hVar = new t9.h(aVar.f26666a, aVar.f26676k, i0Var.h(), i0Var.i(), j11, j12, i0Var.f());
        this.f26643d.b(aVar.f26666a);
        this.f26644e.u(hVar, 1, -1, null, 0, null, aVar.f26675j, this.f26665z);
        this.K = true;
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f26656q)).g(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public Loader.c n(a aVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        i0 i0Var = aVar.f26668c;
        t9.h hVar = new t9.h(aVar.f26666a, aVar.f26676k, i0Var.h(), i0Var.i(), j11, j12, i0Var.f());
        long jC = this.f26643d.c(new com.google.android.exoplayer2.upstream.z.c(hVar, new t9.i(1, -1, null, 0, null, p0.e1(aVar.f26675j), p0.e1(this.f26665z)), iOException, i11));
        if (jC == C.TIME_UNSET) {
            cVarG = Loader.f27247g;
        } else {
            int iZ = z();
            cVarG = x(aVar, iZ) ? Loader.g(iZ > this.J, jC) : Loader.f27246f;
        }
        boolean zC = cVarG.c();
        this.f26644e.w(hVar, 1, -1, null, 0, null, aVar.f26675j, this.f26665z, iOException, !zC);
        if (!zC) {
            this.f26643d.b(aVar.f26666a);
        }
        return cVarG;
    }

    int R(int i11, p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i12) {
        if (X()) {
            return -3;
        }
        I(i11);
        int iS = this.f26658s[i11].S(p1Var, decoderInputBuffer, i12, this.K);
        if (iS == -3) {
            J(i11);
        }
        return iS;
    }

    public void S() {
        if (this.f26661v) {
            for (a0 a0Var : this.f26658s) {
                a0Var.R();
            }
        }
        this.f26650k.l(this);
        this.f26655p.removeCallbacksAndMessages(null);
        this.f26656q = null;
        this.L = true;
    }

    int V(int i11, long j11) {
        if (X()) {
            return 0;
        }
        I(i11);
        a0 a0Var = this.f26658s[i11];
        int iE = a0Var.E(j11, this.K);
        a0Var.e0(iE);
        if (iE == 0) {
            J(i11);
        }
        return iE;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        w();
        if (!this.f26664y.isSeekable()) {
            return 0L;
        }
        g9.b0.a seekPoints = this.f26664y.getSeekPoints(j11);
        return c3Var.a(j11, seekPoints.f63370a.f63375a, seekPoints.f63371b.f63375a);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        com.google.android.exoplayer2.trackselection.h hVar;
        w();
        e eVar = this.f26663x;
        t9.x xVar = eVar.f26684a;
        boolean[] zArr3 = eVar.f26686c;
        int i11 = this.E;
        int i12 = 0;
        for (int i13 = 0; i13 < hVarArr.length; i13++) {
            t9.s sVar = sVarArr[i13];
            if (sVar != null && (hVarArr[i13] == null || !zArr[i13])) {
                int i14 = ((c) sVar).f26680a;
                com.google.android.exoplayer2.util.a.g(zArr3[i14]);
                this.E--;
                zArr3[i14] = false;
                sVarArr[i13] = null;
            }
        }
        boolean z10 = !this.C ? j11 == 0 : i11 != 0;
        for (int i15 = 0; i15 < hVarArr.length; i15++) {
            if (sVarArr[i15] == null && (hVar = hVarArr[i15]) != null) {
                com.google.android.exoplayer2.util.a.g(hVar.length() == 1);
                com.google.android.exoplayer2.util.a.g(hVar.getIndexInTrackGroup(0) == 0);
                int iC = xVar.c(hVar.getTrackGroup());
                com.google.android.exoplayer2.util.a.g(!zArr3[iC]);
                this.E++;
                zArr3[iC] = true;
                sVarArr[i15] = new c(iC);
                zArr2[i15] = true;
                if (!z10) {
                    a0 a0Var = this.f26658s[iC];
                    z10 = (a0Var.Z(j11, true) || a0Var.C() == 0) ? false : true;
                }
            }
        }
        if (this.E == 0) {
            this.I = false;
            this.D = false;
            if (this.f26650k.i()) {
                a0[] a0VarArr = this.f26658s;
                int length = a0VarArr.length;
                while (i12 < length) {
                    a0VarArr[i12].r();
                    i12++;
                }
                this.f26650k.e();
            } else {
                a0[] a0VarArr2 = this.f26658s;
                int length2 = a0VarArr2.length;
                while (i12 < length2) {
                    a0VarArr2[i12].V();
                    i12++;
                }
            }
        } else if (z10) {
            j11 = seekToUs(j11);
            while (i12 < sVarArr.length) {
                if (sVarArr[i12] != null) {
                    zArr2[i12] = true;
                }
                i12++;
            }
        }
        this.C = true;
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.a0.d
    public void c(o1 o1Var) {
        this.f26655p.post(this.f26653n);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        if (this.K || this.f26650k.h() || this.I) {
            return false;
        }
        if (this.f26661v && this.E == 0) {
            return false;
        }
        boolean zF = this.f26652m.f();
        if (this.f26650k.i()) {
            return zF;
        }
        W();
        return true;
    }

    @Override // g9.n
    public void d(final g9.b0 b0Var) {
        this.f26655p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f26638a.G(b0Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        w();
        if (C()) {
            return;
        }
        boolean[] zArr = this.f26663x.f26686c;
        int length = this.f26658s.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.f26658s[i11].q(j11, z10, zArr[i11]);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        this.f26656q = aVar;
        this.f26652m.f();
        W();
    }

    @Override // g9.n
    public void endTracks() {
        this.f26660u = true;
        this.f26655p.post(this.f26653n);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        long jA;
        w();
        if (this.K || this.E == 0) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.H;
        }
        if (this.f26662w) {
            int length = this.f26658s.length;
            jA = Long.MAX_VALUE;
            for (int i11 = 0; i11 < length; i11++) {
                e eVar = this.f26663x;
                if (eVar.f26685b[i11] && eVar.f26686c[i11] && !this.f26658s[i11].J()) {
                    jA = Math.min(jA, this.f26658s[i11].z());
                }
            }
        } else {
            jA = Long.MAX_VALUE;
        }
        if (jA == Long.MAX_VALUE) {
            jA = A(false);
        }
        return jA == Long.MIN_VALUE ? this.G : jA;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public t9.x getTrackGroups() {
        w();
        return this.f26663x.f26684a;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f26650k.i() && this.f26652m.e();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws IOException {
        K();
        if (this.K && !this.f26661v) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void onLoaderReleased() {
        for (a0 a0Var : this.f26658s) {
            a0Var.T();
        }
        this.f26651l.release();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        if (!this.D) {
            return C.TIME_UNSET;
        }
        if (!this.K && z() <= this.J) {
            return C.TIME_UNSET;
        }
        this.D = false;
        return this.G;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        w();
        boolean[] zArr = this.f26663x.f26685b;
        if (!this.f26664y.isSeekable()) {
            j11 = 0;
        }
        int i11 = 0;
        this.D = false;
        this.G = j11;
        if (C()) {
            this.H = j11;
            return j11;
        }
        if (this.B != 7 && T(zArr, j11)) {
            return j11;
        }
        this.I = false;
        this.H = j11;
        this.K = false;
        if (this.f26650k.i()) {
            a0[] a0VarArr = this.f26658s;
            int length = a0VarArr.length;
            while (i11 < length) {
                a0VarArr[i11].r();
                i11++;
            }
            this.f26650k.e();
        } else {
            this.f26650k.f();
            a0[] a0VarArr2 = this.f26658s;
            int length2 = a0VarArr2.length;
            while (i11 < length2) {
                a0VarArr2[i11].V();
                i11++;
            }
        }
        return j11;
    }

    @Override // g9.n
    public g9.e0 track(int i11, int i12) {
        return Q(new d(i11, false));
    }
}
