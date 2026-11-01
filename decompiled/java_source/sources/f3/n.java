package f3;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import l2.e0;
import l2.l0;
import l2.m0;
import l2.n0;
import l2.q0;
import l2.s0;
import l2.t0;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements l2.r, m0 {
    public static final l2.x G = new l2.x() { // from class: f3.m
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
            return n.u();
        }

        @Override // l2.x
        public /* synthetic */ l2.x d(boolean z10) {
            return l2.w.c(this, z10);
        }
    };
    private a[] A;
    private long[][] B;
    private int C;
    private long D;
    private int E;
    private a3.a F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i3.s.a f62246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f62247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f62248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f62249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f62250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j0 f62251f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque f62252g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final q f62253h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f62254i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ImmutableList f62255j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f62256k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f62257l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f62258m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f62259n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j0 f62260o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f62261p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f62262q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f62263r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f62264s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f62265t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f62266u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f62267v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f62268w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f62269x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f62270y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private l2.t f62271z;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t f62272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w f62273b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final s0 f62274c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final t0 f62275d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f62276e;

        public a(t tVar, w wVar, s0 s0Var) {
            this.f62272a = tVar;
            this.f62273b = wVar;
            this.f62274c = s0Var;
            this.f62275d = MimeTypes.AUDIO_TRUEHD.equals(tVar.f62297g.f10161o) ? new t0() : null;
        }
    }

    @Deprecated
    public n() {
        this(i3.s.a.f64923a, 16);
    }

    public n(i3.s.a aVar, int i11) {
        this.f62246a = aVar;
        this.f62247b = i11;
        this.f62255j = ImmutableList.of();
        this.f62256k = (i11 & 4) != 0 ? 3 : 0;
        this.f62253h = new q();
        this.f62254i = new ArrayList();
        this.f62251f = new j0(16);
        this.f62252g = new ArrayDeque();
        this.f62248c = new j0(androidx.media3.container.g.f10593a);
        this.f62249d = new j0(6);
        this.f62250e = new j0();
        this.f62261p = -1;
        this.f62271z = l2.t.f68683n1;
        this.A = new a[0];
    }

    private static int A(j0 j0Var) {
        j0Var.W(8);
        int iJ = j(j0Var.q());
        if (iJ != 0) {
            return iJ;
        }
        j0Var.X(4);
        while (j0Var.a() > 0) {
            int iJ2 = j(j0Var.q());
            if (iJ2 != 0) {
                return iJ2;
            }
        }
        return 0;
    }

    private void B(androidx.media3.container.d.b bVar) {
        List list;
        androidx.media3.common.x xVar;
        androidx.media3.common.x xVar2;
        int i11;
        String str;
        int i12;
        androidx.media3.container.d.b bVarD = bVar.d(1835365473);
        List arrayList = new ArrayList();
        int i13 = 1;
        if (bVarD != null) {
            androidx.media3.common.x xVarT = b.t(bVarD);
            if (this.f62269x) {
                androidx.media3.common.util.a.i(xVarT);
                w(xVarT);
                arrayList = o(xVarT);
            } else if (J(xVarT)) {
                this.f62267v = true;
                return;
            }
            xVar = xVarT;
            list = arrayList;
        } else {
            list = arrayList;
            xVar = null;
        }
        ArrayList arrayList2 = new ArrayList();
        boolean z10 = this.E == 1;
        e0 e0Var = new e0();
        androidx.media3.container.d.c cVarE = bVar.e(1969517665);
        if (cVarE != null) {
            androidx.media3.common.x xVarH = b.H(cVarE);
            e0Var.c(xVarH);
            xVar2 = xVarH;
        } else {
            xVar2 = null;
        }
        androidx.media3.common.x xVar3 = new androidx.media3.common.x(b.v(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1836476516))).f10587b));
        List listG = b.G(bVar, e0Var, C.TIME_UNSET, null, (this.f62247b & 1) != 0, z10, new com.google.common.base.f() { // from class: f3.l
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return n.t((t) obj);
            }
        });
        if (this.f62269x) {
            androidx.media3.common.util.a.h(list.size() == listG.size(), String.format(Locale.US, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)", Integer.valueOf(list.size()), Integer.valueOf(listG.size())));
        }
        String strB = k.b(listG);
        int i14 = 0;
        int i15 = 0;
        int size = -1;
        long j11 = C.TIME_UNSET;
        while (i14 < listG.size()) {
            w wVar = (w) listG.get(i14);
            if (wVar.f62327b == 0) {
                i11 = i15;
                int i16 = i13;
                str = strB;
                i12 = i16;
            } else {
                t tVar = wVar.f62326a;
                i11 = i15 + 1;
                a aVar = new a(tVar, wVar, this.f62271z.track(i15, tVar.f62292b));
                str = strB;
                long j12 = tVar.f62295e;
                if (j12 == C.TIME_UNSET) {
                    j12 = wVar.f62333h;
                }
                aVar.f62274c.f(j12);
                long jMax = Math.max(j11, j12);
                int i17 = MimeTypes.AUDIO_TRUEHD.equals(tVar.f62297g.f10161o) ? wVar.f62330e * 16 : wVar.f62330e + 30;
                androidx.media3.common.r.b bVarB = tVar.f62297g.b();
                bVarB.k0(i17);
                if (tVar.f62292b == 2) {
                    int i18 = tVar.f62297g.f10152f;
                    if ((this.f62247b & 8) != 0) {
                        i18 |= size == -1 ? 1 : 2;
                    }
                    if (this.f62269x) {
                        i18 |= 32768;
                        bVarB.P(((Integer) list.get(i14)).intValue());
                    }
                    bVarB.s0(i18);
                }
                j.l(tVar.f62292b, e0Var, bVarB);
                j.m(tVar.f62292b, xVar, bVarB, tVar.f62297g.f10158l, this.f62254i.isEmpty() ? null : new androidx.media3.common.x(this.f62254i), xVar2, xVar3);
                bVarB.U(str);
                aVar.f62274c.c(bVarB.N());
                if (tVar.f62292b == 2 && size == -1) {
                    size = arrayList2.size();
                }
                arrayList2.add(aVar);
                j11 = jMax;
                i12 = 1;
            }
            i14 += i12;
            listG = listG;
            i15 = i11;
            String str2 = str;
            i13 = i12;
            strB = str2;
        }
        this.C = size;
        this.D = j11;
        a[] aVarArr = (a[]) arrayList2.toArray(new a[0]);
        this.A = aVarArr;
        this.B = k(aVarArr);
        this.f62271z.endTracks();
        this.f62271z.f(this);
    }

    private void C(long j11) {
        if (this.f62257l == 1836086884) {
            int i11 = this.f62259n;
            this.F = new a3.a(0L, j11, C.TIME_UNSET, j11 + ((long) i11), this.f62258m - ((long) i11));
        }
    }

    private boolean D(l2.s sVar) throws ParserException {
        androidx.media3.container.d.b bVar;
        if (this.f62259n == 0) {
            if (!sVar.readFully(this.f62251f.e(), 0, 8, true)) {
                z();
                return false;
            }
            this.f62259n = 8;
            this.f62251f.W(0);
            this.f62258m = this.f62251f.J();
            this.f62257l = this.f62251f.q();
        }
        long j11 = this.f62258m;
        if (j11 == 1) {
            sVar.readFully(this.f62251f.e(), 8, 8);
            this.f62259n += 8;
            this.f62258m = this.f62251f.O();
        } else if (j11 == 0) {
            long length = sVar.getLength();
            if (length == -1 && (bVar = (androidx.media3.container.d.b) this.f62252g.peek()) != null) {
                length = bVar.f10584b;
            }
            if (length != -1) {
                this.f62258m = (length - sVar.getPosition()) + ((long) this.f62259n);
            }
        }
        if (this.f62258m < this.f62259n) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (H(this.f62257l)) {
            long position = sVar.getPosition();
            long j12 = this.f62258m;
            int i11 = this.f62259n;
            long j13 = (position + j12) - ((long) i11);
            if (j12 != i11 && this.f62257l == 1835365473) {
                x(sVar);
            }
            this.f62252g.push(new androidx.media3.container.d.b(this.f62257l, j13));
            if (this.f62258m == this.f62259n) {
                y(j13);
            } else {
                n();
            }
        } else if (I(this.f62257l)) {
            androidx.media3.common.util.a.g(this.f62259n == 8);
            androidx.media3.common.util.a.g(this.f62258m <= 2147483647L);
            j0 j0Var = new j0((int) this.f62258m);
            System.arraycopy(this.f62251f.e(), 0, j0Var.e(), 0, 8);
            this.f62260o = j0Var;
            this.f62256k = 1;
        } else {
            C(sVar.getPosition() - ((long) this.f62259n));
            this.f62260o = null;
            this.f62256k = 1;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006f  */
    private boolean E(l2.s sVar, l0 l0Var) {
        boolean z10;
        long j11 = this.f62258m - ((long) this.f62259n);
        long position = sVar.getPosition() + j11;
        j0 j0Var = this.f62260o;
        if (j0Var == null) {
            if (!this.f62266u && this.f62257l == 1835295092) {
                this.E = 1;
            }
            if (j11 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                sVar.skipFully((int) j11);
            } else {
                l0Var.f68620a = sVar.getPosition() + j11;
                z10 = true;
            }
            y(position);
            if (this.f62267v) {
                this.f62269x = true;
                l0Var.f68620a = this.f62268w;
                this.f62267v = false;
                z10 = true;
            }
            return (z10 || this.f62256k == 2) ? false : true;
        }
        sVar.readFully(j0Var.e(), this.f62259n, (int) j11);
        if (this.f62257l == 1718909296) {
            this.f62266u = true;
            this.E = A(j0Var);
        } else if (!this.f62252g.isEmpty()) {
            ((androidx.media3.container.d.b) this.f62252g.peek()).c(new androidx.media3.container.d.c(this.f62257l, j0Var));
        }
        z10 = false;
        y(position);
        if (this.f62267v) {
            this.f62269x = true;
            l0Var.f68620a = this.f62268w;
            this.f62267v = false;
            z10 = true;
        }
        if (z10) {
        }
    }

    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    private int F(l2.s sVar, l0 l0Var) throws ParserException {
        s0.a aVar;
        ?? r11;
        boolean z10;
        int iO;
        long position = sVar.getPosition();
        if (this.f62261p == -1) {
            int iS = s(position);
            this.f62261p = iS;
            if (iS == -1) {
                return -1;
            }
        }
        a aVar2 = this.A[this.f62261p];
        s0 s0Var = aVar2.f62274c;
        int i11 = aVar2.f62276e;
        w wVar = aVar2.f62273b;
        long j11 = wVar.f62328c[i11] + this.f62270y;
        int i12 = wVar.f62329d[i11];
        t0 t0Var = aVar2.f62275d;
        long j12 = (j11 - position) + ((long) this.f62262q);
        if (j12 < 0 || j12 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            l0Var.f68620a = j11;
            return 1;
        }
        if (aVar2.f62272a.f62298h == 1) {
            j12 += 8;
            i12 -= 8;
        }
        sVar.skipFully((int) j12);
        if (!l(aVar2.f62272a.f62297g)) {
            this.f62265t = true;
        }
        t tVar = aVar2.f62272a;
        if (tVar.f62301k == 0) {
            aVar = null;
            if ("audio/ac4".equals(tVar.f62297g.f10161o)) {
                if (this.f62263r == 0) {
                    l2.c.a(i12, this.f62250e);
                    s0Var.b(this.f62250e, 7);
                    this.f62263r += 7;
                }
                i12 += 7;
            } else if (t0Var != null) {
                t0Var.d(sVar);
            }
            while (true) {
                int i13 = this.f62263r;
                if (i13 >= i12) {
                    break;
                }
                int iE = s0Var.e(sVar, i12 - i13, false);
                this.f62262q += iE;
                this.f62263r += iE;
                this.f62264s -= iE;
            }
        } else {
            byte[] bArrE = this.f62249d.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i14 = 4 - aVar2.f62272a.f62301k;
            i12 += i14;
            while (this.f62263r < i12) {
                int i15 = this.f62264s;
                if (i15 == 0) {
                    t tVar2 = aVar2.f62272a;
                    int i16 = tVar2.f62301k;
                    if (this.f62265t || androidx.media3.container.g.o(tVar2.f62297g) + i16 > aVar2.f62273b.f62329d[i11] - this.f62262q) {
                        iO = 0;
                    } else {
                        iO = androidx.media3.container.g.o(aVar2.f62272a.f62297g);
                        i16 = aVar2.f62272a.f62301k + iO;
                    }
                    sVar.readFully(bArrE, i14, i16);
                    this.f62262q += i16;
                    this.f62249d.W(0);
                    int iQ = this.f62249d.q();
                    if (iQ < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.f62264s = iQ - iO;
                    this.f62248c.W(0);
                    s0Var.b(this.f62248c, 4);
                    this.f62263r += 4;
                    if (iO > 0) {
                        s0Var.b(this.f62249d, iO);
                        this.f62263r += iO;
                        if (androidx.media3.container.g.k(bArrE, 4, iO, aVar2.f62272a.f62297g)) {
                            this.f62265t = true;
                        }
                    }
                } else {
                    int iE2 = s0Var.e(sVar, i15, false);
                    this.f62262q += iE2;
                    this.f62263r += iE2;
                    this.f62264s -= iE2;
                }
            }
            aVar = null;
        }
        int i17 = i12;
        w wVar2 = aVar2.f62273b;
        long j13 = wVar2.f62331f[i11];
        int i18 = wVar2.f62332g[i11];
        if (!this.f62265t) {
            i18 |= 67108864;
        }
        if (t0Var != null) {
            int i19 = i18;
            s0.a aVar3 = aVar;
            z10 = false;
            t0Var.c(s0Var, j13, i19, i17, 0, null);
            if (i11 + 1 == aVar2.f62273b.f62327b) {
                r11 = z10;
                t0Var.a(s0Var, aVar3);
                r11 = z10;
            }
        } else {
            r11 = 0;
            s0Var.d(j13, i18, i17, 0, null);
        }
        r11 = z10;
        aVar2.f62276e++;
        this.f62261p = -1;
        this.f62262q = r11;
        this.f62263r = r11;
        this.f62264s = r11;
        this.f62265t = r11;
        return r11;
    }

    private int G(l2.s sVar, l0 l0Var) throws ParserException {
        int iC = this.f62253h.c(sVar, l0Var, this.f62254i);
        if (iC == 1 && l0Var.f68620a == 0) {
            n();
        }
        return iC;
    }

    private static boolean H(int i11) {
        return i11 == 1836019574 || i11 == 1953653099 || i11 == 1835297121 || i11 == 1835626086 || i11 == 1937007212 || i11 == 1701082227 || i11 == 1835365473 || i11 == 1635284069;
    }

    private static boolean I(int i11) {
        return i11 == 1835296868 || i11 == 1836476516 || i11 == 1751411826 || i11 == 1937011556 || i11 == 1937011827 || i11 == 1937011571 || i11 == 1668576371 || i11 == 1701606260 || i11 == 1937011555 || i11 == 1937011578 || i11 == 1937013298 || i11 == 1937007471 || i11 == 1668232756 || i11 == 1953196132 || i11 == 1718909296 || i11 == 1969517665 || i11 == 1801812339 || i11 == 1768715124;
    }

    private boolean J(androidx.media3.common.x xVar) {
        androidx.media3.container.b bVarA;
        if (xVar != null && (this.f62247b & 64) != 0 && (bVarA = j.a(xVar, "auxiliary.tracks.offset")) != null) {
            long jO = new j0(bVarA.f10579b).O();
            if (jO > 0) {
                this.f62268w = jO;
                return true;
            }
        }
        return false;
    }

    private void K(a aVar, long j11) {
        w wVar = aVar.f62273b;
        int iA = wVar.a(j11);
        if (iA == -1) {
            iA = wVar.b(j11);
        }
        aVar.f62276e = iA;
    }

    private static int j(int i11) {
        if (i11 != 1751476579) {
            return i11 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] k(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            jArr[i11] = new long[aVarArr[i11].f62273b.f62327b];
            jArr2[i11] = aVarArr[i11].f62273b.f62331f[0];
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
            w wVar = aVarArr[i13].f62273b;
            j11 += (long) wVar.f62329d[i15];
            int i16 = i15 + 1;
            iArr[i13] = i16;
            if (i16 < jArr3.length) {
                jArr2[i13] = wVar.f62331f[i16];
            } else {
                zArr[i13] = true;
                i12++;
            }
        }
        return jArr;
    }

    private boolean l(androidx.media3.common.r rVar) {
        if (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H264)) {
            return (this.f62247b & 32) != 0;
        }
        return Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H265) && (this.f62247b & 128) != 0;
    }

    public static int m(int i11) {
        int i12 = (i11 & 1) != 0 ? 32 : 0;
        return (i11 & 2) != 0 ? i12 | 128 : i12;
    }

    private void n() {
        this.f62256k = 0;
        this.f62259n = 0;
    }

    private List o(androidx.media3.common.x xVar) {
        List listB = ((androidx.media3.container.b) androidx.media3.common.util.a.i(j.a(xVar, "auxiliary.tracks.map"))).b();
        ArrayList arrayList = new ArrayList(listB.size());
        for (int i11 = 0; i11 < listB.size(); i11++) {
            int iIntValue = ((Integer) listB.get(i11)).intValue();
            int i12 = 1;
            if (iIntValue != 0) {
                if (iIntValue != 1) {
                    i12 = 3;
                    if (iIntValue != 2) {
                        i12 = iIntValue != 3 ? 0 : 4;
                    }
                } else {
                    i12 = 2;
                }
            }
            arrayList.add(Integer.valueOf(i12));
        }
        return arrayList;
    }

    private static int r(w wVar, long j11) {
        int iA = wVar.a(j11);
        return iA == -1 ? wVar.b(j11) : iA;
    }

    private int s(long j11) {
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        long j12 = Long.MAX_VALUE;
        boolean z10 = true;
        long j13 = Long.MAX_VALUE;
        boolean z11 = true;
        long j14 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.A;
            if (i13 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i13];
            int i14 = aVar.f62276e;
            w wVar = aVar.f62273b;
            if (i14 != wVar.f62327b) {
                long j15 = wVar.f62328c[i14];
                long j16 = ((long[][]) a1.i(this.B))[i13][i14];
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
    public static /* synthetic */ t t(t tVar) {
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2.r[] u() {
        return new l2.r[]{new n(i3.s.a.f64923a, 16)};
    }

    private static long v(w wVar, long j11, long j12) {
        int iR = r(wVar, j11);
        return iR == -1 ? j12 : Math.min(wVar.f62328c[iR], j12);
    }

    private void w(androidx.media3.common.x xVar) {
        androidx.media3.container.b bVarA = j.a(xVar, "auxiliary.tracks.interleaved");
        if (bVarA == null || bVarA.f10579b[0] != 0) {
            return;
        }
        this.f62270y = this.f62268w + 16;
    }

    private void x(l2.s sVar) {
        this.f62250e.S(8);
        sVar.peekFully(this.f62250e.e(), 0, 8);
        b.f(this.f62250e);
        sVar.skipFully(this.f62250e.f());
        sVar.resetPeekPosition();
    }

    private void y(long j11) {
        while (!this.f62252g.isEmpty() && ((androidx.media3.container.d.b) this.f62252g.peek()).f10584b == j11) {
            androidx.media3.container.d.b bVar = (androidx.media3.container.d.b) this.f62252g.pop();
            if (bVar.f10583a == 1836019574) {
                B(bVar);
                this.f62252g.clear();
                if (!this.f62267v) {
                    this.f62256k = 2;
                }
            } else if (!this.f62252g.isEmpty()) {
                ((androidx.media3.container.d.b) this.f62252g.peek()).b(bVar);
            }
        }
        if (this.f62256k != 2) {
            n();
        }
    }

    private void z() {
        if (this.E != 2 || (this.f62247b & 2) == 0) {
            return;
        }
        s0 s0VarTrack = this.f62271z.track(0, 4);
        a3.a aVar = this.F;
        s0VarTrack.c(new androidx.media3.common.r.b().n0(aVar == null ? null : new androidx.media3.common.x(aVar)).N());
        this.f62271z.endTracks();
        this.f62271z.f(new m0.b(C.TIME_UNSET));
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        if ((this.f62247b & 16) == 0) {
            tVar = new i3.t(tVar, this.f62246a);
        }
        this.f62271z = tVar;
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) {
        while (true) {
            int i11 = this.f62256k;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        return F(sVar, l0Var);
                    }
                    if (i11 == 3) {
                        return G(sVar, l0Var);
                    }
                    throw new IllegalStateException();
                }
                if (E(sVar, l0Var)) {
                    return 1;
                }
            } else if (!D(sVar)) {
                return -1;
            }
        }
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        q0 q0VarD = s.d(sVar, (this.f62247b & 2) != 0);
        this.f62255j = q0VarD != null ? ImmutableList.of(q0VarD) : ImmutableList.of();
        return q0VarD == null;
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.D;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        return p(j11, -1);
    }

    @Override // l2.m0
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
    public m0.a p(long j11, int i11) {
        long j12;
        long j13;
        long jV;
        long j14;
        int i12;
        a[] aVarArr;
        w wVar;
        int iB;
        a[] aVarArr2 = this.A;
        if (aVarArr2.length == 0) {
            return new m0.a(n0.f68649c);
        }
        int i13 = i11 != -1 ? i11 : this.C;
        if (i13 != -1) {
            w wVar2 = aVarArr2[i13].f62273b;
            int iR = r(wVar2, j11);
            if (iR == -1) {
                return new m0.a(n0.f68649c);
            }
            j13 = wVar2.f62331f[iR];
            j12 = wVar2.f62328c[iR];
            if (j13 < j11 && iR < wVar2.f62327b - 1 && (iB = wVar2.b(j11)) != -1 && iB != iR) {
                j14 = wVar2.f62331f[iB];
                jV = wVar2.f62328c[iB];
            }
            if (i11 == -1) {
                i12 = 0;
                while (true) {
                    aVarArr = this.A;
                    if (i12 < aVarArr.length) {
                        break;
                    }
                    if (i12 != this.C) {
                        wVar = aVarArr[i12].f62273b;
                        long jV2 = v(wVar, j13, j12);
                        if (j14 != C.TIME_UNSET) {
                            jV = v(wVar, j14, jV);
                        }
                        j12 = jV2;
                    }
                    i12++;
                }
            }
            n0 n0Var = new n0(j13, j12);
            return j14 == C.TIME_UNSET ? new m0.a(n0Var) : new m0.a(n0Var, new n0(j14, jV));
        }
        j12 = Long.MAX_VALUE;
        j13 = j11;
        jV = -1;
        j14 = -9223372036854775807L;
        if (i11 == -1) {
            i12 = 0;
            while (true) {
                aVarArr = this.A;
                if (i12 < aVarArr.length) {
                    break;
                    break;
                }
                if (i12 != this.C) {
                    wVar = aVarArr[i12].f62273b;
                    long jV3 = v(wVar, j13, j12);
                    if (j14 != C.TIME_UNSET) {
                        jV = v(wVar, j14, jV);
                    }
                    j12 = jV3;
                }
                i12++;
            }
        }
        n0 n0Var2 = new n0(j13, j12);
        if (j14 == C.TIME_UNSET) {
        }
    }

    @Override // l2.r
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public ImmutableList f() {
        return this.f62255j;
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f62252g.clear();
        this.f62259n = 0;
        this.f62261p = -1;
        this.f62262q = 0;
        this.f62263r = 0;
        this.f62264s = 0;
        this.f62265t = false;
        if (j11 == 0) {
            if (this.f62256k != 3) {
                n();
                return;
            } else {
                this.f62253h.g();
                this.f62254i.clear();
                return;
            }
        }
        for (a aVar : this.A) {
            K(aVar, j12);
            t0 t0Var = aVar.f62275d;
            if (t0Var != null) {
                t0Var.b();
            }
        }
    }
}
