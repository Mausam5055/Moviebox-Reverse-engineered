package o9;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.a0;
import g9.b0;
import g9.c0;
import g9.e0;
import g9.f0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class k implements g9.l, b0 {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final g9.r f70834y = new g9.r() { // from class: o9.j
        @Override // g9.r
        public /* synthetic */ g9.l[] c(Uri uri, Map map) {
            return g9.q.a(this, uri, map);
        }

        @Override // g9.r
        public final g9.l[] createExtractors() {
            return k.n();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f70835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f70836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f70837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d0 f70838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d0 f70839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f70840f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m f70841g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f70842h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f70843i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f70844j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f70845k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f70846l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private d0 f70847m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70848n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f70849o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70850p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f70851q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private g9.n f70852r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a[] f70853s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long[][] f70854t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f70855u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f70856v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f70857w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private MotionPhotoMetadata f70858x;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final o f70859a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r f70860b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final e0 f70861c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final f0 f70862d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f70863e;

        public a(o oVar, r rVar, e0 e0Var) {
            this.f70859a = oVar;
            this.f70860b = rVar;
            this.f70861c = e0Var;
            this.f70862d = MimeTypes.AUDIO_TRUEHD.equals(oVar.f70881f.f25496l) ? new f0() : null;
        }
    }

    public k() {
        this(0);
    }

    public k(int i11) {
        this.f70835a = i11;
        this.f70843i = (i11 & 4) != 0 ? 3 : 0;
        this.f70841g = new m();
        this.f70842h = new ArrayList();
        this.f70839e = new d0(16);
        this.f70840f = new ArrayDeque();
        this.f70836b = new d0(x.f27664a);
        this.f70837c = new d0(4);
        this.f70838d = new d0();
        this.f70848n = -1;
        this.f70852r = g9.n.f63453i1;
        this.f70853s = new a[0];
    }

    private static boolean A(int i11) {
        return i11 == 1835296868 || i11 == 1836476516 || i11 == 1751411826 || i11 == 1937011556 || i11 == 1937011827 || i11 == 1937011571 || i11 == 1668576371 || i11 == 1701606260 || i11 == 1937011555 || i11 == 1937011578 || i11 == 1937013298 || i11 == 1937007471 || i11 == 1668232756 || i11 == 1953196132 || i11 == 1718909296 || i11 == 1969517665 || i11 == 1801812339 || i11 == 1768715124;
    }

    private void B(a aVar, long j11) {
        r rVar = aVar.f70860b;
        int iA = rVar.a(j11);
        if (iA == -1) {
            iA = rVar.b(j11);
        }
        aVar.f70863e = iA;
    }

    private static int g(int i11) {
        if (i11 != 1751476579) {
            return i11 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] h(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            jArr[i11] = new long[aVarArr[i11].f70860b.f70911b];
            jArr2[i11] = aVarArr[i11].f70860b.f70915f[0];
        }
        long j11 = 0;
        int i12 = 0;
        while (i12 < aVarArr.length) {
            long j12 = Long.MAX_VALUE;
            int i13 = -1;
            for (int i14 = 0; i14 < aVarArr.length; i14++) {
                if (!zArr[i14]) {
                    long j13 = jArr2[i14];
                    if (j13 <= j12) {
                        i13 = i14;
                        j12 = j13;
                    }
                }
            }
            int i15 = iArr[i13];
            long[] jArr3 = jArr[i13];
            jArr3[i15] = j11;
            r rVar = aVarArr[i13].f70860b;
            j11 += (long) rVar.f70913d[i15];
            int i16 = i15 + 1;
            iArr[i13] = i16;
            if (i16 < jArr3.length) {
                jArr2[i13] = rVar.f70915f[i16];
            } else {
                zArr[i13] = true;
                i12++;
            }
        }
        return jArr;
    }

    private void i() {
        this.f70843i = 0;
        this.f70846l = 0;
    }

    private static int k(r rVar, long j11) {
        int iA = rVar.a(j11);
        return iA == -1 ? rVar.b(j11) : iA;
    }

    private int l(long j11) {
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        long j12 = Long.MAX_VALUE;
        boolean z10 = true;
        long j13 = Long.MAX_VALUE;
        boolean z11 = true;
        long j14 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.f70853s;
            if (i13 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i13];
            int i14 = aVar.f70863e;
            r rVar = aVar.f70860b;
            if (i14 != rVar.f70911b) {
                long j15 = rVar.f70912c[i14];
                long j16 = ((long[][]) p0.j(this.f70854t))[i13][i14];
                long j17 = j15 - j11;
                boolean z12 = j17 < 0 || j17 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                if ((!z12 && z11) || (z12 == z11 && j17 < j14)) {
                    z11 = z12;
                    j14 = j17;
                    i12 = i13;
                    j13 = j16;
                }
                if (j16 < j12) {
                    z10 = z12;
                    i11 = i13;
                    j12 = j16;
                }
            }
            i13++;
        }
        return (j12 == Long.MAX_VALUE || !z10 || j13 < j12 + 10485760) ? i12 : i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o m(o oVar) {
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g9.l[] n() {
        return new g9.l[]{new k()};
    }

    private static long o(r rVar, long j11, long j12) {
        int iK = k(rVar, j11);
        return iK == -1 ? j12 : Math.min(rVar.f70912c[iK], j12);
    }

    private void p(g9.m mVar) {
        this.f70838d.L(8);
        mVar.peekFully(this.f70838d.d(), 0, 8);
        b.e(this.f70838d);
        mVar.skipFully(this.f70838d.e());
        mVar.resetPeekPosition();
    }

    private void q(long j11) {
        while (!this.f70840f.isEmpty() && ((o9.a.C0858a) this.f70840f.peek()).f70748b == j11) {
            o9.a.C0858a c0858a = (o9.a.C0858a) this.f70840f.pop();
            if (c0858a.f70747a == 1836019574) {
                t(c0858a);
                this.f70840f.clear();
                this.f70843i = 2;
            } else if (!this.f70840f.isEmpty()) {
                ((o9.a.C0858a) this.f70840f.peek()).d(c0858a);
            }
        }
        if (this.f70843i != 2) {
            i();
        }
    }

    private void r() {
        if (this.f70857w != 2 || (this.f70835a & 2) == 0) {
            return;
        }
        this.f70852r.track(0, 4).e(new o1.b().X(this.f70858x == null ? null : new Metadata(this.f70858x)).E());
        this.f70852r.endTracks();
        this.f70852r.d(new b0.b(C.TIME_UNSET));
    }

    private static int s(d0 d0Var) {
        d0Var.P(8);
        int iG = g(d0Var.n());
        if (iG != 0) {
            return iG;
        }
        d0Var.Q(4);
        while (d0Var.a() > 0) {
            int iG2 = g(d0Var.n());
            if (iG2 != 0) {
                return iG2;
            }
        }
        return 0;
    }

    private void t(o9.a.C0858a c0858a) {
        Metadata metadata;
        Metadata metadata2;
        Metadata metadata3;
        ArrayList arrayList;
        int i11;
        int i12;
        ArrayList arrayList2 = new ArrayList();
        boolean z10 = this.f70857w == 1;
        g9.x xVar = new g9.x();
        o9.a.b bVarG = c0858a.g(1969517665);
        if (bVarG != null) {
            Pair pairB = b.B(bVarG);
            Metadata metadata4 = (Metadata) pairB.first;
            Metadata metadata5 = (Metadata) pairB.second;
            if (metadata4 != null) {
                xVar.c(metadata4);
            }
            metadata2 = metadata5;
            metadata = metadata4;
        } else {
            metadata = null;
            metadata2 = null;
        }
        o9.a.C0858a c0858aF = c0858a.f(1835365473);
        Metadata metadataN = c0858aF != null ? b.n(c0858aF) : null;
        Metadata metadata6 = metadata;
        List listA = b.A(c0858a, xVar, C.TIME_UNSET, null, (this.f70835a & 1) != 0, z10, new com.google.common.base.f() { // from class: o9.i
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return k.m((o) obj);
            }
        });
        int size = listA.size();
        long j11 = C.TIME_UNSET;
        long jMax = -9223372036854775807L;
        int i13 = 0;
        int size2 = -1;
        while (i13 < size) {
            r rVar = (r) listA.get(i13);
            if (rVar.f70911b == 0) {
                arrayList = arrayList2;
                metadata3 = metadata6;
                i11 = 1;
            } else {
                o oVar = rVar.f70910a;
                ArrayList arrayList3 = arrayList2;
                long j12 = oVar.f70880e;
                if (j12 == j11) {
                    j12 = rVar.f70917h;
                }
                jMax = Math.max(jMax, j12);
                a aVar = new a(oVar, rVar, this.f70852r.track(i13, oVar.f70877b));
                int i14 = MimeTypes.AUDIO_TRUEHD.equals(oVar.f70881f.f25496l) ? rVar.f70914e * 16 : rVar.f70914e + 30;
                o1.b bVarB = oVar.f70881f.b();
                bVarB.W(i14);
                if (oVar.f70877b == 2 && j12 > 0 && (i12 = rVar.f70911b) > 1) {
                    bVarB.P(i12 / (j12 / 1000000.0f));
                }
                h.k(oVar.f70877b, xVar, bVarB);
                metadata3 = metadata6;
                h.l(oVar.f70877b, metadata3, metadataN, bVarB, metadata2, this.f70842h.isEmpty() ? null : new Metadata((List<? extends Metadata.Entry>) this.f70842h));
                aVar.f70861c.e(bVarB.E());
                if (oVar.f70877b == 2 && size2 == -1) {
                    size2 = arrayList3.size();
                }
                arrayList = arrayList3;
                arrayList.add(aVar);
                i11 = 1;
            }
            i13 += i11;
            metadata6 = metadata3;
            arrayList2 = arrayList;
            listA = listA;
            size = size;
            j11 = C.TIME_UNSET;
        }
        this.f70855u = size2;
        this.f70856v = jMax;
        a[] aVarArr = (a[]) arrayList2.toArray(new a[0]);
        this.f70853s = aVarArr;
        this.f70854t = h(aVarArr);
        this.f70852r.endTracks();
        this.f70852r.d(this);
    }

    private void u(long j11) {
        if (this.f70844j == 1836086884) {
            int i11 = this.f70846l;
            this.f70858x = new MotionPhotoMetadata(0L, j11, C.TIME_UNSET, j11 + ((long) i11), this.f70845k - ((long) i11));
        }
    }

    private boolean v(g9.m mVar) throws ParserException {
        o9.a.C0858a c0858a;
        if (this.f70846l == 0) {
            if (!mVar.readFully(this.f70839e.d(), 0, 8, true)) {
                r();
                return false;
            }
            this.f70846l = 8;
            this.f70839e.P(0);
            this.f70845k = this.f70839e.F();
            this.f70844j = this.f70839e.n();
        }
        long j11 = this.f70845k;
        if (j11 == 1) {
            mVar.readFully(this.f70839e.d(), 8, 8);
            this.f70846l += 8;
            this.f70845k = this.f70839e.I();
        } else if (j11 == 0) {
            long length = mVar.getLength();
            if (length == -1 && (c0858a = (o9.a.C0858a) this.f70840f.peek()) != null) {
                length = c0858a.f70748b;
            }
            if (length != -1) {
                this.f70845k = (length - mVar.getPosition()) + ((long) this.f70846l);
            }
        }
        if (this.f70845k < this.f70846l) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (z(this.f70844j)) {
            long position = mVar.getPosition();
            long j12 = this.f70845k;
            int i11 = this.f70846l;
            long j13 = (position + j12) - ((long) i11);
            if (j12 != i11 && this.f70844j == 1835365473) {
                p(mVar);
            }
            this.f70840f.push(new o9.a.C0858a(this.f70844j, j13));
            if (this.f70845k == this.f70846l) {
                q(j13);
            } else {
                i();
            }
        } else if (A(this.f70844j)) {
            com.google.android.exoplayer2.util.a.g(this.f70846l == 8);
            com.google.android.exoplayer2.util.a.g(this.f70845k <= 2147483647L);
            d0 d0Var = new d0((int) this.f70845k);
            System.arraycopy(this.f70839e.d(), 0, d0Var.d(), 0, 8);
            this.f70847m = d0Var;
            this.f70843i = 1;
        } else {
            u(mVar.getPosition() - ((long) this.f70846l));
            this.f70847m = null;
            this.f70843i = 1;
        }
        return true;
    }

    private boolean w(g9.m mVar, a0 a0Var) {
        boolean z10;
        long j11 = this.f70845k - ((long) this.f70846l);
        long position = mVar.getPosition() + j11;
        d0 d0Var = this.f70847m;
        if (d0Var == null) {
            if (j11 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                mVar.skipFully((int) j11);
            } else {
                a0Var.f63369a = mVar.getPosition() + j11;
                z10 = true;
            }
            q(position);
            return (z10 || this.f70843i == 2) ? false : true;
        }
        mVar.readFully(d0Var.d(), this.f70846l, (int) j11);
        if (this.f70844j == 1718909296) {
            this.f70857w = s(d0Var);
        } else if (!this.f70840f.isEmpty()) {
            ((o9.a.C0858a) this.f70840f.peek()).e(new o9.a.b(this.f70844j, d0Var));
        }
        z10 = false;
        q(position);
        if (z10) {
        }
    }

    private int x(g9.m mVar, a0 a0Var) throws ParserException {
        long position = mVar.getPosition();
        if (this.f70848n == -1) {
            int iL = l(position);
            this.f70848n = iL;
            if (iL == -1) {
                return -1;
            }
        }
        a aVar = this.f70853s[this.f70848n];
        e0 e0Var = aVar.f70861c;
        int i11 = aVar.f70863e;
        r rVar = aVar.f70860b;
        long j11 = rVar.f70912c[i11];
        int i12 = rVar.f70913d[i11];
        f0 f0Var = aVar.f70862d;
        long j12 = (j11 - position) + ((long) this.f70849o);
        if (j12 < 0 || j12 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            a0Var.f63369a = j11;
            return 1;
        }
        if (aVar.f70859a.f70882g == 1) {
            j12 += 8;
            i12 -= 8;
        }
        mVar.skipFully((int) j12);
        o oVar = aVar.f70859a;
        if (oVar.f70885j == 0) {
            if ("audio/ac4".equals(oVar.f70881f.f25496l)) {
                if (this.f70850p == 0) {
                    com.google.android.exoplayer2.audio.c.a(i12, this.f70838d);
                    e0Var.c(this.f70838d, 7);
                    this.f70850p += 7;
                }
                i12 += 7;
            } else if (f0Var != null) {
                f0Var.d(mVar);
            }
            while (true) {
                int i13 = this.f70850p;
                if (i13 >= i12) {
                    break;
                }
                int iB = e0Var.b(mVar, i12 - i13, false);
                this.f70849o += iB;
                this.f70850p += iB;
                this.f70851q -= iB;
            }
        } else {
            byte[] bArrD = this.f70837c.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i14 = aVar.f70859a.f70885j;
            int i15 = 4 - i14;
            while (this.f70850p < i12) {
                int i16 = this.f70851q;
                if (i16 == 0) {
                    mVar.readFully(bArrD, i15, i14);
                    this.f70849o += i14;
                    this.f70837c.P(0);
                    int iN = this.f70837c.n();
                    if (iN < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.f70851q = iN;
                    this.f70836b.P(0);
                    e0Var.c(this.f70836b, 4);
                    this.f70850p += 4;
                    i12 += i15;
                } else {
                    int iB2 = e0Var.b(mVar, i16, false);
                    this.f70849o += iB2;
                    this.f70850p += iB2;
                    this.f70851q -= iB2;
                }
            }
        }
        int i17 = i12;
        r rVar2 = aVar.f70860b;
        long j13 = rVar2.f70915f[i11];
        int i18 = rVar2.f70916g[i11];
        if (f0Var != null) {
            f0Var.c(e0Var, j13, i18, i17, 0, null);
            if (i11 + 1 == aVar.f70860b.f70911b) {
                f0Var.a(e0Var, null);
            }
        } else {
            e0Var.d(j13, i18, i17, 0, null);
        }
        aVar.f70863e++;
        this.f70848n = -1;
        this.f70849o = 0;
        this.f70850p = 0;
        this.f70851q = 0;
        return 0;
    }

    private int y(g9.m mVar, a0 a0Var) throws ParserException {
        int iC = this.f70841g.c(mVar, a0Var, this.f70842h);
        if (iC == 1 && a0Var.f63369a == 0) {
            i();
        }
        return iC;
    }

    private static boolean z(int i11) {
        return i11 == 1836019574 || i11 == 1953653099 || i11 == 1835297121 || i11 == 1835626086 || i11 == 1937007212 || i11 == 1701082227 || i11 == 1835365473;
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.f70852r = nVar;
    }

    @Override // g9.l
    public int c(g9.m mVar, a0 a0Var) {
        while (true) {
            int i11 = this.f70843i;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        return x(mVar, a0Var);
                    }
                    if (i11 == 3) {
                        return y(mVar, a0Var);
                    }
                    throw new IllegalStateException();
                }
                if (w(mVar, a0Var)) {
                    return 1;
                }
            } else if (!v(mVar)) {
                return -1;
            }
        }
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        return n.d(mVar, (this.f70835a & 2) != 0);
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f70856v;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        return j(j11, -1);
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:30:0x0068  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0078  */
    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080 A[EDGE_INSN: B:43:0x0080->B:37:0x0080 BREAK  A[LOOP:0: B:28:0x0063->B:36:0x007d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x007d A[SYNTHETIC] */
    public b0.a j(long j11, int i11) {
        long j12;
        long j13;
        long jO;
        long j14;
        int i12;
        a[] aVarArr;
        r rVar;
        int iB;
        a[] aVarArr2 = this.f70853s;
        if (aVarArr2.length == 0) {
            return new b0.a(c0.f63374c);
        }
        int i13 = i11 != -1 ? i11 : this.f70855u;
        if (i13 != -1) {
            r rVar2 = aVarArr2[i13].f70860b;
            int iK = k(rVar2, j11);
            if (iK == -1) {
                return new b0.a(c0.f63374c);
            }
            j13 = rVar2.f70915f[iK];
            j12 = rVar2.f70912c[iK];
            if (j13 < j11 && iK < rVar2.f70911b - 1 && (iB = rVar2.b(j11)) != -1 && iB != iK) {
                j14 = rVar2.f70915f[iB];
                jO = rVar2.f70912c[iB];
            }
            if (i11 == -1) {
                i12 = 0;
                while (true) {
                    aVarArr = this.f70853s;
                    if (i12 < aVarArr.length) {
                        break;
                    }
                    if (i12 != this.f70855u) {
                        rVar = aVarArr[i12].f70860b;
                        long jO2 = o(rVar, j13, j12);
                        if (j14 != C.TIME_UNSET) {
                            jO = o(rVar, j14, jO);
                        }
                        j12 = jO2;
                    }
                    i12++;
                }
            }
            c0 c0Var = new c0(j13, j12);
            return j14 == C.TIME_UNSET ? new b0.a(c0Var) : new b0.a(c0Var, new c0(j14, jO));
        }
        j12 = Long.MAX_VALUE;
        j13 = j11;
        jO = -1;
        j14 = -9223372036854775807L;
        if (i11 == -1) {
            i12 = 0;
            while (true) {
                aVarArr = this.f70853s;
                if (i12 < aVarArr.length) {
                    break;
                    break;
                }
                if (i12 != this.f70855u) {
                    rVar = aVarArr[i12].f70860b;
                    long jO3 = o(rVar, j13, j12);
                    if (j14 != C.TIME_UNSET) {
                        jO = o(rVar, j14, jO);
                    }
                    j12 = jO3;
                }
                i12++;
            }
        }
        c0 c0Var2 = new c0(j13, j12);
        if (j14 == C.TIME_UNSET) {
        }
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.f70840f.clear();
        this.f70846l = 0;
        this.f70848n = -1;
        this.f70849o = 0;
        this.f70850p = 0;
        this.f70851q = 0;
        if (j11 == 0) {
            if (this.f70843i != 3) {
                i();
                return;
            } else {
                this.f70841g.g();
                this.f70842h.clear();
                return;
            }
        }
        for (a aVar : this.f70853s) {
            B(aVar, j12);
            f0 f0Var = aVar.f70862d;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }
}
