package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class o1 implements k {
    private static final o1 G = new b().E();
    public static final k.a H = new k.a() { // from class: com.google.android.exoplayer2.n1
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return o1.e(bundle);
        }
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    private int F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f25489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f25490f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f25491g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f25492h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f25493i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Metadata f25494j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f25495k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f25496l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f25497m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f25498n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final DrmInitData f25499o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f25500p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f25501q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f25502r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f25503s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f25504t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f25505u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final byte[] f25506v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f25507w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.google.android.exoplayer2.video.c f25508x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f25509y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f25510z;

    public static final class b {
        private int A;
        private int B;
        private int C;
        private int D;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f25511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f25512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f25513c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f25514d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f25515e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f25516f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f25517g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f25518h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Metadata f25519i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f25520j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f25521k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f25522l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private List f25523m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private DrmInitData f25524n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private long f25525o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f25526p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f25527q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private float f25528r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f25529s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private float f25530t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private byte[] f25531u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f25532v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private com.google.android.exoplayer2.video.c f25533w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private int f25534x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private int f25535y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private int f25536z;

        public b() {
            this.f25516f = -1;
            this.f25517g = -1;
            this.f25522l = -1;
            this.f25525o = Long.MAX_VALUE;
            this.f25526p = -1;
            this.f25527q = -1;
            this.f25528r = -1.0f;
            this.f25530t = 1.0f;
            this.f25532v = -1;
            this.f25534x = -1;
            this.f25535y = -1;
            this.f25536z = -1;
            this.C = -1;
            this.D = 0;
        }

        private b(o1 o1Var) {
            this.f25511a = o1Var.f25485a;
            this.f25512b = o1Var.f25486b;
            this.f25513c = o1Var.f25487c;
            this.f25514d = o1Var.f25488d;
            this.f25515e = o1Var.f25489e;
            this.f25516f = o1Var.f25490f;
            this.f25517g = o1Var.f25491g;
            this.f25518h = o1Var.f25493i;
            this.f25519i = o1Var.f25494j;
            this.f25520j = o1Var.f25495k;
            this.f25521k = o1Var.f25496l;
            this.f25522l = o1Var.f25497m;
            this.f25523m = o1Var.f25498n;
            this.f25524n = o1Var.f25499o;
            this.f25525o = o1Var.f25500p;
            this.f25526p = o1Var.f25501q;
            this.f25527q = o1Var.f25502r;
            this.f25528r = o1Var.f25503s;
            this.f25529s = o1Var.f25504t;
            this.f25530t = o1Var.f25505u;
            this.f25531u = o1Var.f25506v;
            this.f25532v = o1Var.f25507w;
            this.f25533w = o1Var.f25508x;
            this.f25534x = o1Var.f25509y;
            this.f25535y = o1Var.f25510z;
            this.f25536z = o1Var.A;
            this.A = o1Var.B;
            this.B = o1Var.C;
            this.C = o1Var.D;
            this.D = o1Var.E;
        }

        public o1 E() {
            return new o1(this);
        }

        public b F(int i11) {
            this.C = i11;
            return this;
        }

        public b G(int i11) {
            this.f25516f = i11;
            return this;
        }

        public b H(int i11) {
            this.f25534x = i11;
            return this;
        }

        public b I(String str) {
            this.f25518h = str;
            return this;
        }

        public b J(com.google.android.exoplayer2.video.c cVar) {
            this.f25533w = cVar;
            return this;
        }

        public b K(String str) {
            this.f25520j = str;
            return this;
        }

        public b L(int i11) {
            this.D = i11;
            return this;
        }

        public b M(DrmInitData drmInitData) {
            this.f25524n = drmInitData;
            return this;
        }

        public b N(int i11) {
            this.A = i11;
            return this;
        }

        public b O(int i11) {
            this.B = i11;
            return this;
        }

        public b P(float f11) {
            this.f25528r = f11;
            return this;
        }

        public b Q(int i11) {
            this.f25527q = i11;
            return this;
        }

        public b R(int i11) {
            this.f25511a = Integer.toString(i11);
            return this;
        }

        public b S(String str) {
            this.f25511a = str;
            return this;
        }

        public b T(List list) {
            this.f25523m = list;
            return this;
        }

        public b U(String str) {
            this.f25512b = str;
            return this;
        }

        public b V(String str) {
            this.f25513c = str;
            return this;
        }

        public b W(int i11) {
            this.f25522l = i11;
            return this;
        }

        public b X(Metadata metadata) {
            this.f25519i = metadata;
            return this;
        }

        public b Y(int i11) {
            this.f25536z = i11;
            return this;
        }

        public b Z(int i11) {
            this.f25517g = i11;
            return this;
        }

        public b a0(float f11) {
            this.f25530t = f11;
            return this;
        }

        public b b0(byte[] bArr) {
            this.f25531u = bArr;
            return this;
        }

        public b c0(int i11) {
            this.f25515e = i11;
            return this;
        }

        public b d0(int i11) {
            this.f25529s = i11;
            return this;
        }

        public b e0(String str) {
            this.f25521k = str;
            return this;
        }

        public b f0(int i11) {
            this.f25535y = i11;
            return this;
        }

        public b g0(int i11) {
            this.f25514d = i11;
            return this;
        }

        public b h0(int i11) {
            this.f25532v = i11;
            return this;
        }

        public b i0(long j11) {
            this.f25525o = j11;
            return this;
        }

        public b j0(int i11) {
            this.f25526p = i11;
            return this;
        }
    }

    private o1(b bVar) {
        this.f25485a = bVar.f25511a;
        this.f25486b = bVar.f25512b;
        this.f25487c = com.google.android.exoplayer2.util.p0.D0(bVar.f25513c);
        this.f25488d = bVar.f25514d;
        this.f25489e = bVar.f25515e;
        int i11 = bVar.f25516f;
        this.f25490f = i11;
        int i12 = bVar.f25517g;
        this.f25491g = i12;
        this.f25492h = i12 != -1 ? i12 : i11;
        this.f25493i = bVar.f25518h;
        this.f25494j = bVar.f25519i;
        this.f25495k = bVar.f25520j;
        this.f25496l = bVar.f25521k;
        this.f25497m = bVar.f25522l;
        this.f25498n = bVar.f25523m == null ? Collections.emptyList() : bVar.f25523m;
        DrmInitData drmInitData = bVar.f25524n;
        this.f25499o = drmInitData;
        this.f25500p = bVar.f25525o;
        this.f25501q = bVar.f25526p;
        this.f25502r = bVar.f25527q;
        this.f25503s = bVar.f25528r;
        this.f25504t = bVar.f25529s == -1 ? 0 : bVar.f25529s;
        this.f25505u = bVar.f25530t == -1.0f ? 1.0f : bVar.f25530t;
        this.f25506v = bVar.f25531u;
        this.f25507w = bVar.f25532v;
        this.f25508x = bVar.f25533w;
        this.f25509y = bVar.f25534x;
        this.f25510z = bVar.f25535y;
        this.A = bVar.f25536z;
        this.B = bVar.A == -1 ? 0 : bVar.A;
        this.C = bVar.B != -1 ? bVar.B : 0;
        this.D = bVar.C;
        if (bVar.D != 0 || drmInitData == null) {
            this.E = bVar.D;
        } else {
            this.E = 1;
        }
    }

    private static Object d(Object obj, Object obj2) {
        return obj != null ? obj : obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o1 e(Bundle bundle) {
        b bVar = new b();
        com.google.android.exoplayer2.util.d.a(bundle);
        int i11 = 0;
        String string = bundle.getString(h(0));
        o1 o1Var = G;
        bVar.S((String) d(string, o1Var.f25485a)).U((String) d(bundle.getString(h(1)), o1Var.f25486b)).V((String) d(bundle.getString(h(2)), o1Var.f25487c)).g0(bundle.getInt(h(3), o1Var.f25488d)).c0(bundle.getInt(h(4), o1Var.f25489e)).G(bundle.getInt(h(5), o1Var.f25490f)).Z(bundle.getInt(h(6), o1Var.f25491g)).I((String) d(bundle.getString(h(7)), o1Var.f25493i)).X((Metadata) d((Metadata) bundle.getParcelable(h(8)), o1Var.f25494j)).K((String) d(bundle.getString(h(9)), o1Var.f25495k)).e0((String) d(bundle.getString(h(10)), o1Var.f25496l)).W(bundle.getInt(h(11), o1Var.f25497m));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(i(i11));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i11++;
        }
        b bVarM = bVar.T(arrayList).M((DrmInitData) bundle.getParcelable(h(13)));
        String strH = h(14);
        o1 o1Var2 = G;
        bVarM.i0(bundle.getLong(strH, o1Var2.f25500p)).j0(bundle.getInt(h(15), o1Var2.f25501q)).Q(bundle.getInt(h(16), o1Var2.f25502r)).P(bundle.getFloat(h(17), o1Var2.f25503s)).d0(bundle.getInt(h(18), o1Var2.f25504t)).a0(bundle.getFloat(h(19), o1Var2.f25505u)).b0(bundle.getByteArray(h(20))).h0(bundle.getInt(h(21), o1Var2.f25507w));
        Bundle bundle2 = bundle.getBundle(h(22));
        if (bundle2 != null) {
            bVar.J((com.google.android.exoplayer2.video.c) com.google.android.exoplayer2.video.c.f27825f.a(bundle2));
        }
        bVar.H(bundle.getInt(h(23), o1Var2.f25509y)).f0(bundle.getInt(h(24), o1Var2.f25510z)).Y(bundle.getInt(h(25), o1Var2.A)).N(bundle.getInt(h(26), o1Var2.B)).O(bundle.getInt(h(27), o1Var2.C)).F(bundle.getInt(h(28), o1Var2.D)).L(bundle.getInt(h(29), o1Var2.E));
        return bVar.E();
    }

    private static String h(int i11) {
        return Integer.toString(i11, 36);
    }

    private static String i(int i11) {
        return h(12) + "_" + Integer.toString(i11, 36);
    }

    public b b() {
        return new b();
    }

    public o1 c(int i11) {
        return b().L(i11).E();
    }

    public boolean equals(Object obj) {
        int i11;
        if (this == obj) {
            return true;
        }
        if (obj == null || o1.class != obj.getClass()) {
            return false;
        }
        o1 o1Var = (o1) obj;
        int i12 = this.F;
        if (i12 == 0 || (i11 = o1Var.F) == 0 || i12 == i11) {
            return this.f25488d == o1Var.f25488d && this.f25489e == o1Var.f25489e && this.f25490f == o1Var.f25490f && this.f25491g == o1Var.f25491g && this.f25497m == o1Var.f25497m && this.f25500p == o1Var.f25500p && this.f25501q == o1Var.f25501q && this.f25502r == o1Var.f25502r && this.f25504t == o1Var.f25504t && this.f25507w == o1Var.f25507w && this.f25509y == o1Var.f25509y && this.f25510z == o1Var.f25510z && this.A == o1Var.A && this.B == o1Var.B && this.C == o1Var.C && this.D == o1Var.D && this.E == o1Var.E && Float.compare(this.f25503s, o1Var.f25503s) == 0 && Float.compare(this.f25505u, o1Var.f25505u) == 0 && com.google.android.exoplayer2.util.p0.c(this.f25485a, o1Var.f25485a) && com.google.android.exoplayer2.util.p0.c(this.f25486b, o1Var.f25486b) && com.google.android.exoplayer2.util.p0.c(this.f25493i, o1Var.f25493i) && com.google.android.exoplayer2.util.p0.c(this.f25495k, o1Var.f25495k) && com.google.android.exoplayer2.util.p0.c(this.f25496l, o1Var.f25496l) && com.google.android.exoplayer2.util.p0.c(this.f25487c, o1Var.f25487c) && Arrays.equals(this.f25506v, o1Var.f25506v) && com.google.android.exoplayer2.util.p0.c(this.f25494j, o1Var.f25494j) && com.google.android.exoplayer2.util.p0.c(this.f25508x, o1Var.f25508x) && com.google.android.exoplayer2.util.p0.c(this.f25499o, o1Var.f25499o) && g(o1Var);
        }
        return false;
    }

    public int f() {
        int i11;
        int i12 = this.f25501q;
        if (i12 == -1 || (i11 = this.f25502r) == -1) {
            return -1;
        }
        return i12 * i11;
    }

    public boolean g(o1 o1Var) {
        if (this.f25498n.size() != o1Var.f25498n.size()) {
            return false;
        }
        for (int i11 = 0; i11 < this.f25498n.size(); i11++) {
            if (!Arrays.equals((byte[]) this.f25498n.get(i11), (byte[]) o1Var.f25498n.get(i11))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.F == 0) {
            String str = this.f25485a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f25486b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f25487c;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f25488d) * 31) + this.f25489e) * 31) + this.f25490f) * 31) + this.f25491g) * 31;
            String str4 = this.f25493i;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.f25494j;
            int iHashCode5 = (iHashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.f25495k;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f25496l;
            this.F = ((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f25497m) * 31) + ((int) this.f25500p)) * 31) + this.f25501q) * 31) + this.f25502r) * 31) + Float.floatToIntBits(this.f25503s)) * 31) + this.f25504t) * 31) + Float.floatToIntBits(this.f25505u)) * 31) + this.f25507w) * 31) + this.f25509y) * 31) + this.f25510z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E;
        }
        return this.F;
    }

    public o1 j(o1 o1Var) {
        String str;
        if (this == o1Var) {
            return this;
        }
        int iL = com.google.android.exoplayer2.util.w.l(this.f25496l);
        String str2 = o1Var.f25485a;
        String str3 = o1Var.f25486b;
        if (str3 == null) {
            str3 = this.f25486b;
        }
        String str4 = this.f25487c;
        if ((iL == 3 || iL == 1) && (str = o1Var.f25487c) != null) {
            str4 = str;
        }
        int i11 = this.f25490f;
        if (i11 == -1) {
            i11 = o1Var.f25490f;
        }
        int i12 = this.f25491g;
        if (i12 == -1) {
            i12 = o1Var.f25491g;
        }
        String str5 = this.f25493i;
        if (str5 == null) {
            String strL = com.google.android.exoplayer2.util.p0.L(o1Var.f25493i, iL);
            if (com.google.android.exoplayer2.util.p0.U0(strL).length == 1) {
                str5 = strL;
            }
        }
        Metadata metadata = this.f25494j;
        Metadata metadataCopyWithAppendedEntriesFrom = metadata == null ? o1Var.f25494j : metadata.copyWithAppendedEntriesFrom(o1Var.f25494j);
        float f11 = this.f25503s;
        if (f11 == -1.0f && iL == 2) {
            f11 = o1Var.f25503s;
        }
        return b().S(str2).U(str3).V(str4).g0(this.f25488d | o1Var.f25488d).c0(this.f25489e | o1Var.f25489e).G(i11).Z(i12).I(str5).X(metadataCopyWithAppendedEntriesFrom).M(DrmInitData.createSessionCreationData(o1Var.f25499o, this.f25499o)).P(f11).E();
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(h(0), this.f25485a);
        bundle.putString(h(1), this.f25486b);
        bundle.putString(h(2), this.f25487c);
        bundle.putInt(h(3), this.f25488d);
        bundle.putInt(h(4), this.f25489e);
        bundle.putInt(h(5), this.f25490f);
        bundle.putInt(h(6), this.f25491g);
        bundle.putString(h(7), this.f25493i);
        bundle.putParcelable(h(8), this.f25494j);
        bundle.putString(h(9), this.f25495k);
        bundle.putString(h(10), this.f25496l);
        bundle.putInt(h(11), this.f25497m);
        for (int i11 = 0; i11 < this.f25498n.size(); i11++) {
            bundle.putByteArray(i(i11), (byte[]) this.f25498n.get(i11));
        }
        bundle.putParcelable(h(13), this.f25499o);
        bundle.putLong(h(14), this.f25500p);
        bundle.putInt(h(15), this.f25501q);
        bundle.putInt(h(16), this.f25502r);
        bundle.putFloat(h(17), this.f25503s);
        bundle.putInt(h(18), this.f25504t);
        bundle.putFloat(h(19), this.f25505u);
        bundle.putByteArray(h(20), this.f25506v);
        bundle.putInt(h(21), this.f25507w);
        if (this.f25508x != null) {
            bundle.putBundle(h(22), this.f25508x.toBundle());
        }
        bundle.putInt(h(23), this.f25509y);
        bundle.putInt(h(24), this.f25510z);
        bundle.putInt(h(25), this.A);
        bundle.putInt(h(26), this.B);
        bundle.putInt(h(27), this.C);
        bundle.putInt(h(28), this.D);
        bundle.putInt(h(29), this.E);
        return bundle;
    }

    public String toString() {
        return "Format(" + this.f25485a + ", " + this.f25486b + ", " + this.f25495k + ", " + this.f25496l + ", " + this.f25493i + ", " + this.f25492h + ", " + this.f25487c + ", [" + this.f25501q + ", " + this.f25502r + ", " + this.f25503s + "], [" + this.f25509y + ", " + this.f25510z + "])";
    }
}
