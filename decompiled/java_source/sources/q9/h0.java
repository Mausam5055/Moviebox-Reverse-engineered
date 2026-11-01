package q9;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 implements g9.l {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final g9.r f73262t = new g9.r() { // from class: q9.g0
        @Override // g9.r
        public /* synthetic */ g9.l[] c(Uri uri, Map map) {
            return g9.q.a(this, uri, map);
        }

        @Override // g9.r
        public final g9.l[] createExtractors() {
            return h0.v();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f73263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f73264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f73265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseIntArray f73267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i0.c f73268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SparseArray f73269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SparseBooleanArray f73270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final SparseBooleanArray f73271i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f0 f73272j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e0 f73273k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private g9.n f73274l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f73275m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f73276n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f73277o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f73278p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private i0 f73279q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f73280r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f73281s;

    private class a implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.c0 f73282a = new com.google.android.exoplayer2.util.c0(new byte[4]);

        public a() {
        }

        @Override // q9.b0
        public void a(com.google.android.exoplayer2.util.d0 d0Var) {
            if (d0Var.D() == 0 && (d0Var.D() & 128) != 0) {
                d0Var.Q(6);
                int iA = d0Var.a() / 4;
                for (int i11 = 0; i11 < iA; i11++) {
                    d0Var.i(this.f73282a, 4);
                    int iH = this.f73282a.h(16);
                    this.f73282a.r(3);
                    if (iH == 0) {
                        this.f73282a.r(13);
                    } else {
                        int iH2 = this.f73282a.h(13);
                        if (h0.this.f73269g.get(iH2) == null) {
                            h0.this.f73269g.put(iH2, new c0(h0.this.new b(iH2)));
                            h0.j(h0.this);
                        }
                    }
                }
                if (h0.this.f73263a != 2) {
                    h0.this.f73269g.remove(0);
                }
            }
        }

        @Override // q9.b0
        public void b(l0 l0Var, g9.n nVar, i0.d dVar) {
        }
    }

    private class b implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.c0 f73284a = new com.google.android.exoplayer2.util.c0(new byte[5]);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SparseArray f73285b = new SparseArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SparseIntArray f73286c = new SparseIntArray();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f73287d;

        public b(int i11) {
            this.f73287d = i11;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:24:0x0055  */
        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        private i0.b c(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
            int iE = d0Var.e();
            int i12 = i11 + iE;
            int i13 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (d0Var.e() < i12) {
                int iD = d0Var.D();
                int iE2 = d0Var.e() + d0Var.D();
                if (iE2 > i12) {
                    break;
                }
                if (iD == 5) {
                    long jF = d0Var.F();
                    if (jF == 1094921523) {
                        i13 = 129;
                    } else if (jF == 1161904947) {
                        i13 = 135;
                    } else if (jF == 1094921524) {
                        i13 = 172;
                    } else if (jF == 1212503619) {
                        i13 = 36;
                    }
                } else if (iD == 106) {
                    i13 = 129;
                } else if (iD == 122) {
                    i13 = 135;
                } else if (iD == 127) {
                    if (d0Var.D() == 21) {
                        i13 = 172;
                    }
                } else if (iD == 123) {
                    i13 = 138;
                } else if (iD == 10) {
                    strTrim = d0Var.A(3).trim();
                } else if (iD == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (d0Var.e() < iE2) {
                        String strTrim2 = d0Var.A(3).trim();
                        int iD2 = d0Var.D();
                        byte[] bArr = new byte[4];
                        d0Var.j(bArr, 0, 4);
                        arrayList2.add(new i0.a(strTrim2, iD2, bArr));
                    }
                    arrayList = arrayList2;
                    i13 = 89;
                } else if (iD == 111) {
                    i13 = InputDeviceCompat.SOURCE_KEYBOARD;
                }
                d0Var.Q(iE2 - d0Var.e());
            }
            d0Var.P(i12);
            return new i0.b(i13, strTrim, arrayList, Arrays.copyOfRange(d0Var.d(), iE, i12));
        }

        @Override // q9.b0
        public void a(com.google.android.exoplayer2.util.d0 d0Var) {
            l0 l0Var;
            if (d0Var.D() != 2) {
                return;
            }
            if (h0.this.f73263a == 1 || h0.this.f73263a == 2 || h0.this.f73275m == 1) {
                l0Var = (l0) h0.this.f73265c.get(0);
            } else {
                l0Var = new l0(((l0) h0.this.f73265c.get(0)).c());
                h0.this.f73265c.add(l0Var);
            }
            if ((d0Var.D() & 128) == 0) {
                return;
            }
            d0Var.Q(1);
            int iJ = d0Var.J();
            int i11 = 3;
            d0Var.Q(3);
            d0Var.i(this.f73284a, 2);
            this.f73284a.r(3);
            int i12 = 13;
            h0.this.f73281s = this.f73284a.h(13);
            d0Var.i(this.f73284a, 2);
            int i13 = 4;
            this.f73284a.r(4);
            d0Var.Q(this.f73284a.h(12));
            if (h0.this.f73263a == 2 && h0.this.f73279q == null) {
                i0.b bVar = new i0.b(21, null, null, p0.f27631f);
                h0 h0Var = h0.this;
                h0Var.f73279q = h0Var.f73268f.a(21, bVar);
                if (h0.this.f73279q != null) {
                    h0.this.f73279q.b(l0Var, h0.this.f73274l, new i0.d(iJ, 21, 8192));
                }
            }
            this.f73285b.clear();
            this.f73286c.clear();
            int iA = d0Var.a();
            while (iA > 0) {
                d0Var.i(this.f73284a, 5);
                int iH = this.f73284a.h(8);
                this.f73284a.r(i11);
                int iH2 = this.f73284a.h(i12);
                this.f73284a.r(i13);
                int iH3 = this.f73284a.h(12);
                i0.b bVarC = c(d0Var, iH3);
                if (iH == 6 || iH == 5) {
                    iH = bVarC.f73314a;
                }
                iA -= iH3 + 5;
                int i14 = h0.this.f73263a == 2 ? iH : iH2;
                if (!h0.this.f73270h.get(i14)) {
                    i0 i0VarA = (h0.this.f73263a == 2 && iH == 21) ? h0.this.f73279q : h0.this.f73268f.a(iH, bVarC);
                    if (h0.this.f73263a != 2 || iH2 < this.f73286c.get(i14, 8192)) {
                        this.f73286c.put(i14, iH2);
                        this.f73285b.put(i14, i0VarA);
                    }
                }
                i11 = 3;
                i13 = 4;
                i12 = 13;
            }
            int size = this.f73286c.size();
            for (int i15 = 0; i15 < size; i15++) {
                int iKeyAt = this.f73286c.keyAt(i15);
                int iValueAt = this.f73286c.valueAt(i15);
                h0.this.f73270h.put(iKeyAt, true);
                h0.this.f73271i.put(iValueAt, true);
                i0 i0Var = (i0) this.f73285b.valueAt(i15);
                if (i0Var != null) {
                    if (i0Var != h0.this.f73279q) {
                        i0Var.b(l0Var, h0.this.f73274l, new i0.d(iJ, iKeyAt, 8192));
                    }
                    h0.this.f73269g.put(iValueAt, i0Var);
                }
            }
            if (h0.this.f73263a == 2) {
                if (h0.this.f73276n) {
                    return;
                }
                h0.this.f73274l.endTracks();
                h0.this.f73275m = 0;
                h0.this.f73276n = true;
                return;
            }
            h0.this.f73269g.remove(this.f73287d);
            h0 h0Var2 = h0.this;
            h0Var2.f73275m = h0Var2.f73263a == 1 ? 0 : h0.this.f73275m - 1;
            if (h0.this.f73275m == 0) {
                h0.this.f73274l.endTracks();
                h0.this.f73276n = true;
            }
        }

        @Override // q9.b0
        public void b(l0 l0Var, g9.n nVar, i0.d dVar) {
        }
    }

    public h0() {
        this(0);
    }

    public h0(int i11) {
        this(1, i11, 112800);
    }

    public h0(int i11, int i12, int i13) {
        this(i11, new l0(0L), new j(i12), i13);
    }

    public h0(int i11, l0 l0Var, i0.c cVar) {
        this(i11, l0Var, cVar, 112800);
    }

    public h0(int i11, l0 l0Var, i0.c cVar, int i12) {
        this.f73268f = (i0.c) com.google.android.exoplayer2.util.a.e(cVar);
        this.f73264b = i12;
        this.f73263a = i11;
        if (i11 == 1 || i11 == 2) {
            this.f73265c = Collections.singletonList(l0Var);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f73265c = arrayList;
            arrayList.add(l0Var);
        }
        this.f73266d = new com.google.android.exoplayer2.util.d0(new byte[9400], 0);
        this.f73270h = new SparseBooleanArray();
        this.f73271i = new SparseBooleanArray();
        this.f73269g = new SparseArray();
        this.f73267e = new SparseIntArray();
        this.f73272j = new f0(i12);
        this.f73274l = g9.n.f63453i1;
        this.f73281s = -1;
        x();
    }

    static /* synthetic */ int j(h0 h0Var) {
        int i11 = h0Var.f73275m;
        h0Var.f73275m = i11 + 1;
        return i11;
    }

    private boolean t(g9.m mVar) {
        byte[] bArrD = this.f73266d.d();
        if (9400 - this.f73266d.e() < 188) {
            int iA = this.f73266d.a();
            if (iA > 0) {
                System.arraycopy(bArrD, this.f73266d.e(), bArrD, 0, iA);
            }
            this.f73266d.N(bArrD, iA);
        }
        while (this.f73266d.a() < 188) {
            int iF = this.f73266d.f();
            int i11 = mVar.read(bArrD, iF, 9400 - iF);
            if (i11 == -1) {
                return false;
            }
            this.f73266d.O(iF + i11);
        }
        return true;
    }

    private int u() throws ParserException {
        int iE = this.f73266d.e();
        int iF = this.f73266d.f();
        int iA = j0.a(this.f73266d.d(), iE, iF);
        this.f73266d.P(iA);
        int i11 = iA + 188;
        if (i11 > iF) {
            int i12 = this.f73280r + (iA - iE);
            this.f73280r = i12;
            if (this.f73263a == 2 && i12 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f73280r = 0;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g9.l[] v() {
        return new g9.l[]{new h0()};
    }

    private void w(long j11) {
        if (this.f73277o) {
            return;
        }
        this.f73277o = true;
        if (this.f73272j.b() == C.TIME_UNSET) {
            this.f73274l.d(new g9.b0.b(this.f73272j.b()));
            return;
        }
        e0 e0Var = new e0(this.f73272j.c(), this.f73272j.b(), j11, this.f73281s, this.f73264b);
        this.f73273k = e0Var;
        this.f73274l.d(e0Var.b());
    }

    private void x() {
        this.f73270h.clear();
        this.f73269g.clear();
        SparseArray sparseArrayCreateInitialPayloadReaders = this.f73268f.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f73269g.put(sparseArrayCreateInitialPayloadReaders.keyAt(i11), (i0) sparseArrayCreateInitialPayloadReaders.valueAt(i11));
        }
        this.f73269g.put(0, new c0(new a()));
        this.f73279q = null;
    }

    private boolean y(int i11) {
        return this.f73263a == 2 || this.f73276n || !this.f73271i.get(i11, false);
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.f73274l = nVar;
    }

    @Override // g9.l
    public int c(g9.m mVar, g9.a0 a0Var) throws ParserException {
        long length = mVar.getLength();
        if (this.f73276n) {
            if (length != -1 && this.f73263a != 2 && !this.f73272j.d()) {
                return this.f73272j.e(mVar, a0Var, this.f73281s);
            }
            w(length);
            if (this.f73278p) {
                this.f73278p = false;
                seek(0L, 0L);
                if (mVar.getPosition() != 0) {
                    a0Var.f63369a = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.f73273k;
            if (e0Var != null && e0Var.d()) {
                return this.f73273k.c(mVar, a0Var);
            }
        }
        if (!t(mVar)) {
            return -1;
        }
        int iU = u();
        int iF = this.f73266d.f();
        if (iU > iF) {
            return 0;
        }
        int iN = this.f73266d.n();
        if ((8388608 & iN) != 0) {
            this.f73266d.P(iU);
            return 0;
        }
        int i11 = (4194304 & iN) != 0 ? 1 : 0;
        int i12 = (2096896 & iN) >> 8;
        boolean z10 = (iN & 32) != 0;
        i0 i0Var = (iN & 16) != 0 ? (i0) this.f73269g.get(i12) : null;
        if (i0Var == null) {
            this.f73266d.P(iU);
            return 0;
        }
        if (this.f73263a != 2) {
            int i13 = iN & 15;
            int i14 = this.f73267e.get(i12, i13 - 1);
            this.f73267e.put(i12, i13);
            if (i14 == i13) {
                this.f73266d.P(iU);
                return 0;
            }
            if (i13 != ((i14 + 1) & 15)) {
                i0Var.seek();
            }
        }
        if (z10) {
            int iD = this.f73266d.D();
            i11 |= (this.f73266d.D() & 64) != 0 ? 2 : 0;
            this.f73266d.Q(iD - 1);
        }
        boolean z11 = this.f73276n;
        if (y(i12)) {
            this.f73266d.O(iU);
            i0Var.a(this.f73266d, i11);
            this.f73266d.O(iF);
        }
        if (this.f73263a != 2 && !z11 && this.f73276n && length != -1) {
            this.f73278p = true;
        }
        this.f73266d.P(iU);
        return 0;
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        byte[] bArrD = this.f73266d.d();
        mVar.peekFully(bArrD, 0, 940);
        for (int i11 = 0; i11 < 188; i11++) {
            int i12 = 0;
            while (true) {
                if (i12 >= 5) {
                    mVar.skipFully(i11);
                    return true;
                }
                if (bArrD[(i12 * 188) + i11] != 71) {
                    break;
                }
                i12++;
            }
        }
        return false;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        e0 e0Var;
        com.google.android.exoplayer2.util.a.g(this.f73263a != 2);
        int size = this.f73265c.size();
        for (int i11 = 0; i11 < size; i11++) {
            l0 l0Var = (l0) this.f73265c.get(i11);
            boolean z10 = l0Var.e() == C.TIME_UNSET;
            if (!z10) {
                long jC = l0Var.c();
                z10 = (jC == C.TIME_UNSET || jC == 0 || jC == j12) ? false : true;
            }
            if (z10) {
                l0Var.g(j12);
            }
        }
        if (j12 != 0 && (e0Var = this.f73273k) != null) {
            e0Var.h(j12);
        }
        this.f73266d.L(0);
        this.f73267e.clear();
        for (int i12 = 0; i12 < this.f73269g.size(); i12++) {
            ((i0) this.f73269g.valueAt(i12)).seek();
        }
        this.f73280r = 0;
    }
}
