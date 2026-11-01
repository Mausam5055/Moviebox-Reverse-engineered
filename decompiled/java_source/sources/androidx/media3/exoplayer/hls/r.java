package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.source.e0;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g2.z;
import j2.d0;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import l2.m0;
import l2.r0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class r implements Loader.b, Loader.e, f0, l2.t, e0.d {
    private static final Set Y = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private androidx.media3.common.r F;
    private androidx.media3.common.r G;
    private boolean H;
    private z I;
    private Set J;
    private int[] K;
    private int L;
    private boolean M;
    private boolean[] N;
    private boolean[] O;
    private long P;
    private long Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private long V;
    private DrmInitData W;
    private i X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f11955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f11956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f11957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f11958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.common.r f11959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f11960g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.r.a f11961h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f11962i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.media3.exoplayer.source.s.a f11964k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f11965l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ArrayList f11967n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f11968o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Runnable f11969p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f11970q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Handler f11971r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ArrayList f11972s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map f11973t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private h2.e f11974u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private d[] f11975v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Set f11977x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private SparseIntArray f11978y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private s0 f11979z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Loader f11963j = new Loader("Loader:HlsSampleStreamWrapper");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final e.b f11966m = new e.b();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int[] f11976w = new int[0];

    public interface b extends f0.a {
        void d(Uri uri);

        void onPrepared();
    }

    private static class c implements s0 {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final androidx.media3.common.r f11980g = new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_ID3).N();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final androidx.media3.common.r f11981h = new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_EMSG).N();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w2.b f11982a = new w2.b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s0 f11983b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.media3.common.r f11984c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.common.r f11985d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte[] f11986e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f11987f;

        public c(s0 s0Var, int i11) {
            this.f11983b = s0Var;
            if (i11 == 1) {
                this.f11984c = f11980g;
            } else {
                if (i11 != 3) {
                    throw new IllegalArgumentException("Unknown metadataType: " + i11);
                }
                this.f11984c = f11981h;
            }
            this.f11986e = new byte[0];
            this.f11987f = 0;
        }

        private boolean h(w2.a aVar) {
            androidx.media3.common.r wrappedMetadataFormat = aVar.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && Objects.equals(this.f11984c.f10161o, wrappedMetadataFormat.f10161o);
        }

        private void i(int i11) {
            byte[] bArr = this.f11986e;
            if (bArr.length < i11) {
                this.f11986e = Arrays.copyOf(bArr, i11 + (i11 / 2));
            }
        }

        private j0 j(int i11, int i12) {
            int i13 = this.f11987f - i12;
            j0 j0Var = new j0(Arrays.copyOfRange(this.f11986e, i13 - i11, i13));
            byte[] bArr = this.f11986e;
            System.arraycopy(bArr, i13, bArr, 0, i12);
            this.f11987f = i12;
            return j0Var;
        }

        @Override // l2.s0
        public void a(j0 j0Var, int i11, int i12) {
            i(this.f11987f + i11);
            j0Var.l(this.f11986e, this.f11987f, i11);
            this.f11987f += i11;
        }

        @Override // l2.s0
        public /* synthetic */ void b(j0 j0Var, int i11) {
            r0.c(this, j0Var, i11);
        }

        @Override // l2.s0
        public void c(androidx.media3.common.r rVar) {
            this.f11985d = rVar;
            this.f11983b.c(this.f11984c);
        }

        @Override // l2.s0
        public void d(long j11, int i11, int i12, int i13, s0.a aVar) {
            androidx.media3.common.util.a.e(this.f11985d);
            j0 j0VarJ = j(i12, i13);
            if (!Objects.equals(this.f11985d.f10161o, this.f11984c.f10161o)) {
                if (!MimeTypes.APPLICATION_EMSG.equals(this.f11985d.f10161o)) {
                    androidx.media3.common.util.u.h("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f11985d.f10161o);
                    return;
                }
                w2.a aVarC = this.f11982a.c(j0VarJ);
                if (!h(aVarC)) {
                    androidx.media3.common.util.u.h("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f11984c.f10161o, aVarC.getWrappedMetadataFormat()));
                    return;
                }
                j0VarJ = new j0((byte[]) androidx.media3.common.util.a.e(aVarC.getWrappedMetadataBytes()));
            }
            int iA = j0VarJ.a();
            this.f11983b.b(j0VarJ, iA);
            this.f11983b.d(j11, i11, iA, 0, aVar);
        }

        @Override // l2.s0
        public /* synthetic */ int e(androidx.media3.common.j jVar, int i11, boolean z10) {
            return r0.b(this, jVar, i11, z10);
        }

        @Override // l2.s0
        public /* synthetic */ void f(long j11) {
            r0.a(this, j11);
        }

        @Override // l2.s0
        public int g(androidx.media3.common.j jVar, int i11, boolean z10, int i12) throws EOFException {
            i(this.f11987f + i11);
            int i13 = jVar.read(this.f11986e, this.f11987f, i11);
            if (i13 != -1) {
                this.f11987f += i13;
                return i13;
            }
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
    }

    private static final class d extends e0 {
        private final Map H;
        private DrmInitData I;

        private d(androidx.media3.exoplayer.upstream.b bVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar, Map map) {
            super(bVar, tVar, aVar);
            this.H = map;
        }

        private x k0(x xVar) {
            if (xVar == null) {
                return null;
            }
            int iE = xVar.e();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i12 >= iE) {
                    i12 = -1;
                    break;
                }
                x.a aVarD = xVar.d(i12);
                if ((aVarD instanceof z2.m) && "com.apple.streaming.transportStreamTimestamp".equals(((z2.m) aVarD).f79202b)) {
                    break;
                }
                i12++;
            }
            if (i12 == -1) {
                return xVar;
            }
            if (iE == 1) {
                return null;
            }
            x.a[] aVarArr = new x.a[iE - 1];
            while (i11 < iE) {
                if (i11 != i12) {
                    aVarArr[i11 < i12 ? i11 : i11 - 1] = xVar.d(i11);
                }
                i11++;
            }
            return new x(aVarArr);
        }

        @Override // androidx.media3.exoplayer.source.e0, l2.s0
        public void d(long j11, int i11, int i12, int i13, s0.a aVar) {
            super.d(j11, i11, i12, i13, aVar);
        }

        public void l0(DrmInitData drmInitData) {
            this.I = drmInitData;
            L();
        }

        public void m0(i iVar) {
            i0(iVar.f11742k);
        }

        @Override // androidx.media3.exoplayer.source.e0
        public androidx.media3.common.r z(androidx.media3.common.r rVar) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.I;
            if (drmInitData2 == null) {
                drmInitData2 = rVar.f10165s;
            }
            if (drmInitData2 != null && (drmInitData = (DrmInitData) this.H.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            x xVarK0 = k0(rVar.f10158l);
            if (drmInitData2 != rVar.f10165s || xVarK0 != rVar.f10158l) {
                rVar = rVar.b().Y(drmInitData2).n0(xVarK0).N();
            }
            return super.z(rVar);
        }
    }

    public r(String str, int i11, b bVar, e eVar, Map map, androidx.media3.exoplayer.upstream.b bVar2, long j11, androidx.media3.common.r rVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar, androidx.media3.exoplayer.upstream.m mVar, androidx.media3.exoplayer.source.s.a aVar2, int i12) {
        this.f11954a = str;
        this.f11955b = i11;
        this.f11956c = bVar;
        this.f11957d = eVar;
        this.f11973t = map;
        this.f11958e = bVar2;
        this.f11959f = rVar;
        this.f11960g = tVar;
        this.f11961h = aVar;
        this.f11962i = mVar;
        this.f11964k = aVar2;
        this.f11965l = i12;
        Set set = Y;
        this.f11977x = new HashSet(set.size());
        this.f11978y = new SparseIntArray(set.size());
        this.f11975v = new d[0];
        this.O = new boolean[0];
        this.N = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f11967n = arrayList;
        this.f11968o = Collections.unmodifiableList(arrayList);
        this.f11972s = new ArrayList();
        this.f11969p = new Runnable() { // from class: androidx.media3.exoplayer.hls.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f11790a.K();
            }
        };
        this.f11970q = new Runnable() { // from class: androidx.media3.exoplayer.hls.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f11791a.U();
            }
        };
        this.f11971r = a1.A();
        this.P = j11;
        this.Q = j11;
    }

    private i A() {
        ArrayList arrayList = this.f11967n;
        return (i) arrayList.get(arrayList.size() - 1);
    }

    private s0 B(int i11, int i12) {
        androidx.media3.common.util.a.a(Y.contains(Integer.valueOf(i12)));
        int i13 = this.f11978y.get(i12, -1);
        if (i13 == -1) {
            return null;
        }
        if (this.f11977x.add(Integer.valueOf(i12))) {
            this.f11976w[i13] = i11;
        }
        return this.f11976w[i13] == i11 ? this.f11975v[i13] : s(i11, i12);
    }

    private static int C(int i11) {
        if (i11 == 1) {
            return 2;
        }
        if (i11 != 2) {
            return i11 != 3 ? 0 : 1;
        }
        return 3;
    }

    private void D(i iVar) {
        this.X = iVar;
        this.F = iVar.f64299d;
        this.Q = C.TIME_UNSET;
        this.f11967n.add(iVar);
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (d dVar : this.f11975v) {
            aVarBuilder.a(Integer.valueOf(dVar.J()));
        }
        iVar.l(this, aVarBuilder.e());
        for (d dVar2 : this.f11975v) {
            dVar2.m0(iVar);
            if (iVar.f11745n) {
                dVar2.j0();
            }
        }
    }

    private static boolean E(h2.e eVar) {
        return eVar instanceof i;
    }

    private boolean F() {
        return this.Q != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(i iVar) {
        this.f11956c.d(iVar.f11744m);
    }

    private void J() {
        int i11 = this.I.f63266a;
        int[] iArr = new int[i11];
        this.K = iArr;
        Arrays.fill(iArr, -1);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = 0;
            while (true) {
                d[] dVarArr = this.f11975v;
                if (i13 >= dVarArr.length) {
                    break;
                }
                if (z((androidx.media3.common.r) androidx.media3.common.util.a.i(dVarArr[i13].I()), this.I.b(i12).a(0))) {
                    this.K[i12] = i13;
                    break;
                }
                i13++;
            }
        }
        Iterator it = this.f11972s.iterator();
        while (it.hasNext()) {
            ((m) it.next()).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (!this.H && this.K == null && this.C) {
            for (d dVar : this.f11975v) {
                if (dVar.I() == null) {
                    return;
                }
            }
            if (this.I != null) {
                J();
                return;
            }
            m();
            d0();
            this.f11956c.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        this.C = true;
        K();
    }

    private void Y() {
        for (d dVar : this.f11975v) {
            dVar.Z(this.R);
        }
        this.R = false;
    }

    private boolean Z(long j11, i iVar) {
        int length = this.f11975v.length;
        for (int i11 = 0; i11 < length; i11++) {
            d dVar = this.f11975v[i11];
            if (!(iVar != null ? dVar.b0(iVar.k(i11)) : dVar.c0(j11, false)) && (this.O[i11] || !this.M)) {
                return false;
            }
        }
        return true;
    }

    private void d0() {
        this.D = true;
    }

    private void i0(g2.u[] uVarArr) {
        this.f11972s.clear();
        for (g2.u uVar : uVarArr) {
            if (uVar != null) {
                this.f11972s.add((m) uVar);
            }
        }
    }

    private void j() {
        androidx.media3.common.util.a.g(this.D);
        androidx.media3.common.util.a.e(this.I);
        androidx.media3.common.util.a.e(this.J);
    }

    private void m() {
        androidx.media3.common.r rVar;
        int length = this.f11975v.length;
        int i11 = -2;
        int i12 = -1;
        int i13 = 0;
        while (true) {
            int i14 = 2;
            if (i13 >= length) {
                break;
            }
            String str = ((androidx.media3.common.r) androidx.media3.common.util.a.i(this.f11975v[i13].I())).f10161o;
            if (!y.t(str)) {
                i14 = y.o(str) ? 1 : y.s(str) ? 3 : -2;
            }
            if (C(i14) > C(i11)) {
                i12 = i13;
                i11 = i14;
            } else if (i14 == i11 && i12 != -1) {
                i12 = -1;
            }
            i13++;
        }
        androidx.media3.common.f0 f0VarK = this.f11957d.k();
        int i15 = f0VarK.f9971a;
        this.L = -1;
        this.K = new int[length];
        for (int i16 = 0; i16 < length; i16++) {
            this.K[i16] = i16;
        }
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[length];
        int i17 = 0;
        while (i17 < length) {
            androidx.media3.common.r rVar2 = (androidx.media3.common.r) androidx.media3.common.util.a.i(this.f11975v[i17].I());
            if (i17 == i12) {
                androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[i15];
                for (int i18 = 0; i18 < i15; i18++) {
                    androidx.media3.common.r rVarA = f0VarK.a(i18);
                    if (i11 == 1 && (rVar = this.f11959f) != null) {
                        rVarA = rVarA.j(rVar);
                    }
                    rVarArr[i18] = i15 == 1 ? rVar2.j(rVarA) : v(rVarA, rVar2, true);
                }
                f0VarArr[i17] = new androidx.media3.common.f0(this.f11954a, rVarArr);
                this.L = i17;
            } else {
                androidx.media3.common.r rVar3 = (i11 == 2 && y.o(rVar2.f10161o)) ? this.f11959f : null;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f11954a);
                sb2.append(":muxed:");
                sb2.append(i17 < i12 ? i17 : i17 - 1);
                f0VarArr[i17] = new androidx.media3.common.f0(sb2.toString(), v(rVar3, rVar2, false));
            }
            i17++;
        }
        this.I = u(f0VarArr);
        androidx.media3.common.util.a.g(this.J == null);
        this.J = Collections.emptySet();
    }

    private boolean n(int i11) {
        for (int i12 = i11; i12 < this.f11967n.size(); i12++) {
            if (((i) this.f11967n.get(i12)).f11745n) {
                return false;
            }
        }
        i iVar = (i) this.f11967n.get(i11);
        for (int i13 = 0; i13 < this.f11975v.length; i13++) {
            if (this.f11975v[i13].F() > iVar.k(i13)) {
                return false;
            }
        }
        return true;
    }

    private static l2.n s(int i11, int i12) {
        androidx.media3.common.util.u.h("HlsSampleStreamWrapper", "Unmapped track with id " + i11 + " of type " + i12);
        return new l2.n();
    }

    private e0 t(int i11, int i12) {
        int length = this.f11975v.length;
        boolean z10 = true;
        if (i12 != 1 && i12 != 2) {
            z10 = false;
        }
        d dVar = new d(this.f11958e, this.f11960g, this.f11961h, this.f11973t);
        dVar.e0(this.P);
        if (z10) {
            dVar.l0(this.W);
        }
        dVar.d0(this.V);
        i iVar = this.X;
        if (iVar != null) {
            dVar.m0(iVar);
        }
        dVar.g0(this);
        int i13 = length + 1;
        int[] iArrCopyOf = Arrays.copyOf(this.f11976w, i13);
        this.f11976w = iArrCopyOf;
        iArrCopyOf[length] = i11;
        this.f11975v = (d[]) a1.V0(this.f11975v, dVar);
        boolean[] zArrCopyOf = Arrays.copyOf(this.O, i13);
        this.O = zArrCopyOf;
        zArrCopyOf[length] = z10;
        this.M |= z10;
        this.f11977x.add(Integer.valueOf(i12));
        this.f11978y.append(i12, length);
        if (C(i12) > C(this.A)) {
            this.B = length;
            this.A = i12;
        }
        this.N = Arrays.copyOf(this.N, i13);
        return dVar;
    }

    private z u(androidx.media3.common.f0[] f0VarArr) {
        for (int i11 = 0; i11 < f0VarArr.length; i11++) {
            androidx.media3.common.f0 f0Var = f0VarArr[i11];
            androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[f0Var.f9971a];
            for (int i12 = 0; i12 < f0Var.f9971a; i12++) {
                androidx.media3.common.r rVarA = f0Var.a(i12);
                rVarArr[i12] = rVarA.c(this.f11960g.b(rVarA));
            }
            f0VarArr[i11] = new androidx.media3.common.f0(f0Var.f9972b, rVarArr);
        }
        return new z(f0VarArr);
    }

    private static androidx.media3.common.r v(androidx.media3.common.r rVar, androidx.media3.common.r rVar2, boolean z10) {
        String strD;
        String strG;
        if (rVar == null) {
            return rVar2;
        }
        int iK = y.k(rVar2.f10161o);
        if (a1.R(rVar.f10157k, iK) == 1) {
            strD = a1.S(rVar.f10157k, iK);
            strG = y.g(strD);
        } else {
            strD = y.d(rVar.f10157k, rVar2.f10161o);
            strG = rVar2.f10161o;
        }
        androidx.media3.common.r.b bVarS = rVar2.b().f0(rVar.f10147a).h0(rVar.f10148b).i0(rVar.f10149c).j0(rVar.f10150d).w0(rVar.f10151e).s0(rVar.f10152f).Q(z10 ? rVar.f10154h : -1).p0(z10 ? rVar.f10155i : -1).S(strD);
        if (iK == 2) {
            bVarS.B0(rVar.f10168v).d0(rVar.f10169w).b0(rVar.f10170x);
        }
        if (strG != null) {
            bVarS.u0(strG);
        }
        int i11 = rVar.E;
        if (i11 != -1 && iK == 1) {
            bVarS.R(i11);
        }
        x xVarB = rVar.f10158l;
        if (xVarB != null) {
            x xVar = rVar2.f10158l;
            if (xVar != null) {
                xVarB = xVar.b(xVarB);
            }
            bVarS.n0(xVarB);
        }
        return bVarS.N();
    }

    private void w(int i11) {
        androidx.media3.common.util.a.g(!this.f11963j.i());
        while (true) {
            if (i11 >= this.f11967n.size()) {
                i11 = -1;
                break;
            } else if (n(i11)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 == -1) {
            return;
        }
        long j11 = A().f64303h;
        i iVarX = x(i11);
        if (this.f11967n.isEmpty()) {
            this.Q = this.P;
        } else {
            ((i) g3.g(this.f11967n)).m();
        }
        this.T = false;
        this.f11964k.F(this.A, iVarX.f64302g, j11);
    }

    private i x(int i11) {
        i iVar = (i) this.f11967n.get(i11);
        ArrayList arrayList = this.f11967n;
        a1.c1(arrayList, i11, arrayList.size());
        for (int i12 = 0; i12 < this.f11975v.length; i12++) {
            this.f11975v[i12].w(iVar.k(i12));
        }
        return iVar;
    }

    private boolean y(i iVar) {
        int i11 = iVar.f11742k;
        int length = this.f11975v.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (this.N[i12] && this.f11975v[i12].T() == i11) {
                return false;
            }
        }
        return true;
    }

    private static boolean z(androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        String str = rVar.f10161o;
        String str2 = rVar2.f10161o;
        int iK = y.k(str);
        if (iK != 3) {
            return iK == y.k(str2);
        }
        if (Objects.equals(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || rVar.J == rVar2.J;
        }
        return false;
    }

    public boolean G(int i11) {
        return !F() && this.f11975v[i11].N(this.T);
    }

    public boolean H() {
        return this.A == 2;
    }

    public void L() {
        this.f11963j.maybeThrowError();
        this.f11957d.p();
    }

    public void M(int i11) {
        L();
        this.f11975v[i11].Q();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void q(h2.e eVar, long j11, long j12, boolean z10) {
        this.f11974u = null;
        g2.i iVar = new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, eVar.a());
        this.f11962i.b(eVar.f64296a);
        this.f11964k.t(iVar, eVar.f64298c, this.f11955b, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h);
        if (z10) {
            return;
        }
        if (F() || this.E == 0) {
            Y();
        }
        if (this.E > 0) {
            this.f11956c.f(this);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void p(h2.e eVar, long j11, long j12) {
        this.f11974u = null;
        this.f11957d.r(eVar);
        g2.i iVar = new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, eVar.a());
        this.f11962i.b(eVar.f64296a);
        this.f11964k.w(iVar, eVar.f64298c, this.f11955b, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h);
        if (this.D) {
            this.f11956c.f(this);
        } else {
            a(new v2.b().f(this.P).d());
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public Loader.c k(h2.e eVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        int i12;
        boolean zE = E(eVar);
        if (zE && !((i) eVar).o() && (iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((i12 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode) == 410 || i12 == 404)) {
            return Loader.f12947d;
        }
        long jA = eVar.a();
        g2.i iVar = new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, jA);
        androidx.media3.exoplayer.upstream.m.c cVar = new androidx.media3.exoplayer.upstream.m.c(iVar, new g2.j(eVar.f64298c, this.f11955b, eVar.f64299d, eVar.f64300e, eVar.f64301f, a1.y1(eVar.f64302g), a1.y1(eVar.f64303h)), iOException, i11);
        androidx.media3.exoplayer.upstream.m.b bVarD = this.f11962i.d(d0.c(this.f11957d.l()), cVar);
        boolean zO = (bVarD == null || bVarD.f13008a != 2) ? false : this.f11957d.o(eVar, bVarD.f13009b);
        if (zO) {
            if (zE && jA == 0) {
                ArrayList arrayList = this.f11967n;
                androidx.media3.common.util.a.g(((i) arrayList.remove(arrayList.size() - 1)) == eVar);
                if (this.f11967n.isEmpty()) {
                    this.Q = this.P;
                } else {
                    ((i) g3.g(this.f11967n)).m();
                }
            }
            cVarG = Loader.f12949f;
        } else {
            long jC = this.f11962i.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12950g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f11964k.y(iVar, eVar.f64298c, this.f11955b, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h, iOException, !zC);
        if (!zC) {
            this.f11974u = null;
            this.f11962i.b(eVar.f64296a);
        }
        if (zO) {
            if (this.D) {
                this.f11956c.f(this);
            } else {
                a(new v2.b().f(this.P).d());
            }
        }
        return cVar2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void o(h2.e eVar, long j11, long j12, int i11) {
        this.f11964k.C(i11 == 0 ? new g2.i(eVar.f64296a, eVar.f64297b, j11) : new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, eVar.a()), eVar.f64298c, this.f11955b, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h, i11);
    }

    public void R() {
        this.f11977x.clear();
    }

    public boolean S(Uri uri, androidx.media3.exoplayer.upstream.m.c cVar, boolean z10) {
        androidx.media3.exoplayer.upstream.m.b bVarD;
        if (!this.f11957d.q(uri)) {
            return true;
        }
        long j11 = (z10 || (bVarD = this.f11962i.d(d0.c(this.f11957d.l()), cVar)) == null || bVarD.f13008a != 2) ? -9223372036854775807L : bVarD.f13009b;
        return this.f11957d.s(uri, j11) && j11 != C.TIME_UNSET;
    }

    public void T() {
        if (this.f11967n.isEmpty()) {
            return;
        }
        final i iVar = (i) g3.g(this.f11967n);
        int iD = this.f11957d.d(iVar);
        if (iD == 1) {
            iVar.t();
            return;
        }
        if (iD == 0) {
            this.f11971r.post(new Runnable() { // from class: androidx.media3.exoplayer.hls.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11788a.I(iVar);
                }
            });
        } else if (iD == 2 && !this.T && this.f11963j.i()) {
            this.f11963j.e();
        }
    }

    public void V(androidx.media3.common.f0[] f0VarArr, int i11, int... iArr) {
        this.I = u(f0VarArr);
        this.J = new HashSet();
        for (int i12 : iArr) {
            this.J.add(this.I.b(i12));
        }
        this.L = i11;
        Handler handler = this.f11971r;
        final b bVar = this.f11956c;
        Objects.requireNonNull(bVar);
        handler.post(new Runnable() { // from class: androidx.media3.exoplayer.hls.q
            @Override // java.lang.Runnable
            public final void run() {
                bVar.onPrepared();
            }
        });
        d0();
    }

    public int W(int i11, s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i12) {
        if (F()) {
            return -3;
        }
        int i13 = 0;
        if (!this.f11967n.isEmpty()) {
            int i14 = 0;
            while (i14 < this.f11967n.size() - 1 && y((i) this.f11967n.get(i14))) {
                i14++;
            }
            a1.c1(this.f11967n, 0, i14);
            i iVar = (i) this.f11967n.get(0);
            androidx.media3.common.r rVar = iVar.f64299d;
            if (!rVar.equals(this.G)) {
                this.f11964k.j(this.f11955b, rVar, iVar.f64300e, iVar.f64301f, iVar.f64302g);
            }
            this.G = rVar;
        }
        if (!this.f11967n.isEmpty() && !((i) this.f11967n.get(0)).o()) {
            return -3;
        }
        int iV = this.f11975v[i11].V(s2Var, decoderInputBuffer, i12, this.T);
        if (iV == -5) {
            androidx.media3.common.r rVarJ = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
            if (i11 == this.B) {
                int iD = Ints.d(this.f11975v[i11].T());
                while (i13 < this.f11967n.size() && ((i) this.f11967n.get(i13)).f11742k != iD) {
                    i13++;
                }
                rVarJ = rVarJ.j(i13 < this.f11967n.size() ? ((i) this.f11967n.get(i13)).f64299d : (androidx.media3.common.r) androidx.media3.common.util.a.e(this.F));
            }
            s2Var.f12570b = rVarJ;
        }
        return iV;
    }

    public void X() {
        if (this.D) {
            for (d dVar : this.f11975v) {
                dVar.U();
            }
        }
        this.f11957d.t();
        this.f11963j.l(this);
        this.f11971r.removeCallbacksAndMessages(null);
        this.H = true;
        this.f11972s.clear();
    }

    @Override // androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        List listEmptyList;
        long jMax;
        if (this.T || this.f11963j.i() || this.f11963j.h()) {
            return false;
        }
        if (F()) {
            listEmptyList = Collections.emptyList();
            jMax = this.Q;
            for (d dVar : this.f11975v) {
                dVar.e0(this.Q);
            }
        } else {
            listEmptyList = this.f11968o;
            i iVarA = A();
            jMax = iVarA.f() ? iVarA.f64303h : Math.max(this.P, iVarA.f64302g);
        }
        List list = listEmptyList;
        long j11 = jMax;
        this.f11966m.a();
        this.f11957d.f(v2Var, j11, list, this.D || !list.isEmpty(), this.f11966m);
        e.b bVar = this.f11966m;
        boolean z10 = bVar.f11730b;
        h2.e eVar = bVar.f11729a;
        Uri uri = bVar.f11731c;
        if (z10) {
            this.Q = C.TIME_UNSET;
            this.T = true;
            return true;
        }
        if (eVar == null) {
            if (uri != null) {
                this.f11956c.d(uri);
            }
            return false;
        }
        if (E(eVar)) {
            D((i) eVar);
        }
        this.f11974u = eVar;
        this.f11963j.m(eVar, this, this.f11962i.a(eVar.f64298c));
        return true;
    }

    public boolean a0(long j11, boolean z10) {
        i iVar;
        this.P = j11;
        if (F()) {
            this.Q = j11;
            return true;
        }
        if (!this.f11957d.m()) {
            iVar = null;
            break;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= this.f11967n.size()) {
                iVar = null;
                break;
            }
            iVar = (i) this.f11967n.get(i11);
            if (iVar.f64302g == j11) {
                break;
            }
            i11++;
        }
        if (this.C && !z10 && Z(j11, iVar)) {
            return false;
        }
        this.Q = j11;
        this.T = false;
        this.f11967n.clear();
        if (this.f11963j.i()) {
            if (this.C) {
                for (d dVar : this.f11975v) {
                    dVar.s();
                }
            }
            this.f11963j.e();
        } else {
            this.f11963j.f();
            Y();
        }
        return true;
    }

    public long b(long j11, c4 c4Var) {
        return this.f11957d.c(j11, c4Var);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0122  */
    public boolean b0(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11, boolean z10) {
        boolean z11;
        j();
        int i11 = this.E;
        int i12 = 0;
        for (int i13 = 0; i13 < zVarArr.length; i13++) {
            m mVar = (m) uVarArr[i13];
            if (mVar != null && (zVarArr[i13] == null || !zArr[i13])) {
                this.E--;
                mVar.d();
                uVarArr[i13] = null;
            }
        }
        boolean z12 = z10 || (!this.S ? j11 == this.P : i11 != 0);
        j2.z zVarL = this.f11957d.l();
        boolean z13 = z12;
        j2.z zVar = zVarL;
        for (int i14 = 0; i14 < zVarArr.length; i14++) {
            j2.z zVar2 = zVarArr[i14];
            if (zVar2 != null) {
                int iD = this.I.d(zVar2.getTrackGroup());
                if (iD == this.L) {
                    this.f11957d.w(zVar2);
                    zVar = zVar2;
                }
                if (uVarArr[i14] == null) {
                    this.E++;
                    m mVar2 = new m(this, iD);
                    uVarArr[i14] = mVar2;
                    zArr2[i14] = true;
                    if (this.K != null) {
                        mVar2.a();
                        if (!z13) {
                            d dVar = this.f11975v[this.K[iD]];
                            z13 = (dVar.F() == 0 || dVar.c0(j11, true)) ? false : true;
                        }
                    }
                }
            }
        }
        if (this.E == 0) {
            this.f11957d.t();
            this.G = null;
            this.R = true;
            this.f11967n.clear();
            if (this.f11963j.i()) {
                if (this.C) {
                    d[] dVarArr = this.f11975v;
                    int length = dVarArr.length;
                    while (i12 < length) {
                        dVarArr[i12].s();
                        i12++;
                    }
                }
                this.f11963j.e();
            } else {
                Y();
            }
        } else {
            if (this.f11967n.isEmpty() || Objects.equals(zVar, zVarL)) {
                z11 = z10;
            } else {
                if (!this.S) {
                    long j12 = j11 < 0 ? -j11 : 0L;
                    i iVarA = A();
                    zVar.e(j11, j12, C.TIME_UNSET, this.f11968o, this.f11957d.a(iVarA, j11));
                    if (zVar.getSelectedIndexInTrackGroup() == this.f11957d.k().b(iVarA.f64299d)) {
                        z11 = z10;
                    }
                }
                this.R = true;
                z11 = true;
                z13 = true;
            }
            if (z13) {
                a0(j11, z11);
                while (i12 < uVarArr.length) {
                    if (uVarArr[i12] != null) {
                        zArr2[i12] = true;
                    }
                    i12++;
                }
            }
        }
        i0(uVarArr);
        this.S = true;
        return z13;
    }

    @Override // androidx.media3.exoplayer.source.e0.d
    public void c(androidx.media3.common.r rVar) {
        this.f11971r.post(this.f11969p);
    }

    public void c0(DrmInitData drmInitData) {
        if (Objects.equals(this.W, drmInitData)) {
            return;
        }
        this.W = drmInitData;
        int i11 = 0;
        while (true) {
            d[] dVarArr = this.f11975v;
            if (i11 >= dVarArr.length) {
                return;
            }
            if (this.O[i11]) {
                dVarArr[i11].l0(drmInitData);
            }
            i11++;
        }
    }

    public void discardBuffer(long j11, boolean z10) {
        if (!this.C || F()) {
            return;
        }
        int length = this.f11975v.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.f11975v[i11].r(j11, z10, this.N[i11]);
        }
    }

    public void e0(boolean z10) {
        this.f11957d.v(z10);
    }

    @Override // l2.t
    public void endTracks() {
        this.U = true;
        this.f11971r.post(this.f11970q);
    }

    @Override // l2.t
    public void f(m0 m0Var) {
    }

    public void f0(long j11) {
        if (this.V != j11) {
            this.V = j11;
            for (d dVar : this.f11975v) {
                dVar.d0(j11);
            }
        }
    }

    public int g0(int i11, long j11) {
        if (F()) {
            return 0;
        }
        d dVar = this.f11975v[i11];
        int iH = dVar.H(j11, this.T);
        i iVar = (i) g3.h(this.f11967n, null);
        if (iVar != null && !iVar.o()) {
            iH = Math.min(iH, iVar.k(i11) - dVar.F());
        }
        dVar.h0(iH);
        return iH;
    }

    @Override // androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        if (this.T) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.Q;
        }
        long jMax = this.P;
        i iVarA = A();
        if (!iVarA.f()) {
            if (this.f11967n.size() > 1) {
                ArrayList arrayList = this.f11967n;
                iVarA = (i) arrayList.get(arrayList.size() - 2);
            } else {
                iVarA = null;
            }
        }
        if (iVarA != null) {
            jMax = Math.max(jMax, iVarA.f64303h);
        }
        if (this.C) {
            for (d dVar : this.f11975v) {
                jMax = Math.max(jMax, dVar.C());
            }
        }
        return jMax;
    }

    @Override // androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        if (F()) {
            return this.Q;
        }
        if (this.T) {
            return Long.MIN_VALUE;
        }
        return A().f64303h;
    }

    public z getTrackGroups() {
        j();
        return this.I;
    }

    public void h0(int i11) {
        j();
        androidx.media3.common.util.a.e(this.K);
        int i12 = this.K[i11];
        androidx.media3.common.util.a.g(this.N[i12]);
        this.N[i12] = false;
    }

    @Override // androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f11963j.i();
    }

    public int l(int i11) {
        j();
        androidx.media3.common.util.a.e(this.K);
        int i12 = this.K[i11];
        if (i12 == -1) {
            return this.J.contains(this.I.b(i11)) ? -3 : -2;
        }
        boolean[] zArr = this.N;
        if (zArr[i12]) {
            return -2;
        }
        zArr[i12] = true;
        return i12;
    }

    public void maybeThrowPrepareError() throws ParserException {
        L();
        if (this.T && !this.D) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.e
    public void onLoaderReleased() {
        for (d dVar : this.f11975v) {
            dVar.W();
        }
    }

    public void r() {
        if (this.D) {
            return;
        }
        a(new v2.b().f(this.P).d());
    }

    @Override // androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        if (this.f11963j.h() || F()) {
            return;
        }
        if (this.f11963j.i()) {
            androidx.media3.common.util.a.e(this.f11974u);
            if (this.f11957d.x(j11, this.f11974u, this.f11968o)) {
                this.f11963j.e();
                return;
            }
            return;
        }
        int size = this.f11968o.size();
        while (size > 0 && this.f11957d.d((i) this.f11968o.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.f11968o.size()) {
            w(size);
        }
        int i11 = this.f11957d.i(j11, this.f11968o);
        if (i11 < this.f11967n.size()) {
            w(i11);
        }
    }

    @Override // l2.t
    public s0 track(int i11, int i12) {
        s0 s0VarT;
        if (!Y.contains(Integer.valueOf(i12))) {
            int i13 = 0;
            while (true) {
                s0[] s0VarArr = this.f11975v;
                if (i13 >= s0VarArr.length) {
                    s0VarT = null;
                    break;
                }
                if (this.f11976w[i13] == i11) {
                    s0VarT = s0VarArr[i13];
                    break;
                }
                i13++;
            }
        } else {
            s0VarT = B(i11, i12);
        }
        if (s0VarT == null) {
            if (this.U) {
                return s(i11, i12);
            }
            s0VarT = t(i11, i12);
        }
        if (i12 != 5) {
            return s0VarT;
        }
        if (this.f11979z == null) {
            this.f11979z = new c(s0VarT, this.f11965l);
        }
        return this.f11979z;
    }
}
