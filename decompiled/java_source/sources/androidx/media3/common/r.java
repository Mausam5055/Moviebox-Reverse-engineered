package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    private static final r P = new b().N();
    private static final String Q = a1.C0(0);
    private static final String R = a1.C0(1);
    private static final String S = a1.C0(2);
    private static final String T = a1.C0(3);
    private static final String U = a1.C0(4);
    private static final String V = a1.C0(5);
    private static final String W = a1.C0(6);
    private static final String X = a1.C0(7);
    private static final String Y = a1.C0(8);
    private static final String Z = a1.C0(9);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final String f10122a0 = a1.C0(10);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final String f10123b0 = a1.C0(11);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final String f10124c0 = a1.C0(12);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final String f10125d0 = a1.C0(13);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final String f10126e0 = a1.C0(14);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final String f10127f0 = a1.C0(15);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final String f10128g0 = a1.C0(16);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final String f10129h0 = a1.C0(17);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final String f10130i0 = a1.C0(18);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final String f10131j0 = a1.C0(19);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final String f10132k0 = a1.C0(20);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final String f10133l0 = a1.C0(21);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final String f10134m0 = a1.C0(22);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final String f10135n0 = a1.C0(23);

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static final String f10136o0 = a1.C0(24);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final String f10137p0 = a1.C0(25);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static final String f10138q0 = a1.C0(26);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static final String f10139r0 = a1.C0(27);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final String f10140s0 = a1.C0(28);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static final String f10141t0 = a1.C0(29);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final String f10142u0 = a1.C0(30);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final String f10143v0 = a1.C0(31);

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static final String f10144w0 = a1.C0(32);

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final String f10145x0 = a1.C0(33);

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final String f10146y0 = a1.C0(34);
    public final byte[] A;
    public final int B;
    public final i C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    private int O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f10149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f10150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f10153g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10156j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f10157k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final x f10158l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Object f10159m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f10160n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f10161o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f10162p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f10163q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List f10164r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final DrmInitData f10165s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f10166t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f10167u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f10168v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f10169w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final float f10170x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f10171y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f10172z;

    public static final class b {
        private int A;
        private i B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;
        private int H;
        private int I;
        private int J;
        private int K;
        private int L;
        private int M;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f10174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List f10175c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f10176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f10177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f10179g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f10180h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f10181i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f10182j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private x f10183k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Object f10184l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f10185m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f10186n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f10187o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f10188p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private List f10189q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private DrmInitData f10190r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private long f10191s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f10192t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f10193u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f10194v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private float f10195w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private int f10196x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private float f10197y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private byte[] f10198z;

        public b() {
            this.f10175c = ImmutableList.of();
            this.f10180h = -1;
            this.f10181i = -1;
            this.f10187o = -1;
            this.f10188p = -1;
            this.f10191s = Long.MAX_VALUE;
            this.f10193u = -1;
            this.f10194v = -1;
            this.f10195w = -1.0f;
            this.f10197y = 1.0f;
            this.A = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.I = -1;
            this.J = 1;
            this.K = -1;
            this.L = -1;
            this.M = 0;
            this.f10179g = 0;
        }

        private b(r rVar) {
            this.f10173a = rVar.f10147a;
            this.f10174b = rVar.f10148b;
            this.f10175c = rVar.f10149c;
            this.f10176d = rVar.f10150d;
            this.f10177e = rVar.f10151e;
            this.f10178f = rVar.f10152f;
            this.f10180h = rVar.f10154h;
            this.f10181i = rVar.f10155i;
            this.f10182j = rVar.f10157k;
            this.f10183k = rVar.f10158l;
            this.f10184l = rVar.f10159m;
            this.f10185m = rVar.f10160n;
            this.f10186n = rVar.f10161o;
            this.f10187o = rVar.f10162p;
            this.f10188p = rVar.f10163q;
            this.f10189q = rVar.f10164r;
            this.f10190r = rVar.f10165s;
            this.f10191s = rVar.f10166t;
            this.f10192t = rVar.f10167u;
            this.f10193u = rVar.f10168v;
            this.f10194v = rVar.f10169w;
            this.f10195w = rVar.f10170x;
            this.f10196x = rVar.f10171y;
            this.f10197y = rVar.f10172z;
            this.f10198z = rVar.A;
            this.A = rVar.B;
            this.B = rVar.C;
            this.C = rVar.D;
            this.D = rVar.E;
            this.E = rVar.F;
            this.F = rVar.G;
            this.G = rVar.H;
            this.H = rVar.I;
            this.I = rVar.J;
            this.J = rVar.K;
            this.K = rVar.L;
            this.L = rVar.M;
            this.M = rVar.N;
        }

        public b A0(int i11) {
            this.L = i11;
            return this;
        }

        public b B0(int i11) {
            this.f10193u = i11;
            return this;
        }

        public r N() {
            return new r(this);
        }

        public b O(int i11) {
            this.I = i11;
            return this;
        }

        public b P(int i11) {
            this.f10179g = i11;
            return this;
        }

        public b Q(int i11) {
            this.f10180h = i11;
            return this;
        }

        public b R(int i11) {
            this.D = i11;
            return this;
        }

        public b S(String str) {
            this.f10182j = str;
            return this;
        }

        public b T(i iVar) {
            this.B = iVar;
            return this;
        }

        public b U(String str) {
            this.f10185m = y.u(str);
            return this;
        }

        public b V(int i11) {
            this.M = i11;
            return this;
        }

        public b W(int i11) {
            this.J = i11;
            return this;
        }

        public b X(Object obj) {
            this.f10184l = obj;
            return this;
        }

        public b Y(DrmInitData drmInitData) {
            this.f10190r = drmInitData;
            return this;
        }

        public b Z(int i11) {
            this.G = i11;
            return this;
        }

        public b a0(int i11) {
            this.H = i11;
            return this;
        }

        public b b0(float f11) {
            this.f10195w = f11;
            return this;
        }

        public b c0(boolean z10) {
            this.f10192t = z10;
            return this;
        }

        public b d0(int i11) {
            this.f10194v = i11;
            return this;
        }

        public b e0(int i11) {
            this.f10173a = Integer.toString(i11);
            return this;
        }

        public b f0(String str) {
            this.f10173a = str;
            return this;
        }

        public b g0(List list) {
            this.f10189q = list;
            return this;
        }

        public b h0(String str) {
            this.f10174b = str;
            return this;
        }

        public b i0(List list) {
            this.f10175c = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public b j0(String str) {
            this.f10176d = str;
            return this;
        }

        public b k0(int i11) {
            this.f10187o = i11;
            return this;
        }

        public b l0(int i11) {
            this.f10188p = i11;
            return this;
        }

        public b m0(int i11) {
            this.C = i11;
            return this;
        }

        public b n0(x xVar) {
            this.f10183k = xVar;
            return this;
        }

        public b o0(int i11) {
            this.F = i11;
            return this;
        }

        public b p0(int i11) {
            this.f10181i = i11;
            return this;
        }

        public b q0(float f11) {
            this.f10197y = f11;
            return this;
        }

        public b r0(byte[] bArr) {
            this.f10198z = bArr;
            return this;
        }

        public b s0(int i11) {
            this.f10178f = i11;
            return this;
        }

        public b t0(int i11) {
            this.f10196x = i11;
            return this;
        }

        public b u0(String str) {
            this.f10186n = y.u(str);
            return this;
        }

        public b v0(int i11) {
            this.E = i11;
            return this;
        }

        public b w0(int i11) {
            this.f10177e = i11;
            return this;
        }

        public b x0(int i11) {
            this.A = i11;
            return this;
        }

        public b y0(long j11) {
            this.f10191s = j11;
            return this;
        }

        public b z0(int i11) {
            this.K = i11;
            return this;
        }
    }

    private r(b bVar) {
        this.f10147a = bVar.f10173a;
        String strU0 = a1.U0(bVar.f10176d);
        this.f10150d = strU0;
        if (bVar.f10175c.isEmpty() && bVar.f10174b != null) {
            this.f10149c = ImmutableList.of(new s(strU0, bVar.f10174b));
            this.f10148b = bVar.f10174b;
        } else if (bVar.f10175c.isEmpty() || bVar.f10174b != null) {
            androidx.media3.common.util.a.g(g(bVar));
            this.f10149c = bVar.f10175c;
            this.f10148b = bVar.f10174b;
        } else {
            this.f10149c = bVar.f10175c;
            this.f10148b = d(bVar.f10175c, strU0);
        }
        this.f10151e = bVar.f10177e;
        androidx.media3.common.util.a.h(bVar.f10179g == 0 || (bVar.f10178f & 32768) != 0, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set");
        this.f10152f = bVar.f10178f;
        this.f10153g = bVar.f10179g;
        int i11 = bVar.f10180h;
        this.f10154h = i11;
        int i12 = bVar.f10181i;
        this.f10155i = i12;
        this.f10156j = i12 != -1 ? i12 : i11;
        this.f10157k = bVar.f10182j;
        this.f10158l = bVar.f10183k;
        this.f10159m = bVar.f10184l;
        this.f10160n = bVar.f10185m;
        this.f10161o = bVar.f10186n;
        this.f10162p = bVar.f10187o;
        this.f10163q = bVar.f10188p;
        this.f10164r = bVar.f10189q == null ? Collections.emptyList() : bVar.f10189q;
        DrmInitData drmInitData = bVar.f10190r;
        this.f10165s = drmInitData;
        this.f10166t = bVar.f10191s;
        this.f10167u = bVar.f10192t;
        this.f10168v = bVar.f10193u;
        this.f10169w = bVar.f10194v;
        this.f10170x = bVar.f10195w;
        this.f10171y = bVar.f10196x == -1 ? 0 : bVar.f10196x;
        this.f10172z = bVar.f10197y == -1.0f ? 1.0f : bVar.f10197y;
        this.A = bVar.f10198z;
        this.B = bVar.A;
        this.C = bVar.B;
        this.D = bVar.C;
        this.E = bVar.D;
        this.F = bVar.E;
        this.G = bVar.F;
        this.H = bVar.G == -1 ? 0 : bVar.G;
        this.I = bVar.H != -1 ? bVar.H : 0;
        this.J = bVar.I;
        this.K = bVar.J;
        this.L = bVar.K;
        this.M = bVar.L;
        if (bVar.M != 0 || drmInitData == null) {
            this.N = bVar.M;
        } else {
            this.N = 1;
        }
    }

    private static String d(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s sVar = (s) it.next();
            if (TextUtils.equals(sVar.f10201a, str)) {
                return sVar.f10202b;
            }
        }
        return ((s) list.get(0)).f10202b;
    }

    private static boolean g(b bVar) {
        if (bVar.f10175c.isEmpty() && bVar.f10174b == null) {
            return true;
        }
        for (int i11 = 0; i11 < bVar.f10175c.size(); i11++) {
            if (((s) bVar.f10175c.get(i11)).f10202b.equals(bVar.f10174b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(s sVar) {
        return sVar.f10201a + ": " + sVar.f10202b;
    }

    public static String i(r rVar) {
        if (rVar == null) {
            return "null";
        }
        com.google.common.base.g gVarG = com.google.common.base.g.g(',');
        StringBuilder sb2 = new StringBuilder();
        sb2.append("id=");
        sb2.append(rVar.f10147a);
        sb2.append(", mimeType=");
        sb2.append(rVar.f10161o);
        if (rVar.f10160n != null) {
            sb2.append(", container=");
            sb2.append(rVar.f10160n);
        }
        if (rVar.f10156j != -1) {
            sb2.append(", bitrate=");
            sb2.append(rVar.f10156j);
        }
        if (rVar.f10157k != null) {
            sb2.append(", codecs=");
            sb2.append(rVar.f10157k);
        }
        if (rVar.f10165s != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i11 = 0;
            while (true) {
                DrmInitData drmInitData = rVar.f10165s;
                if (i11 >= drmInitData.schemeDataCount) {
                    break;
                }
                UUID uuid = drmInitData.get(i11).uuid;
                if (uuid.equals(h.f9982b)) {
                    linkedHashSet.add(C.CENC_TYPE_cenc);
                } else if (uuid.equals(h.f9983c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(h.f9985e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(h.f9984d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(h.f9981a)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
                i11++;
            }
            sb2.append(", drm=[");
            gVarG.b(sb2, linkedHashSet);
            sb2.append(']');
        }
        if (rVar.f10168v != -1 && rVar.f10169w != -1) {
            sb2.append(", res=");
            sb2.append(rVar.f10168v);
            sb2.append("x");
            sb2.append(rVar.f10169w);
        }
        if (!com.google.common.math.b.a(rVar.f10172z, 1.0d, 0.001d)) {
            sb2.append(", par=");
            sb2.append(a1.G("%.3f", Float.valueOf(rVar.f10172z)));
        }
        i iVar = rVar.C;
        if (iVar != null && iVar.i()) {
            sb2.append(", color=");
            sb2.append(rVar.C.m());
        }
        if (rVar.f10170x != -1.0f) {
            sb2.append(", fps=");
            sb2.append(rVar.f10170x);
        }
        if (rVar.D != -1) {
            sb2.append(", maxSubLayers=");
            sb2.append(rVar.D);
        }
        if (rVar.E != -1) {
            sb2.append(", channels=");
            sb2.append(rVar.E);
        }
        if (rVar.F != -1) {
            sb2.append(", sample_rate=");
            sb2.append(rVar.F);
        }
        if (rVar.f10150d != null) {
            sb2.append(", language=");
            sb2.append(rVar.f10150d);
        }
        if (!rVar.f10149c.isEmpty()) {
            sb2.append(", labels=[");
            gVarG.b(sb2, Lists.o(rVar.f10149c, new com.google.common.base.f() { // from class: androidx.media3.common.q
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return r.h((s) obj);
                }
            }));
            sb2.append("]");
        }
        if (rVar.f10151e != 0) {
            sb2.append(", selectionFlags=[");
            gVarG.b(sb2, a1.n0(rVar.f10151e));
            sb2.append("]");
        }
        if (rVar.f10152f != 0) {
            sb2.append(", roleFlags=[");
            gVarG.b(sb2, a1.m0(rVar.f10152f));
            sb2.append("]");
        }
        if (rVar.f10159m != null) {
            sb2.append(", customData=");
            sb2.append(rVar.f10159m);
        }
        if ((rVar.f10152f & 32768) != 0) {
            sb2.append(", auxiliaryTrackType=");
            sb2.append(a1.N(rVar.f10153g));
        }
        return sb2.toString();
    }

    public b b() {
        return new b();
    }

    public r c(int i11) {
        return b().V(i11).N();
    }

    public int e() {
        int i11;
        int i12 = this.f10168v;
        if (i12 == -1 || (i11 = this.f10169w) == -1) {
            return -1;
        }
        return i12 * i11;
    }

    public boolean equals(Object obj) {
        int i11;
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        r rVar = (r) obj;
        int i12 = this.O;
        if (i12 == 0 || (i11 = rVar.O) == 0 || i12 == i11) {
            return this.f10151e == rVar.f10151e && this.f10152f == rVar.f10152f && this.f10153g == rVar.f10153g && this.f10154h == rVar.f10154h && this.f10155i == rVar.f10155i && this.f10162p == rVar.f10162p && this.f10166t == rVar.f10166t && this.f10168v == rVar.f10168v && this.f10169w == rVar.f10169w && this.f10171y == rVar.f10171y && this.B == rVar.B && this.D == rVar.D && this.E == rVar.E && this.F == rVar.F && this.G == rVar.G && this.H == rVar.H && this.I == rVar.I && this.J == rVar.J && this.L == rVar.L && this.M == rVar.M && this.N == rVar.N && Float.compare(this.f10170x, rVar.f10170x) == 0 && Float.compare(this.f10172z, rVar.f10172z) == 0 && Objects.equals(this.f10147a, rVar.f10147a) && Objects.equals(this.f10148b, rVar.f10148b) && this.f10149c.equals(rVar.f10149c) && Objects.equals(this.f10157k, rVar.f10157k) && Objects.equals(this.f10160n, rVar.f10160n) && Objects.equals(this.f10161o, rVar.f10161o) && Objects.equals(this.f10150d, rVar.f10150d) && Arrays.equals(this.A, rVar.A) && Objects.equals(this.f10158l, rVar.f10158l) && Objects.equals(this.C, rVar.C) && Objects.equals(this.f10165s, rVar.f10165s) && f(rVar) && Objects.equals(this.f10159m, rVar.f10159m);
        }
        return false;
    }

    public boolean f(r rVar) {
        if (this.f10164r.size() != rVar.f10164r.size()) {
            return false;
        }
        for (int i11 = 0; i11 < this.f10164r.size(); i11++) {
            if (!Arrays.equals((byte[]) this.f10164r.get(i11), (byte[]) rVar.f10164r.get(i11))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.O == 0) {
            String str = this.f10147a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f10148b;
            int iHashCode2 = (((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f10149c.hashCode()) * 31;
            String str3 = this.f10150d;
            int iHashCode3 = (((((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f10151e) * 31) + this.f10152f) * 31) + this.f10153g) * 31) + this.f10154h) * 31) + this.f10155i) * 31;
            String str4 = this.f10157k;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            x xVar = this.f10158l;
            int iHashCode5 = (iHashCode4 + (xVar == null ? 0 : xVar.hashCode())) * 31;
            Object obj = this.f10159m;
            int iHashCode6 = (iHashCode5 + (obj == null ? 0 : obj.hashCode())) * 31;
            String str5 = this.f10160n;
            int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f10161o;
            this.O = ((((((((((((((((((((((((((((((((((((iHashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f10162p) * 31) + ((int) this.f10166t)) * 31) + this.f10168v) * 31) + this.f10169w) * 31) + Float.floatToIntBits(this.f10170x)) * 31) + this.f10171y) * 31) + Float.floatToIntBits(this.f10172z)) * 31) + this.B) * 31) + this.D) * 31) + this.E) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.L) * 31) + this.M) * 31) + this.N;
        }
        return this.O;
    }

    public r j(r rVar) {
        String str;
        if (this == rVar) {
            return this;
        }
        int iK = y.k(this.f10161o);
        String str2 = rVar.f10147a;
        int i11 = rVar.L;
        int i12 = rVar.M;
        String str3 = rVar.f10148b;
        if (str3 == null) {
            str3 = this.f10148b;
        }
        List list = !rVar.f10149c.isEmpty() ? rVar.f10149c : this.f10149c;
        String str4 = this.f10150d;
        if ((iK == 3 || iK == 1) && (str = rVar.f10150d) != null) {
            str4 = str;
        }
        int i13 = this.f10154h;
        if (i13 == -1) {
            i13 = rVar.f10154h;
        }
        int i14 = this.f10155i;
        if (i14 == -1) {
            i14 = rVar.f10155i;
        }
        String str5 = this.f10157k;
        if (str5 == null) {
            String strS = a1.S(rVar.f10157k, iK);
            if (a1.q1(strS).length == 1) {
                str5 = strS;
            }
        }
        x xVar = this.f10158l;
        x xVarB = xVar == null ? rVar.f10158l : xVar.b(rVar.f10158l);
        float f11 = this.f10170x;
        if (f11 == -1.0f && iK == 2) {
            f11 = rVar.f10170x;
        }
        return b().f0(str2).h0(str3).i0(list).j0(str4).w0(this.f10151e | rVar.f10151e).s0(this.f10152f | rVar.f10152f).Q(i13).p0(i14).S(str5).n0(xVarB).Y(DrmInitData.createSessionCreationData(rVar.f10165s, this.f10165s)).b0(f11).z0(i11).A0(i12).N();
    }

    public String toString() {
        return "Format(" + this.f10147a + ", " + this.f10148b + ", " + this.f10160n + ", " + this.f10161o + ", " + this.f10157k + ", " + this.f10156j + ", " + this.f10150d + ", [" + this.f10168v + ", " + this.f10169w + ", " + this.f10170x + ", " + this.C + "], [" + this.E + ", " + this.F + "])";
    }
}
