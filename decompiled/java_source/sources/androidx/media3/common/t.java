package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final t f10203i = new c().a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f10204j = a1.C0(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f10205k = a1.C0(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f10206l = a1.C0(2);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f10207m = a1.C0(3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f10208n = a1.C0(4);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f10209o = a1.C0(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f10211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f10212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f10213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v f10214e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d f10215f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e f10216g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f10217h;

    public static final class b {
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Uri f10219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f10220c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d.a f10221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private f.a f10222e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f10223f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f10224g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ImmutableList f10225h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Object f10226i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f10227j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private v f10228k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private g.a f10229l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private i f10230m;

        public c() {
            this.f10221d = new d.a();
            this.f10222e = new f.a();
            this.f10223f = Collections.emptyList();
            this.f10225h = ImmutableList.of();
            this.f10229l = new g.a();
            this.f10230m = i.f10312d;
            this.f10227j = C.TIME_UNSET;
        }

        private c(t tVar) {
            this();
            this.f10221d = tVar.f10215f.a();
            this.f10218a = tVar.f10210a;
            this.f10228k = tVar.f10214e;
            this.f10229l = tVar.f10213d.a();
            this.f10230m = tVar.f10217h;
            h hVar = tVar.f10211b;
            if (hVar != null) {
                this.f10224g = hVar.f10307e;
                this.f10220c = hVar.f10304b;
                this.f10219b = hVar.f10303a;
                this.f10223f = hVar.f10306d;
                this.f10225h = hVar.f10308f;
                this.f10226i = hVar.f10310h;
                f fVar = hVar.f10305c;
                this.f10222e = fVar != null ? fVar.b() : new f.a();
                this.f10227j = hVar.f10311i;
            }
        }

        public t a() {
            h hVar;
            androidx.media3.common.util.a.g(this.f10222e.f10272b == null || this.f10222e.f10271a != null);
            Uri uri = this.f10219b;
            if (uri != null) {
                hVar = new h(uri, this.f10220c, this.f10222e.f10271a != null ? this.f10222e.i() : null, null, this.f10223f, this.f10224g, this.f10225h, this.f10226i, this.f10227j);
            } else {
                hVar = null;
            }
            String str = this.f10218a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e eVarG = this.f10221d.g();
            g gVarF = this.f10229l.f();
            v vVar = this.f10228k;
            if (vVar == null) {
                vVar = v.I;
            }
            return new t(str2, eVarG, hVar, gVarF, vVar, this.f10230m);
        }

        public c b(String str) {
            this.f10224g = str;
            return this;
        }

        public c c(g gVar) {
            this.f10229l = gVar.a();
            return this;
        }

        public c d(String str) {
            this.f10218a = (String) androidx.media3.common.util.a.e(str);
            return this;
        }

        public c e(String str) {
            this.f10220c = str;
            return this;
        }

        public c f(List list) {
            this.f10223f = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public c g(List list) {
            this.f10225h = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public c h(Object obj) {
            this.f10226i = obj;
            return this;
        }

        public c i(Uri uri) {
            this.f10219b = uri;
            return this;
        }

        public c j(String str) {
            return i(str == null ? null : Uri.parse(str));
        }
    }

    public static class d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f10231h = new a().f();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f10232i = a1.C0(0);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f10233j = a1.C0(1);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f10234k = a1.C0(2);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f10235l = a1.C0(3);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String f10236m = a1.C0(4);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        static final String f10237n = a1.C0(5);

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        static final String f10238o = a1.C0(6);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f10239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10240b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f10241c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f10242d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f10243e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f10244f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f10245g;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f10246a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f10247b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private boolean f10248c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f10249d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f10250e;

            public a() {
                this.f10247b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f10246a = dVar.f10240b;
                this.f10247b = dVar.f10242d;
                this.f10248c = dVar.f10243e;
                this.f10249d = dVar.f10244f;
                this.f10250e = dVar.f10245g;
            }

            public d f() {
                return new d(this);
            }

            public e g() {
                return new e(this);
            }
        }

        private d(a aVar) {
            this.f10239a = a1.y1(aVar.f10246a);
            this.f10241c = a1.y1(aVar.f10247b);
            this.f10240b = aVar.f10246a;
            this.f10242d = aVar.f10247b;
            this.f10243e = aVar.f10248c;
            this.f10244f = aVar.f10249d;
            this.f10245g = aVar.f10250e;
        }

        public a a() {
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
            return this.f10240b == dVar.f10240b && this.f10242d == dVar.f10242d && this.f10243e == dVar.f10243e && this.f10244f == dVar.f10244f && this.f10245g == dVar.f10245g;
        }

        public int hashCode() {
            long j11 = this.f10240b;
            int i11 = ((int) (j11 ^ (j11 >>> 32))) * 31;
            long j12 = this.f10242d;
            return ((((((i11 + ((int) ((j12 >>> 32) ^ j12))) * 31) + (this.f10243e ? 1 : 0)) * 31) + (this.f10244f ? 1 : 0)) * 31) + (this.f10245g ? 1 : 0);
        }
    }

    public static final class e extends d {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final e f10251p = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    public static final class f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f10252l = a1.C0(0);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String f10253m = a1.C0(1);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final String f10254n = a1.C0(2);

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final String f10255o = a1.C0(3);

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        static final String f10256p = a1.C0(4);

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final String f10257q = a1.C0(5);

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final String f10258r = a1.C0(6);

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static final String f10259s = a1.C0(7);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f10260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UUID f10261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f10262c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImmutableMap f10263d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImmutableMap f10264e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f10265f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f10266g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f10267h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ImmutableList f10268i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ImmutableList f10269j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final byte[] f10270k;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private UUID f10271a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Uri f10272b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private ImmutableMap f10273c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f10274d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f10275e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private boolean f10276f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private ImmutableList f10277g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private byte[] f10278h;

            private a() {
                this.f10273c = ImmutableMap.of();
                this.f10275e = true;
                this.f10277g = ImmutableList.of();
            }

            private a(f fVar) {
                this.f10271a = fVar.f10260a;
                this.f10272b = fVar.f10262c;
                this.f10273c = fVar.f10264e;
                this.f10274d = fVar.f10265f;
                this.f10275e = fVar.f10266g;
                this.f10276f = fVar.f10267h;
                this.f10277g = fVar.f10269j;
                this.f10278h = fVar.f10270k;
            }

            public f i() {
                return new f(this);
            }
        }

        private f(a aVar) {
            androidx.media3.common.util.a.g((aVar.f10276f && aVar.f10272b == null) ? false : true);
            UUID uuid = (UUID) androidx.media3.common.util.a.e(aVar.f10271a);
            this.f10260a = uuid;
            this.f10261b = uuid;
            this.f10262c = aVar.f10272b;
            this.f10263d = aVar.f10273c;
            this.f10264e = aVar.f10273c;
            this.f10265f = aVar.f10274d;
            this.f10267h = aVar.f10276f;
            this.f10266g = aVar.f10275e;
            this.f10268i = aVar.f10277g;
            this.f10269j = aVar.f10277g;
            this.f10270k = aVar.f10278h != null ? Arrays.copyOf(aVar.f10278h, aVar.f10278h.length) : null;
        }

        public a b() {
            return new a();
        }

        public byte[] c() {
            byte[] bArr = this.f10270k;
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
            return this.f10260a.equals(fVar.f10260a) && Objects.equals(this.f10262c, fVar.f10262c) && Objects.equals(this.f10264e, fVar.f10264e) && this.f10265f == fVar.f10265f && this.f10267h == fVar.f10267h && this.f10266g == fVar.f10266g && this.f10269j.equals(fVar.f10269j) && Arrays.equals(this.f10270k, fVar.f10270k);
        }

        public int hashCode() {
            int iHashCode = this.f10260a.hashCode() * 31;
            Uri uri = this.f10262c;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f10264e.hashCode()) * 31) + (this.f10265f ? 1 : 0)) * 31) + (this.f10267h ? 1 : 0)) * 31) + (this.f10266g ? 1 : 0)) * 31) + this.f10269j.hashCode()) * 31) + Arrays.hashCode(this.f10270k);
        }
    }

    public static final class g {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final g f10279f = new a().f();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final String f10280g = a1.C0(0);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final String f10281h = a1.C0(1);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f10282i = a1.C0(2);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f10283j = a1.C0(3);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f10284k = a1.C0(4);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f10285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f10287c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float f10288d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f10289e;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f10290a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f10291b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private long f10292c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private float f10293d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private float f10294e;

            public a() {
                this.f10290a = C.TIME_UNSET;
                this.f10291b = C.TIME_UNSET;
                this.f10292c = C.TIME_UNSET;
                this.f10293d = -3.4028235E38f;
                this.f10294e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f10290a = gVar.f10285a;
                this.f10291b = gVar.f10286b;
                this.f10292c = gVar.f10287c;
                this.f10293d = gVar.f10288d;
                this.f10294e = gVar.f10289e;
            }

            public g f() {
                return new g(this);
            }

            public a g(long j11) {
                this.f10292c = j11;
                return this;
            }

            public a h(float f11) {
                this.f10294e = f11;
                return this;
            }

            public a i(long j11) {
                this.f10291b = j11;
                return this;
            }

            public a j(float f11) {
                this.f10293d = f11;
                return this;
            }

            public a k(long j11) {
                this.f10290a = j11;
                return this;
            }
        }

        public g(long j11, long j12, long j13, float f11, float f12) {
            this.f10285a = j11;
            this.f10286b = j12;
            this.f10287c = j13;
            this.f10288d = f11;
            this.f10289e = f12;
        }

        private g(a aVar) {
            this(aVar.f10290a, aVar.f10291b, aVar.f10292c, aVar.f10293d, aVar.f10294e);
        }

        public a a() {
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
            return this.f10285a == gVar.f10285a && this.f10286b == gVar.f10286b && this.f10287c == gVar.f10287c && this.f10288d == gVar.f10288d && this.f10289e == gVar.f10289e;
        }

        public int hashCode() {
            long j11 = this.f10285a;
            long j12 = this.f10286b;
            int i11 = ((((int) (j11 ^ (j11 >>> 32))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.f10287c;
            int i12 = (i11 + ((int) ((j13 >>> 32) ^ j13))) * 31;
            float f11 = this.f10288d;
            int iFloatToIntBits = (i12 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31;
            float f12 = this.f10289e;
            return iFloatToIntBits + (f12 != 0.0f ? Float.floatToIntBits(f12) : 0);
        }
    }

    public static final class h {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f10295j = a1.C0(0);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f10296k = a1.C0(1);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f10297l = a1.C0(2);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String f10298m = a1.C0(3);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final String f10299n = a1.C0(4);

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final String f10300o = a1.C0(5);

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final String f10301p = a1.C0(6);

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final String f10302q = a1.C0(7);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f10303a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f10304b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f f10305c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f10306d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f10307e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ImmutableList f10308f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final List f10309g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Object f10310h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f10311i;

        /* JADX WARN: Multi-variable type inference failed */
        private h(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj, long j11) {
            this.f10303a = uri;
            this.f10304b = y.u(str);
            this.f10305c = fVar;
            this.f10306d = list;
            this.f10307e = str2;
            this.f10308f = immutableList;
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                aVarBuilder.a(((k) immutableList.get(i11)).a().i());
            }
            this.f10309g = aVarBuilder.e();
            this.f10310h = obj;
            this.f10311i = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.f10303a.equals(hVar.f10303a) && Objects.equals(this.f10304b, hVar.f10304b) && Objects.equals(this.f10305c, hVar.f10305c) && this.f10306d.equals(hVar.f10306d) && Objects.equals(this.f10307e, hVar.f10307e) && this.f10308f.equals(hVar.f10308f) && Objects.equals(this.f10310h, hVar.f10310h) && this.f10311i == hVar.f10311i;
        }

        public int hashCode() {
            int iHashCode = this.f10303a.hashCode() * 31;
            String str = this.f10304b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.f10305c;
            int iHashCode3 = (((iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 961) + this.f10306d.hashCode()) * 31;
            String str2 = this.f10307e;
            int iHashCode4 = (((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f10308f.hashCode()) * 31;
            Object obj = this.f10310h;
            return (int) ((((long) (iHashCode4 + (obj != null ? obj.hashCode() : 0))) * 31) + this.f10311i);
        }
    }

    public static final class i {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final i f10312d = new a().d();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final String f10313e = a1.C0(0);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final String f10314f = a1.C0(1);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final String f10315g = a1.C0(2);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f10316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f10317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f10318c;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Uri f10319a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f10320b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private Bundle f10321c;

            public i d() {
                return new i(this);
            }
        }

        private i(a aVar) {
            this.f10316a = aVar.f10319a;
            this.f10317b = aVar.f10320b;
            this.f10318c = aVar.f10321c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (Objects.equals(this.f10316a, iVar.f10316a) && Objects.equals(this.f10317b, iVar.f10317b)) {
                if ((this.f10318c == null) == (iVar.f10318c == null)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            Uri uri = this.f10316a;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f10317b;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + (this.f10318c != null ? 1 : 0);
        }
    }

    public static final class j extends k {
        private j(k.a aVar) {
            super(aVar);
        }
    }

    public static class k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final String f10322h = a1.C0(0);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f10323i = a1.C0(1);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f10324j = a1.C0(2);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f10325k = a1.C0(3);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f10326l = a1.C0(4);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String f10327m = a1.C0(5);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final String f10328n = a1.C0(6);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f10329a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f10330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f10331c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10332d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10333e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f10334f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final String f10335g;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Uri f10336a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f10337b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private String f10338c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f10339d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f10340e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private String f10341f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private String f10342g;

            private a(k kVar) {
                this.f10336a = kVar.f10329a;
                this.f10337b = kVar.f10330b;
                this.f10338c = kVar.f10331c;
                this.f10339d = kVar.f10332d;
                this.f10340e = kVar.f10333e;
                this.f10341f = kVar.f10334f;
                this.f10342g = kVar.f10335g;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public j i() {
                return new j(this);
            }
        }

        private k(a aVar) {
            this.f10329a = aVar.f10336a;
            this.f10330b = aVar.f10337b;
            this.f10331c = aVar.f10338c;
            this.f10332d = aVar.f10339d;
            this.f10333e = aVar.f10340e;
            this.f10334f = aVar.f10341f;
            this.f10335g = aVar.f10342g;
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return this.f10329a.equals(kVar.f10329a) && Objects.equals(this.f10330b, kVar.f10330b) && Objects.equals(this.f10331c, kVar.f10331c) && this.f10332d == kVar.f10332d && this.f10333e == kVar.f10333e && Objects.equals(this.f10334f, kVar.f10334f) && Objects.equals(this.f10335g, kVar.f10335g);
        }

        public int hashCode() {
            int iHashCode = this.f10329a.hashCode() * 31;
            String str = this.f10330b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f10331c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f10332d) * 31) + this.f10333e) * 31;
            String str3 = this.f10334f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f10335g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }
    }

    private t(String str, e eVar, h hVar, g gVar, v vVar, i iVar) {
        this.f10210a = str;
        this.f10211b = hVar;
        this.f10212c = hVar;
        this.f10213d = gVar;
        this.f10214e = vVar;
        this.f10215f = eVar;
        this.f10216g = eVar;
        this.f10217h = iVar;
    }

    public static t b(String str) {
        return new c().j(str).a();
    }

    public c a() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return Objects.equals(this.f10210a, tVar.f10210a) && this.f10215f.equals(tVar.f10215f) && Objects.equals(this.f10211b, tVar.f10211b) && Objects.equals(this.f10213d, tVar.f10213d) && Objects.equals(this.f10214e, tVar.f10214e) && Objects.equals(this.f10217h, tVar.f10217h);
    }

    public int hashCode() {
        int iHashCode = this.f10210a.hashCode() * 31;
        h hVar = this.f10211b;
        return ((((((((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.f10213d.hashCode()) * 31) + this.f10215f.hashCode()) * 31) + this.f10214e.hashCode()) * 31) + this.f10217h.hashCode();
    }
}
