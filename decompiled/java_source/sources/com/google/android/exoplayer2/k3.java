package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class k3 implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k3 f25151a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k.a f25152b = new k.a() { // from class: com.google.android.exoplayer2.j3
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return k3.b(bundle);
        }
    };

    class a extends k3 {
        a() {
        }

        @Override // com.google.android.exoplayer2.k3
        public int f(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.k3
        public b k(int i11, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.k3
        public int m() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.k3
        public Object q(int i11) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.k3
        public d s(int i11, d dVar, long j11) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.k3
        public int t() {
            return 0;
        }
    }

    public static final class b implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final k.a f25153h = new k.a() { // from class: com.google.android.exoplayer2.l3
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return k3.b.c(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f25154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f25155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f25156c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f25157d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f25158e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f25159f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private u9.c f25160g = u9.c.f76689g;

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Bundle bundle) {
            int i11 = bundle.getInt(u(0), 0);
            long j11 = bundle.getLong(u(1), C.TIME_UNSET);
            long j12 = bundle.getLong(u(2), 0L);
            boolean z10 = bundle.getBoolean(u(3));
            Bundle bundle2 = bundle.getBundle(u(4));
            u9.c cVar = bundle2 != null ? (u9.c) u9.c.f76691i.a(bundle2) : u9.c.f76689g;
            b bVar = new b();
            bVar.w(null, null, i11, j11, j12, cVar, z10);
            return bVar;
        }

        private static String u(int i11) {
            return Integer.toString(i11, 36);
        }

        public int d(int i11) {
            return this.f25160g.c(i11).f76700b;
        }

        public long e(int i11, int i12) {
            u9.c.a aVarC = this.f25160g.c(i11);
            return aVarC.f76700b != -1 ? aVarC.f76703e[i12] : C.TIME_UNSET;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return com.google.android.exoplayer2.util.p0.c(this.f25154a, bVar.f25154a) && com.google.android.exoplayer2.util.p0.c(this.f25155b, bVar.f25155b) && this.f25156c == bVar.f25156c && this.f25157d == bVar.f25157d && this.f25158e == bVar.f25158e && this.f25159f == bVar.f25159f && com.google.android.exoplayer2.util.p0.c(this.f25160g, bVar.f25160g);
        }

        public int f() {
            return this.f25160g.f76693b;
        }

        public int g(long j11) {
            return this.f25160g.d(j11, this.f25157d);
        }

        public int h(long j11) {
            return this.f25160g.e(j11, this.f25157d);
        }

        public int hashCode() {
            Object obj = this.f25154a;
            int iHashCode = (Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f25155b;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f25156c) * 31;
            long j11 = this.f25157d;
            int i11 = (iHashCode2 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f25158e;
            return ((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f25159f ? 1 : 0)) * 31) + this.f25160g.hashCode();
        }

        public long i(int i11) {
            return this.f25160g.c(i11).f76699a;
        }

        public long j() {
            return this.f25160g.f76694c;
        }

        public int k(int i11, int i12) {
            u9.c.a aVarC = this.f25160g.c(i11);
            if (aVarC.f76700b != -1) {
                return aVarC.f76702d[i12];
            }
            return 0;
        }

        public long l(int i11) {
            return this.f25160g.c(i11).f76704f;
        }

        public long m() {
            return this.f25157d;
        }

        public int n(int i11) {
            return this.f25160g.c(i11).e();
        }

        public int o(int i11, int i12) {
            return this.f25160g.c(i11).f(i12);
        }

        public long p() {
            return com.google.android.exoplayer2.util.p0.e1(this.f25158e);
        }

        public long q() {
            return this.f25158e;
        }

        public int r() {
            return this.f25160g.f76696e;
        }

        public boolean s(int i11) {
            return !this.f25160g.c(i11).g();
        }

        public boolean t(int i11) {
            return this.f25160g.c(i11).f76705g;
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(u(0), this.f25156c);
            bundle.putLong(u(1), this.f25157d);
            bundle.putLong(u(2), this.f25158e);
            bundle.putBoolean(u(3), this.f25159f);
            bundle.putBundle(u(4), this.f25160g.toBundle());
            return bundle;
        }

        public b v(Object obj, Object obj2, int i11, long j11, long j12) {
            return w(obj, obj2, i11, j11, j12, u9.c.f76689g, false);
        }

        public b w(Object obj, Object obj2, int i11, long j11, long j12, u9.c cVar, boolean z10) {
            this.f25154a = obj;
            this.f25155b = obj2;
            this.f25156c = i11;
            this.f25157d = j11;
            this.f25158e = j12;
            this.f25160g = cVar;
            this.f25159f = z10;
            return this;
        }
    }

    public static final class c extends k3 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImmutableList f25161c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ImmutableList f25162d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f25163e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int[] f25164f;

        public c(ImmutableList immutableList, ImmutableList immutableList2, int[] iArr) {
            com.google.android.exoplayer2.util.a.a(immutableList.size() == iArr.length);
            this.f25161c = immutableList;
            this.f25162d = immutableList2;
            this.f25163e = iArr;
            this.f25164f = new int[iArr.length];
            for (int i11 = 0; i11 < iArr.length; i11++) {
                this.f25164f[iArr[i11]] = i11;
            }
        }

        @Override // com.google.android.exoplayer2.k3
        public int e(boolean z10) {
            if (u()) {
                return -1;
            }
            if (z10) {
                return this.f25163e[0];
            }
            return 0;
        }

        @Override // com.google.android.exoplayer2.k3
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.k3
        public int g(boolean z10) {
            if (u()) {
                return -1;
            }
            return z10 ? this.f25163e[t() - 1] : t() - 1;
        }

        @Override // com.google.android.exoplayer2.k3
        public int i(int i11, int i12, boolean z10) {
            if (i12 == 1) {
                return i11;
            }
            if (i11 != g(z10)) {
                return z10 ? this.f25163e[this.f25164f[i11] + 1] : i11 + 1;
            }
            if (i12 == 2) {
                return e(z10);
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.k3
        public b k(int i11, b bVar, boolean z10) {
            b bVar2 = (b) this.f25162d.get(i11);
            bVar.w(bVar2.f25154a, bVar2.f25155b, bVar2.f25156c, bVar2.f25157d, bVar2.f25158e, bVar2.f25160g, bVar2.f25159f);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.k3
        public int m() {
            return this.f25162d.size();
        }

        @Override // com.google.android.exoplayer2.k3
        public int p(int i11, int i12, boolean z10) {
            if (i12 == 1) {
                return i11;
            }
            if (i11 != e(z10)) {
                return z10 ? this.f25163e[this.f25164f[i11] - 1] : i11 - 1;
            }
            if (i12 == 2) {
                return g(z10);
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.k3
        public Object q(int i11) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.k3
        public d s(int i11, d dVar, long j11) {
            d dVar2 = (d) this.f25161c.get(i11);
            dVar.k(dVar2.f25169a, dVar2.f25171c, dVar2.f25172d, dVar2.f25173e, dVar2.f25174f, dVar2.f25175g, dVar2.f25176h, dVar2.f25177i, dVar2.f25179k, dVar2.f25181m, dVar2.f25182n, dVar2.f25183o, dVar2.f25184p, dVar2.f25185q);
            dVar.f25180l = dVar2.f25180l;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.k3
        public int t() {
            return this.f25161c.size();
        }
    }

    public static final class d implements k {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final Object f25165r = new Object();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static final Object f25166s = new Object();

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static final v1 f25167t = new v1.c().d("com.google.android.exoplayer2.Timeline").i(Uri.EMPTY).a();

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final k.a f25168u = new k.a() { // from class: com.google.android.exoplayer2.m3
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return k3.d.c(bundle);
            }
        };

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f25170b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Object f25172d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f25173e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f25174f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f25175g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f25176h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f25177i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f25178j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public v1.g f25179k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f25180l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f25181m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f25182n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f25183o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f25184p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public long f25185q;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f25169a = f25165r;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public v1 f25171c = f25167t;

        /* JADX INFO: Access modifiers changed from: private */
        public static d c(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(j(1));
            v1 v1Var = bundle2 != null ? (v1) v1.f27707j.a(bundle2) : null;
            long j11 = bundle.getLong(j(2), C.TIME_UNSET);
            long j12 = bundle.getLong(j(3), C.TIME_UNSET);
            long j13 = bundle.getLong(j(4), C.TIME_UNSET);
            boolean z10 = bundle.getBoolean(j(5), false);
            boolean z11 = bundle.getBoolean(j(6), false);
            Bundle bundle3 = bundle.getBundle(j(7));
            v1.g gVar = bundle3 != null ? (v1.g) v1.g.f27761g.a(bundle3) : null;
            boolean z12 = bundle.getBoolean(j(8), false);
            long j14 = bundle.getLong(j(9), 0L);
            long j15 = bundle.getLong(j(10), C.TIME_UNSET);
            int i11 = bundle.getInt(j(11), 0);
            int i12 = bundle.getInt(j(12), 0);
            long j16 = bundle.getLong(j(13), 0L);
            d dVar = new d();
            dVar.k(f25166s, v1Var, null, j11, j12, j13, z10, z11, gVar, j14, j15, i11, i12, j16);
            dVar.f25180l = z12;
            return dVar;
        }

        private static String j(int i11) {
            return Integer.toString(i11, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle l(boolean z10) {
            Bundle bundle = new Bundle();
            bundle.putBundle(j(1), (z10 ? v1.f27706i : this.f25171c).toBundle());
            bundle.putLong(j(2), this.f25173e);
            bundle.putLong(j(3), this.f25174f);
            bundle.putLong(j(4), this.f25175g);
            bundle.putBoolean(j(5), this.f25176h);
            bundle.putBoolean(j(6), this.f25177i);
            v1.g gVar = this.f25179k;
            if (gVar != null) {
                bundle.putBundle(j(7), gVar.toBundle());
            }
            bundle.putBoolean(j(8), this.f25180l);
            bundle.putLong(j(9), this.f25181m);
            bundle.putLong(j(10), this.f25182n);
            bundle.putInt(j(11), this.f25183o);
            bundle.putInt(j(12), this.f25184p);
            bundle.putLong(j(13), this.f25185q);
            return bundle;
        }

        public long d() {
            return com.google.android.exoplayer2.util.p0.b0(this.f25175g);
        }

        public long e() {
            return com.google.android.exoplayer2.util.p0.e1(this.f25181m);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return com.google.android.exoplayer2.util.p0.c(this.f25169a, dVar.f25169a) && com.google.android.exoplayer2.util.p0.c(this.f25171c, dVar.f25171c) && com.google.android.exoplayer2.util.p0.c(this.f25172d, dVar.f25172d) && com.google.android.exoplayer2.util.p0.c(this.f25179k, dVar.f25179k) && this.f25173e == dVar.f25173e && this.f25174f == dVar.f25174f && this.f25175g == dVar.f25175g && this.f25176h == dVar.f25176h && this.f25177i == dVar.f25177i && this.f25180l == dVar.f25180l && this.f25181m == dVar.f25181m && this.f25182n == dVar.f25182n && this.f25183o == dVar.f25183o && this.f25184p == dVar.f25184p && this.f25185q == dVar.f25185q;
        }

        public long f() {
            return this.f25181m;
        }

        public long g() {
            return com.google.android.exoplayer2.util.p0.e1(this.f25182n);
        }

        public long h() {
            return this.f25185q;
        }

        public int hashCode() {
            int iHashCode = (((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f25169a.hashCode()) * 31) + this.f25171c.hashCode()) * 31;
            Object obj = this.f25172d;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            v1.g gVar = this.f25179k;
            int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
            long j11 = this.f25173e;
            int i11 = (iHashCode3 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f25174f;
            int i12 = (i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.f25175g;
            int i13 = (((((((i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31) + (this.f25176h ? 1 : 0)) * 31) + (this.f25177i ? 1 : 0)) * 31) + (this.f25180l ? 1 : 0)) * 31;
            long j14 = this.f25181m;
            int i14 = (i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
            long j15 = this.f25182n;
            int i15 = (((((i14 + ((int) (j15 ^ (j15 >>> 32)))) * 31) + this.f25183o) * 31) + this.f25184p) * 31;
            long j16 = this.f25185q;
            return i15 + ((int) (j16 ^ (j16 >>> 32)));
        }

        public boolean i() {
            com.google.android.exoplayer2.util.a.g(this.f25178j == (this.f25179k != null));
            return this.f25179k != null;
        }

        public d k(Object obj, v1 v1Var, Object obj2, long j11, long j12, long j13, boolean z10, boolean z11, v1.g gVar, long j14, long j15, int i11, int i12, long j16) {
            v1.h hVar;
            this.f25169a = obj;
            this.f25171c = v1Var != null ? v1Var : f25167t;
            this.f25170b = (v1Var == null || (hVar = v1Var.f27709b) == null) ? null : hVar.f27779h;
            this.f25172d = obj2;
            this.f25173e = j11;
            this.f25174f = j12;
            this.f25175g = j13;
            this.f25176h = z10;
            this.f25177i = z11;
            this.f25178j = gVar != null;
            this.f25179k = gVar;
            this.f25181m = j14;
            this.f25182n = j15;
            this.f25183o = i11;
            this.f25184p = i12;
            this.f25185q = j16;
            this.f25180l = false;
            return this;
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            return l(false);
        }
    }

    protected k3() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static k3 b(Bundle bundle) {
        ImmutableList immutableListC = c(d.f25168u, com.google.android.exoplayer2.util.c.a(bundle, w(0)));
        ImmutableList immutableListC2 = c(b.f25153h, com.google.android.exoplayer2.util.c.a(bundle, w(1)));
        int[] intArray = bundle.getIntArray(w(2));
        if (intArray == null) {
            intArray = d(immutableListC.size());
        }
        return new c(immutableListC, immutableListC2, intArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ImmutableList c(k.a aVar, IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.of();
        }
        ImmutableList.a aVar2 = new ImmutableList.a();
        ImmutableList immutableListA = j.a(iBinder);
        for (int i11 = 0; i11 < immutableListA.size(); i11++) {
            aVar2.a(aVar.a((Bundle) immutableListA.get(i11)));
        }
        return aVar2.e();
    }

    private static int[] d(int i11) {
        int[] iArr = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i12] = i12;
        }
        return iArr;
    }

    private static String w(int i11) {
        return Integer.toString(i11, 36);
    }

    public int e(boolean z10) {
        return u() ? -1 : 0;
    }

    public boolean equals(Object obj) {
        int iG;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k3)) {
            return false;
        }
        k3 k3Var = (k3) obj;
        if (k3Var.t() != t() || k3Var.m() != m()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i11 = 0; i11 < t(); i11++) {
            if (!r(i11, dVar).equals(k3Var.r(i11, dVar2))) {
                return false;
            }
        }
        for (int i12 = 0; i12 < m(); i12++) {
            if (!k(i12, bVar, true).equals(k3Var.k(i12, bVar2, true))) {
                return false;
            }
        }
        int iE = e(true);
        if (iE != k3Var.e(true) || (iG = g(true)) != k3Var.g(true)) {
            return false;
        }
        while (iE != iG) {
            int i13 = i(iE, 0, true);
            if (i13 != k3Var.i(iE, 0, true)) {
                return false;
            }
            iE = i13;
        }
        return true;
    }

    public abstract int f(Object obj);

    public int g(boolean z10) {
        if (u()) {
            return -1;
        }
        return t() - 1;
    }

    public final int h(int i11, b bVar, d dVar, int i12, boolean z10) {
        int i13 = j(i11, bVar).f25156c;
        if (r(i13, dVar).f25184p != i11) {
            return i11 + 1;
        }
        int i14 = i(i13, i12, z10);
        if (i14 == -1) {
            return -1;
        }
        return r(i14, dVar).f25183o;
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int iT = Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + t();
        for (int i11 = 0; i11 < t(); i11++) {
            iT = (iT * 31) + r(i11, dVar).hashCode();
        }
        int iM = (iT * 31) + m();
        for (int i12 = 0; i12 < m(); i12++) {
            iM = (iM * 31) + k(i12, bVar, true).hashCode();
        }
        int iE = e(true);
        while (iE != -1) {
            iM = (iM * 31) + iE;
            iE = i(iE, 0, true);
        }
        return iM;
    }

    public int i(int i11, int i12, boolean z10) {
        if (i12 == 0) {
            if (i11 == g(z10)) {
                return -1;
            }
            return i11 + 1;
        }
        if (i12 == 1) {
            return i11;
        }
        if (i12 == 2) {
            return i11 == g(z10) ? e(z10) : i11 + 1;
        }
        throw new IllegalStateException();
    }

    public final b j(int i11, b bVar) {
        return k(i11, bVar, false);
    }

    public abstract b k(int i11, b bVar, boolean z10);

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public abstract int m();

    public final Pair n(d dVar, b bVar, int i11, long j11) {
        return (Pair) com.google.android.exoplayer2.util.a.e(o(dVar, bVar, i11, j11, 0L));
    }

    public final Pair o(d dVar, b bVar, int i11, long j11, long j12) {
        com.google.android.exoplayer2.util.a.c(i11, 0, t());
        s(i11, dVar, j12);
        if (j11 == C.TIME_UNSET) {
            j11 = dVar.f();
            if (j11 == C.TIME_UNSET) {
                return null;
            }
        }
        int i12 = dVar.f25183o;
        j(i12, bVar);
        while (i12 < dVar.f25184p && bVar.f25158e != j11) {
            int i13 = i12 + 1;
            if (j(i13, bVar).f25158e > j11) {
                break;
            }
            i12 = i13;
        }
        k(i12, bVar, true);
        long jMin = j11 - bVar.f25158e;
        long j13 = bVar.f25157d;
        if (j13 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j13 - 1);
        }
        return Pair.create(com.google.android.exoplayer2.util.a.e(bVar.f25155b), Long.valueOf(Math.max(0L, jMin)));
    }

    public int p(int i11, int i12, boolean z10) {
        if (i12 == 0) {
            if (i11 == e(z10)) {
                return -1;
            }
            return i11 - 1;
        }
        if (i12 == 1) {
            return i11;
        }
        if (i12 == 2) {
            return i11 == e(z10) ? g(z10) : i11 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object q(int i11);

    public final d r(int i11, d dVar) {
        return s(i11, dVar, 0L);
    }

    public abstract d s(int i11, d dVar, long j11);

    public abstract int t();

    @Override // com.google.android.exoplayer2.k
    public final Bundle toBundle() {
        return x(false);
    }

    public final boolean u() {
        return t() == 0;
    }

    public final boolean v(int i11, b bVar, d dVar, int i12, boolean z10) {
        return h(i11, bVar, dVar, i12, z10) == -1;
    }

    public final Bundle x(boolean z10) {
        ArrayList arrayList = new ArrayList();
        int iT = t();
        d dVar = new d();
        for (int i11 = 0; i11 < iT; i11++) {
            arrayList.add(s(i11, dVar, 0L).l(z10));
        }
        ArrayList arrayList2 = new ArrayList();
        int iM = m();
        b bVar = new b();
        for (int i12 = 0; i12 < iM; i12++) {
            arrayList2.add(k(i12, bVar, false).toBundle());
        }
        int[] iArr = new int[iT];
        if (iT > 0) {
            iArr[0] = e(true);
        }
        for (int i13 = 1; i13 < iT; i13++) {
            iArr[i13] = i(iArr[i13 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        com.google.android.exoplayer2.util.c.c(bundle, w(0), new j(arrayList));
        com.google.android.exoplayer2.util.c.c(bundle, w(1), new j(arrayList2));
        bundle.putIntArray(w(2), iArr);
        return bundle;
    }
}
