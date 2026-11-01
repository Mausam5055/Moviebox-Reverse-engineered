package s3;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class k0 implements l2.r {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final l2.x f75005v = new l2.x() { // from class: s3.j0
        @Override // l2.x
        public /* synthetic */ l2.x a(i3.s.a aVar) {
            return l2.w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ l2.x b(int i11) {
            return l2.w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ l2.r[] c(Uri uri, Map map) {
            return l2.w.a(this, uri, map);
        }

        @Override // l2.x
        public final l2.r[] createExtractors() {
            return k0.x();
        }

        @Override // l2.x
        public /* synthetic */ l2.x d(boolean z10) {
            return l2.w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f75006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f75007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f75008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f75009d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SparseIntArray f75011f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final l0.c f75012g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i3.s.a f75013h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final SparseArray f75014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final SparseBooleanArray f75015j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final SparseBooleanArray f75016k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final i0 f75017l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private h0 f75018m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private l2.t f75019n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f75020o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f75021p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f75022q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f75023r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private l0 f75024s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f75025t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f75026u;

    private class a implements d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.common.util.i0 f75027a = new androidx.media3.common.util.i0(new byte[4]);

        public a() {
        }

        @Override // s3.d0
        public void a(androidx.media3.common.util.j0 j0Var) {
            if (j0Var.H() == 0 && (j0Var.H() & 128) != 0) {
                j0Var.X(6);
                int iA = j0Var.a() / 4;
                for (int i11 = 0; i11 < iA; i11++) {
                    j0Var.k(this.f75027a, 4);
                    int iH = this.f75027a.h(16);
                    this.f75027a.r(3);
                    if (iH == 0) {
                        this.f75027a.r(13);
                    } else {
                        int iH2 = this.f75027a.h(13);
                        if (k0.this.f75014i.get(iH2) == null) {
                            k0.this.f75014i.put(iH2, new e0(k0.this.new b(iH2)));
                            k0.l(k0.this);
                        }
                    }
                }
                if (k0.this.f75006a != 2) {
                    k0.this.f75014i.remove(0);
                }
            }
        }

        @Override // s3.d0
        public void b(p0 p0Var, l2.t tVar, l0.d dVar) {
        }
    }

    private class b implements d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.common.util.i0 f75029a = new androidx.media3.common.util.i0(new byte[5]);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SparseArray f75030b = new SparseArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SparseIntArray f75031c = new SparseIntArray();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f75032d;

        public b(int i11) {
            this.f75032d = i11;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x004a  */
        /* JADX WARN: Code duplicated, block: B:24:0x005c  */
        /* JADX WARN: Code duplicated, block: B:27:0x0063  */
        private l0.b c(androidx.media3.common.util.j0 j0Var, int i11) {
            int i12;
            int iF = j0Var.f();
            int i13 = iF + i11;
            int i14 = -1;
            String str = null;
            ArrayList arrayList = null;
            int iH = 0;
            while (j0Var.f() < i13) {
                int iH2 = j0Var.H();
                int iF2 = j0Var.f() + j0Var.H();
                if (iF2 > i13) {
                    break;
                }
                if (iH2 == 5) {
                    long J = j0Var.J();
                    if (J == 1094921523) {
                        i14 = 129;
                    } else if (J == 1161904947) {
                        i14 = 135;
                    } else if (J == 1094921524) {
                        i14 = 172;
                    } else if (J == 1212503619) {
                        i14 = 36;
                    }
                } else if (iH2 == 106) {
                    i14 = 129;
                } else if (iH2 == 122) {
                    i14 = 135;
                } else if (iH2 == 127) {
                    int iH3 = j0Var.H();
                    if (iH3 == 21) {
                        i14 = 172;
                    } else if (iH3 == 14) {
                        i14 = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                    } else if (iH3 == 33) {
                        i14 = 139;
                    }
                } else {
                    if (iH2 == 123) {
                        i12 = 138;
                    } else if (iH2 == 10) {
                        String strTrim = j0Var.E(3).trim();
                        iH = j0Var.H();
                        str = strTrim;
                    } else if (iH2 == 89) {
                        ArrayList arrayList2 = new ArrayList();
                        while (j0Var.f() < iF2) {
                            String strTrim2 = j0Var.E(3).trim();
                            int iH4 = j0Var.H();
                            byte[] bArr = new byte[4];
                            j0Var.l(bArr, 0, 4);
                            arrayList2.add(new l0.a(strTrim2, iH4, bArr));
                        }
                        arrayList = arrayList2;
                        i14 = 89;
                    } else if (iH2 == 111) {
                        i12 = InputDeviceCompat.SOURCE_KEYBOARD;
                    }
                    i14 = i12;
                }
                j0Var.X(iF2 - j0Var.f());
            }
            j0Var.W(i13);
            return new l0.b(i14, str, iH, arrayList, Arrays.copyOfRange(j0Var.e(), iF, i13));
        }

        @Override // s3.d0
        public void a(androidx.media3.common.util.j0 j0Var) {
            p0 p0Var;
            if (j0Var.H() != 2) {
                return;
            }
            if (k0.this.f75006a == 1 || k0.this.f75006a == 2 || k0.this.f75020o == 1) {
                p0Var = (p0) k0.this.f75009d.get(0);
            } else {
                p0Var = new p0(((p0) k0.this.f75009d.get(0)).d());
                k0.this.f75009d.add(p0Var);
            }
            if ((j0Var.H() & 128) == 0) {
                return;
            }
            j0Var.X(1);
            int iP = j0Var.P();
            int i11 = 3;
            j0Var.X(3);
            j0Var.k(this.f75029a, 2);
            this.f75029a.r(3);
            int i12 = 13;
            k0.this.f75026u = this.f75029a.h(13);
            j0Var.k(this.f75029a, 2);
            int i13 = 4;
            this.f75029a.r(4);
            j0Var.X(this.f75029a.h(12));
            if (k0.this.f75006a == 2 && k0.this.f75024s == null) {
                l0.b bVar = new l0.b(21, null, 0, null, a1.f10355f);
                k0 k0Var = k0.this;
                k0Var.f75024s = k0Var.f75012g.a(21, bVar);
                if (k0.this.f75024s != null) {
                    k0.this.f75024s.b(p0Var, k0.this.f75019n, new l0.d(iP, 21, 8192));
                }
            }
            this.f75030b.clear();
            this.f75031c.clear();
            int iA = j0Var.a();
            while (iA > 0) {
                j0Var.k(this.f75029a, 5);
                int iH = this.f75029a.h(8);
                this.f75029a.r(i11);
                int iH2 = this.f75029a.h(i12);
                this.f75029a.r(i13);
                int iH3 = this.f75029a.h(12);
                l0.b bVarC = c(j0Var, iH3);
                if (iH == 6 || iH == 5) {
                    iH = bVarC.f75044a;
                }
                iA -= iH3 + 5;
                int i14 = k0.this.f75006a == 2 ? iH : iH2;
                if (!k0.this.f75015j.get(i14)) {
                    l0 l0VarA = (k0.this.f75006a == 2 && iH == 21) ? k0.this.f75024s : k0.this.f75012g.a(iH, bVarC);
                    if (k0.this.f75006a != 2 || iH2 < this.f75031c.get(i14, 8192)) {
                        this.f75031c.put(i14, iH2);
                        this.f75030b.put(i14, l0VarA);
                    }
                }
                i11 = 3;
                i13 = 4;
                i12 = 13;
            }
            int size = this.f75031c.size();
            for (int i15 = 0; i15 < size; i15++) {
                int iKeyAt = this.f75031c.keyAt(i15);
                int iValueAt = this.f75031c.valueAt(i15);
                k0.this.f75015j.put(iKeyAt, true);
                k0.this.f75016k.put(iValueAt, true);
                l0 l0Var = (l0) this.f75030b.valueAt(i15);
                if (l0Var != null) {
                    if (l0Var != k0.this.f75024s) {
                        l0Var.b(p0Var, k0.this.f75019n, new l0.d(iP, iKeyAt, 8192));
                    }
                    k0.this.f75014i.put(iValueAt, l0Var);
                }
            }
            if (k0.this.f75006a == 2) {
                if (k0.this.f75021p) {
                    return;
                }
                k0.this.f75019n.endTracks();
                k0.this.f75020o = 0;
                k0.this.f75021p = true;
                return;
            }
            k0.this.f75014i.remove(this.f75032d);
            k0 k0Var2 = k0.this;
            k0Var2.f75020o = k0Var2.f75006a == 1 ? 0 : k0.this.f75020o - 1;
            if (k0.this.f75020o == 0) {
                k0.this.f75019n.endTracks();
                k0.this.f75021p = true;
            }
        }

        @Override // s3.d0
        public void b(p0 p0Var, l2.t tVar, l0.d dVar) {
        }
    }

    @Deprecated
    public k0() {
        this(1, 1, i3.s.a.f64923a, new p0(0L), new j(0), 112800);
    }

    public k0(int i11, int i12, i3.s.a aVar, p0 p0Var, l0.c cVar, int i13) {
        this.f75012g = (l0.c) androidx.media3.common.util.a.e(cVar);
        this.f75008c = i13;
        this.f75006a = i11;
        this.f75007b = i12;
        this.f75013h = aVar;
        if (i11 == 1 || i11 == 2) {
            this.f75009d = Collections.singletonList(p0Var);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f75009d = arrayList;
            arrayList.add(p0Var);
        }
        this.f75010e = new androidx.media3.common.util.j0(new byte[9400], 0);
        this.f75015j = new SparseBooleanArray();
        this.f75016k = new SparseBooleanArray();
        this.f75014i = new SparseArray();
        this.f75011f = new SparseIntArray();
        this.f75017l = new i0(i13);
        this.f75019n = l2.t.f68683n1;
        this.f75026u = -1;
        z();
    }

    public k0(int i11, i3.s.a aVar) {
        this(1, i11, aVar, new p0(0L), new j(0), 112800);
    }

    private boolean A(int i11) {
        return this.f75006a == 2 || this.f75021p || !this.f75016k.get(i11, false);
    }

    static /* synthetic */ int l(k0 k0Var) {
        int i11 = k0Var.f75020o;
        k0Var.f75020o = i11 + 1;
        return i11;
    }

    private boolean v(l2.s sVar) {
        byte[] bArrE = this.f75010e.e();
        if (9400 - this.f75010e.f() < 188) {
            int iA = this.f75010e.a();
            if (iA > 0) {
                System.arraycopy(bArrE, this.f75010e.f(), bArrE, 0, iA);
            }
            this.f75010e.U(bArrE, iA);
        }
        while (this.f75010e.a() < 188) {
            int iG = this.f75010e.g();
            int i11 = sVar.read(bArrE, iG, 9400 - iG);
            if (i11 == -1) {
                return false;
            }
            this.f75010e.V(iG + i11);
        }
        return true;
    }

    private int w() throws ParserException {
        int iF = this.f75010e.f();
        int iG = this.f75010e.g();
        int iA = m0.a(this.f75010e.e(), iF, iG);
        this.f75010e.W(iA);
        int i11 = iA + 188;
        if (i11 > iG) {
            int i12 = this.f75025t + (iA - iF);
            this.f75025t = i12;
            if (this.f75006a == 2 && i12 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f75025t = 0;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2.r[] x() {
        return new l2.r[]{new k0(1, i3.s.a.f64923a)};
    }

    private void y(long j11) {
        if (this.f75022q) {
            return;
        }
        this.f75022q = true;
        if (this.f75017l.b() == C.TIME_UNSET) {
            this.f75019n.f(new l2.m0.b(this.f75017l.b()));
            return;
        }
        h0 h0Var = new h0(this.f75017l.c(), this.f75017l.b(), j11, this.f75026u, this.f75008c);
        this.f75018m = h0Var;
        this.f75019n.f(h0Var.b());
    }

    private void z() {
        this.f75015j.clear();
        this.f75014i.clear();
        SparseArray sparseArrayCreateInitialPayloadReaders = this.f75012g.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f75014i.put(sparseArrayCreateInitialPayloadReaders.keyAt(i11), (l0) sparseArrayCreateInitialPayloadReaders.valueAt(i11));
        }
        this.f75014i.put(0, new e0(new a()));
        this.f75024s = null;
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        if ((this.f75007b & 1) == 0) {
            tVar = new i3.t(tVar, this.f75013h);
        }
        this.f75019n = tVar;
    }

    @Override // l2.r
    public int c(l2.s sVar, l2.l0 l0Var) throws ParserException {
        long length = sVar.getLength();
        boolean z10 = this.f75006a == 2;
        if (this.f75021p) {
            if (length != -1 && !z10 && !this.f75017l.d()) {
                return this.f75017l.e(sVar, l0Var, this.f75026u);
            }
            y(length);
            if (this.f75023r) {
                this.f75023r = false;
                seek(0L, 0L);
                if (sVar.getPosition() != 0) {
                    l0Var.f68620a = 0L;
                    return 1;
                }
            }
            h0 h0Var = this.f75018m;
            if (h0Var != null && h0Var.d()) {
                return this.f75018m.c(sVar, l0Var);
            }
        }
        if (!v(sVar)) {
            for (int i11 = 0; i11 < this.f75014i.size(); i11++) {
                l0 l0Var2 = (l0) this.f75014i.valueAt(i11);
                if (l0Var2 instanceof y) {
                    y yVar = (y) l0Var2;
                    if (yVar.c(z10)) {
                        yVar.a(new androidx.media3.common.util.j0(), 1);
                    }
                }
            }
            return -1;
        }
        int iW = w();
        int iG = this.f75010e.g();
        if (iW > iG) {
            return 0;
        }
        int iQ = this.f75010e.q();
        if ((8388608 & iQ) != 0) {
            this.f75010e.W(iW);
            return 0;
        }
        int i12 = (4194304 & iQ) != 0 ? 1 : 0;
        int i13 = (2096896 & iQ) >> 8;
        boolean z11 = (iQ & 32) != 0;
        l0 l0Var3 = (iQ & 16) != 0 ? (l0) this.f75014i.get(i13) : null;
        if (l0Var3 == null) {
            this.f75010e.W(iW);
            return 0;
        }
        if (this.f75006a != 2) {
            int i14 = iQ & 15;
            int i15 = this.f75011f.get(i13, i14 - 1);
            this.f75011f.put(i13, i14);
            if (i15 == i14) {
                this.f75010e.W(iW);
                return 0;
            }
            if (i14 != ((i15 + 1) & 15)) {
                l0Var3.seek();
            }
        }
        if (z11) {
            int iH = this.f75010e.H();
            i12 |= (this.f75010e.H() & 64) != 0 ? 2 : 0;
            this.f75010e.X(iH - 1);
        }
        boolean z12 = this.f75021p;
        if (A(i13)) {
            this.f75010e.V(iW);
            l0Var3.a(this.f75010e, i12);
            this.f75010e.V(iG);
        }
        if (this.f75006a != 2 && !z12 && this.f75021p && length != -1) {
            this.f75023r = true;
        }
        this.f75010e.W(iW);
        return 0;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        byte[] bArrE = this.f75010e.e();
        sVar.peekFully(bArrE, 0, 940);
        for (int i11 = 0; i11 < 188; i11++) {
            int i12 = 0;
            while (true) {
                if (i12 >= 5) {
                    sVar.skipFully(i11);
                    return true;
                }
                if (bArrE[(i12 * 188) + i11] != 71) {
                    break;
                }
                i12++;
            }
        }
        return false;
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return l2.q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        h0 h0Var;
        androidx.media3.common.util.a.g(this.f75006a != 2);
        int size = this.f75009d.size();
        for (int i11 = 0; i11 < size; i11++) {
            p0 p0Var = (p0) this.f75009d.get(i11);
            boolean z10 = p0Var.f() == C.TIME_UNSET;
            if (!z10) {
                long jD = p0Var.d();
                z10 = (jD == C.TIME_UNSET || jD == 0 || jD == j12) ? false : true;
            }
            if (z10) {
                p0Var.i(j12);
            }
        }
        if (j12 != 0 && (h0Var = this.f75018m) != null) {
            h0Var.h(j12);
        }
        this.f75010e.S(0);
        this.f75011f.clear();
        for (int i12 = 0; i12 < this.f75014i.size(); i12++) {
            ((l0) this.f75014i.valueAt(i12)).seek();
        }
        this.f75025t = 0;
    }
}
