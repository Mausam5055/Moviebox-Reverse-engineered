package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class v1 implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final v1 f27706i = new c().a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f27707j = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.u1
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return v1.c(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f27709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f27710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f27711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a2 f27712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d f27713f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e f27714g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f27715h;

    public static final class b {
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f27716a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Uri f27717b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f27718c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d.a f27719d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private f.a f27720e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f27721f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f27722g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ImmutableList f27723h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Object f27724i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private a2 f27725j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private g.a f27726k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private j f27727l;

        public c() {
            this.f27719d = new d.a();
            this.f27720e = new f.a();
            this.f27721f = Collections.emptyList();
            this.f27723h = ImmutableList.of();
            this.f27726k = new g.a();
            this.f27727l = j.f27780d;
        }

        private c(v1 v1Var) {
            this();
            this.f27719d = v1Var.f27713f.b();
            this.f27716a = v1Var.f27708a;
            this.f27725j = v1Var.f27712e;
            this.f27726k = v1Var.f27711d.b();
            this.f27727l = v1Var.f27715h;
            h hVar = v1Var.f27709b;
            if (hVar != null) {
                this.f27722g = hVar.f27776e;
                this.f27718c = hVar.f27773b;
                this.f27717b = hVar.f27772a;
                this.f27721f = hVar.f27775d;
                this.f27723h = hVar.f27777f;
                this.f27724i = hVar.f27779h;
                f fVar = hVar.f27774c;
                this.f27720e = fVar != null ? fVar.b() : new f.a();
            }
        }

        public v1 a() {
            i iVar;
            com.google.android.exoplayer2.util.a.g(this.f27720e.f27753b == null || this.f27720e.f27752a != null);
            Uri uri = this.f27717b;
            if (uri != null) {
                iVar = new i(uri, this.f27718c, this.f27720e.f27752a != null ? this.f27720e.i() : null, null, this.f27721f, this.f27722g, this.f27723h, this.f27724i);
            } else {
                iVar = null;
            }
            String str = this.f27716a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e eVarG = this.f27719d.g();
            g gVarF = this.f27726k.f();
            a2 a2Var = this.f27725j;
            if (a2Var == null) {
                a2Var = a2.G;
            }
            return new v1(str2, eVarG, iVar, gVarF, a2Var, this.f27727l);
        }

        public c b(String str) {
            this.f27722g = str;
            return this;
        }

        public c c(g gVar) {
            this.f27726k = gVar.b();
            return this;
        }

        public c d(String str) {
            this.f27716a = (String) com.google.android.exoplayer2.util.a.e(str);
            return this;
        }

        public c e(String str) {
            this.f27718c = str;
            return this;
        }

        public c f(List list) {
            this.f27721f = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public c g(List list) {
            this.f27723h = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public c h(Object obj) {
            this.f27724i = obj;
            return this;
        }

        public c i(Uri uri) {
            this.f27717b = uri;
            return this;
        }

        public c j(String str) {
            return i(str == null ? null : Uri.parse(str));
        }
    }

    public static class d implements com.google.android.exoplayer2.k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final d f27728f = new a().f();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final com.google.android.exoplayer2.k.a f27729g = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.w1
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return v1.d.d(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f27730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f27731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f27732c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f27733d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f27734e;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f27735a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f27736b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private boolean f27737c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f27738d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f27739e;

            public a() {
                this.f27736b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f27735a = dVar.f27730a;
                this.f27736b = dVar.f27731b;
                this.f27737c = dVar.f27732c;
                this.f27738d = dVar.f27733d;
                this.f27739e = dVar.f27734e;
            }

            public d f() {
                return g();
            }

            public e g() {
                return new e(this);
            }

            public a h(long j11) {
                com.google.android.exoplayer2.util.a.a(j11 == Long.MIN_VALUE || j11 >= 0);
                this.f27736b = j11;
                return this;
            }

            public a i(boolean z10) {
                this.f27738d = z10;
                return this;
            }

            public a j(boolean z10) {
                this.f27737c = z10;
                return this;
            }

            public a k(long j11) {
                com.google.android.exoplayer2.util.a.a(j11 >= 0);
                this.f27735a = j11;
                return this;
            }

            public a l(boolean z10) {
                this.f27739e = z10;
                return this;
            }
        }

        private d(a aVar) {
            this.f27730a = aVar.f27735a;
            this.f27731b = aVar.f27736b;
            this.f27732c = aVar.f27737c;
            this.f27733d = aVar.f27738d;
            this.f27734e = aVar.f27739e;
        }

        private static String c(int i11) {
            return Integer.toString(i11, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e d(Bundle bundle) {
            return new a().k(bundle.getLong(c(0), 0L)).h(bundle.getLong(c(1), Long.MIN_VALUE)).j(bundle.getBoolean(c(2), false)).i(bundle.getBoolean(c(3), false)).l(bundle.getBoolean(c(4), false)).g();
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f27730a == dVar.f27730a && this.f27731b == dVar.f27731b && this.f27732c == dVar.f27732c && this.f27733d == dVar.f27733d && this.f27734e == dVar.f27734e;
        }

        public int hashCode() {
            long j11 = this.f27730a;
            int i11 = ((int) (j11 ^ (j11 >>> 32))) * 31;
            long j12 = this.f27731b;
            return ((((((i11 + ((int) ((j12 >>> 32) ^ j12))) * 31) + (this.f27732c ? 1 : 0)) * 31) + (this.f27733d ? 1 : 0)) * 31) + (this.f27734e ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.f27730a);
            bundle.putLong(c(1), this.f27731b);
            bundle.putBoolean(c(2), this.f27732c);
            bundle.putBoolean(c(3), this.f27733d);
            bundle.putBoolean(c(4), this.f27734e);
            return bundle;
        }
    }

    public static final class e extends d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f27740h = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f27741a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UUID f27742b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f27743c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImmutableMap f27744d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImmutableMap f27745e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f27746f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f27747g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f27748h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ImmutableList f27749i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ImmutableList f27750j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final byte[] f27751k;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private UUID f27752a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Uri f27753b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private ImmutableMap f27754c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f27755d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f27756e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private boolean f27757f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private ImmutableList f27758g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private byte[] f27759h;

            private a() {
                this.f27754c = ImmutableMap.of();
                this.f27758g = ImmutableList.of();
            }

            private a(f fVar) {
                this.f27752a = fVar.f27741a;
                this.f27753b = fVar.f27743c;
                this.f27754c = fVar.f27745e;
                this.f27755d = fVar.f27746f;
                this.f27756e = fVar.f27747g;
                this.f27757f = fVar.f27748h;
                this.f27758g = fVar.f27750j;
                this.f27759h = fVar.f27751k;
            }

            public f i() {
                return new f(this);
            }
        }

        private f(a aVar) {
            com.google.android.exoplayer2.util.a.g((aVar.f27757f && aVar.f27753b == null) ? false : true);
            UUID uuid = (UUID) com.google.android.exoplayer2.util.a.e(aVar.f27752a);
            this.f27741a = uuid;
            this.f27742b = uuid;
            this.f27743c = aVar.f27753b;
            this.f27744d = aVar.f27754c;
            this.f27745e = aVar.f27754c;
            this.f27746f = aVar.f27755d;
            this.f27748h = aVar.f27757f;
            this.f27747g = aVar.f27756e;
            this.f27749i = aVar.f27758g;
            this.f27750j = aVar.f27758g;
            this.f27751k = aVar.f27759h != null ? Arrays.copyOf(aVar.f27759h, aVar.f27759h.length) : null;
        }

        public a b() {
            return new a();
        }

        public byte[] c() {
            byte[] bArr = this.f27751k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.f27741a.equals(fVar.f27741a) && com.google.android.exoplayer2.util.p0.c(this.f27743c, fVar.f27743c) && com.google.android.exoplayer2.util.p0.c(this.f27745e, fVar.f27745e) && this.f27746f == fVar.f27746f && this.f27748h == fVar.f27748h && this.f27747g == fVar.f27747g && this.f27750j.equals(fVar.f27750j) && Arrays.equals(this.f27751k, fVar.f27751k);
        }

        public int hashCode() {
            int iHashCode = this.f27741a.hashCode() * 31;
            Uri uri = this.f27743c;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f27745e.hashCode()) * 31) + (this.f27746f ? 1 : 0)) * 31) + (this.f27748h ? 1 : 0)) * 31) + (this.f27747g ? 1 : 0)) * 31) + this.f27750j.hashCode()) * 31) + Arrays.hashCode(this.f27751k);
        }
    }

    public static final class g implements com.google.android.exoplayer2.k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final g f27760f = new a().f();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final com.google.android.exoplayer2.k.a f27761g = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.x1
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return v1.g.d(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f27762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f27763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f27764c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float f27765d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f27766e;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f27767a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f27768b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private long f27769c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private float f27770d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private float f27771e;

            public a() {
                this.f27767a = C.TIME_UNSET;
                this.f27768b = C.TIME_UNSET;
                this.f27769c = C.TIME_UNSET;
                this.f27770d = -3.4028235E38f;
                this.f27771e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f27767a = gVar.f27762a;
                this.f27768b = gVar.f27763b;
                this.f27769c = gVar.f27764c;
                this.f27770d = gVar.f27765d;
                this.f27771e = gVar.f27766e;
            }

            public g f() {
                return new g(this);
            }

            public a g(long j11) {
                this.f27769c = j11;
                return this;
            }

            public a h(float f11) {
                this.f27771e = f11;
                return this;
            }

            public a i(long j11) {
                this.f27768b = j11;
                return this;
            }

            public a j(float f11) {
                this.f27770d = f11;
                return this;
            }

            public a k(long j11) {
                this.f27767a = j11;
                return this;
            }
        }

        public g(long j11, long j12, long j13, float f11, float f12) {
            this.f27762a = j11;
            this.f27763b = j12;
            this.f27764c = j13;
            this.f27765d = f11;
            this.f27766e = f12;
        }

        private g(a aVar) {
            this(aVar.f27767a, aVar.f27768b, aVar.f27769c, aVar.f27770d, aVar.f27771e);
        }

        private static String c(int i11) {
            return Integer.toString(i11, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g d(Bundle bundle) {
            return new g(bundle.getLong(c(0), C.TIME_UNSET), bundle.getLong(c(1), C.TIME_UNSET), bundle.getLong(c(2), C.TIME_UNSET), bundle.getFloat(c(3), -3.4028235E38f), bundle.getFloat(c(4), -3.4028235E38f));
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.f27762a == gVar.f27762a && this.f27763b == gVar.f27763b && this.f27764c == gVar.f27764c && this.f27765d == gVar.f27765d && this.f27766e == gVar.f27766e;
        }

        public int hashCode() {
            long j11 = this.f27762a;
            long j12 = this.f27763b;
            int i11 = ((((int) (j11 ^ (j11 >>> 32))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.f27764c;
            int i12 = (i11 + ((int) ((j13 >>> 32) ^ j13))) * 31;
            float f11 = this.f27765d;
            int iFloatToIntBits = (i12 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31;
            float f12 = this.f27766e;
            return iFloatToIntBits + (f12 != 0.0f ? Float.floatToIntBits(f12) : 0);
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.f27762a);
            bundle.putLong(c(1), this.f27763b);
            bundle.putLong(c(2), this.f27764c);
            bundle.putFloat(c(3), this.f27765d);
            bundle.putFloat(c(4), this.f27766e);
            return bundle;
        }
    }

    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f27772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f27773b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f f27774c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f27775d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f27776e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ImmutableList f27777f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final List f27778g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Object f27779h;

        /* JADX WARN: Multi-variable type inference failed */
        private h(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj) {
            this.f27772a = uri;
            this.f27773b = str;
            this.f27774c = fVar;
            this.f27775d = list;
            this.f27776e = str2;
            this.f27777f = immutableList;
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                aVarBuilder.a(((l) immutableList.get(i11)).a().i());
            }
            this.f27778g = aVarBuilder.e();
            this.f27779h = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.f27772a.equals(hVar.f27772a) && com.google.android.exoplayer2.util.p0.c(this.f27773b, hVar.f27773b) && com.google.android.exoplayer2.util.p0.c(this.f27774c, hVar.f27774c) && com.google.android.exoplayer2.util.p0.c(null, null) && this.f27775d.equals(hVar.f27775d) && com.google.android.exoplayer2.util.p0.c(this.f27776e, hVar.f27776e) && this.f27777f.equals(hVar.f27777f) && com.google.android.exoplayer2.util.p0.c(this.f27779h, hVar.f27779h);
        }

        public int hashCode() {
            int iHashCode = this.f27772a.hashCode() * 31;
            String str = this.f27773b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.f27774c;
            int iHashCode3 = (((iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 961) + this.f27775d.hashCode()) * 31;
            String str2 = this.f27776e;
            int iHashCode4 = (((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f27777f.hashCode()) * 31;
            Object obj = this.f27779h;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }
    }

    public static final class i extends h {
        private i(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj) {
            super(uri, str, fVar, bVar, list, str2, immutableList, obj);
        }
    }

    public static final class j implements com.google.android.exoplayer2.k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final j f27780d = new a().d();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final com.google.android.exoplayer2.k.a f27781e = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.y1
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return v1.j.c(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f27782a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f27783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f27784c;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Uri f27785a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f27786b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private Bundle f27787c;

            public j d() {
                return new j(this);
            }

            public a e(Bundle bundle) {
                this.f27787c = bundle;
                return this;
            }

            public a f(Uri uri) {
                this.f27785a = uri;
                return this;
            }

            public a g(String str) {
                this.f27786b = str;
                return this;
            }
        }

        private j(a aVar) {
            this.f27782a = aVar.f27785a;
            this.f27783b = aVar.f27786b;
            this.f27784c = aVar.f27787c;
        }

        private static String b(int i11) {
            return Integer.toString(i11, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ j c(Bundle bundle) {
            return new a().f((Uri) bundle.getParcelable(b(0))).g(bundle.getString(b(1))).e(bundle.getBundle(b(2))).d();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return com.google.android.exoplayer2.util.p0.c(this.f27782a, jVar.f27782a) && com.google.android.exoplayer2.util.p0.c(this.f27783b, jVar.f27783b);
        }

        public int hashCode() {
            Uri uri = this.f27782a;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f27783b;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (this.f27782a != null) {
                bundle.putParcelable(b(0), this.f27782a);
            }
            if (this.f27783b != null) {
                bundle.putString(b(1), this.f27783b);
            }
            if (this.f27784c != null) {
                bundle.putBundle(b(2), this.f27784c);
            }
            return bundle;
        }
    }

    public static final class k extends l {
        private k(l.a aVar) {
            super(aVar);
        }
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f27788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f27789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f27790c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27791d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f27792e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f27793f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final String f27794g;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Uri f27795a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f27796b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private String f27797c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f27798d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f27799e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private String f27800f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private String f27801g;

            private a(l lVar) {
                this.f27795a = lVar.f27788a;
                this.f27796b = lVar.f27789b;
                this.f27797c = lVar.f27790c;
                this.f27798d = lVar.f27791d;
                this.f27799e = lVar.f27792e;
                this.f27800f = lVar.f27793f;
                this.f27801g = lVar.f27794g;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public k i() {
                return new k(this);
            }
        }

        private l(a aVar) {
            this.f27788a = aVar.f27795a;
            this.f27789b = aVar.f27796b;
            this.f27790c = aVar.f27797c;
            this.f27791d = aVar.f27798d;
            this.f27792e = aVar.f27799e;
            this.f27793f = aVar.f27800f;
            this.f27794g = aVar.f27801g;
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return this.f27788a.equals(lVar.f27788a) && com.google.android.exoplayer2.util.p0.c(this.f27789b, lVar.f27789b) && com.google.android.exoplayer2.util.p0.c(this.f27790c, lVar.f27790c) && this.f27791d == lVar.f27791d && this.f27792e == lVar.f27792e && com.google.android.exoplayer2.util.p0.c(this.f27793f, lVar.f27793f) && com.google.android.exoplayer2.util.p0.c(this.f27794g, lVar.f27794g);
        }

        public int hashCode() {
            int iHashCode = this.f27788a.hashCode() * 31;
            String str = this.f27789b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f27790c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f27791d) * 31) + this.f27792e) * 31;
            String str3 = this.f27793f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f27794g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }
    }

    private v1(String str, e eVar, i iVar, g gVar, a2 a2Var, j jVar) {
        this.f27708a = str;
        this.f27709b = iVar;
        this.f27710c = iVar;
        this.f27711d = gVar;
        this.f27712e = a2Var;
        this.f27713f = eVar;
        this.f27714g = eVar;
        this.f27715h = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static v1 c(Bundle bundle) {
        String str = (String) com.google.android.exoplayer2.util.a.e(bundle.getString(f(0), ""));
        Bundle bundle2 = bundle.getBundle(f(1));
        g gVar = bundle2 == null ? g.f27760f : (g) g.f27761g.a(bundle2);
        Bundle bundle3 = bundle.getBundle(f(2));
        a2 a2Var = bundle3 == null ? a2.G : (a2) a2.H.a(bundle3);
        Bundle bundle4 = bundle.getBundle(f(3));
        e eVar = bundle4 == null ? e.f27740h : (e) d.f27729g.a(bundle4);
        Bundle bundle5 = bundle.getBundle(f(4));
        return new v1(str, eVar, null, gVar, a2Var, bundle5 == null ? j.f27780d : (j) j.f27781e.a(bundle5));
    }

    public static v1 d(Uri uri) {
        return new c().i(uri).a();
    }

    public static v1 e(String str) {
        return new c().j(str).a();
    }

    private static String f(int i11) {
        return Integer.toString(i11, 36);
    }

    public c b() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v1)) {
            return false;
        }
        v1 v1Var = (v1) obj;
        return com.google.android.exoplayer2.util.p0.c(this.f27708a, v1Var.f27708a) && this.f27713f.equals(v1Var.f27713f) && com.google.android.exoplayer2.util.p0.c(this.f27709b, v1Var.f27709b) && com.google.android.exoplayer2.util.p0.c(this.f27711d, v1Var.f27711d) && com.google.android.exoplayer2.util.p0.c(this.f27712e, v1Var.f27712e) && com.google.android.exoplayer2.util.p0.c(this.f27715h, v1Var.f27715h);
    }

    public int hashCode() {
        int iHashCode = this.f27708a.hashCode() * 31;
        h hVar = this.f27709b;
        return ((((((((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.f27711d.hashCode()) * 31) + this.f27713f.hashCode()) * 31) + this.f27712e.hashCode()) * 31) + this.f27715h.hashCode();
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(f(0), this.f27708a);
        bundle.putBundle(f(1), this.f27711d.toBundle());
        bundle.putBundle(f(2), this.f27712e.toBundle());
        bundle.putBundle(f(3), this.f27713f.toBundle());
        bundle.putBundle(f(4), this.f27715h.toBundle());
        return bundle;
    }
}
