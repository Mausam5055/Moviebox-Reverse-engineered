package bi;

import androidx.collection.s;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public final class e {
    public static final a J = new a(null);
    private int A;
    private String B;
    private String C;
    private String D;
    private String E;
    private int F;
    private String G;
    private String H;
    private int I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f16478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f16479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f16480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f16482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f16483f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f16484g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f16485h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f16486i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f16487j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f16488k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f16489l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f16490m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f16491n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f16492o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f16493p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f16494q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f16495r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f16496s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f16497t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f16498u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f16499v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f16500w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f16501x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f16502y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f16503z;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(int i11, String str) {
            e eVar = new e(0, null, 0, 0, null, null, null, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, null, null, null, null, null, 0, null, null, null, null, 0, null, null, 0, -1, 7, null);
            eVar.l0(i11);
            eVar.N(str);
            return eVar;
        }
    }

    public e() {
        this(0, null, 0, 0, null, null, null, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, null, null, null, null, null, 0, null, null, null, null, 0, null, null, 0, -1, 7, null);
    }

    public e(int i11, String callId, int i12, int i13, String errorMsg, String serverApi, String str, String ipAddr, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, String cdnSpeed, String cdnIp, String cdnProvider, String country, String path, String host, int i14, String str2, String sdkVersion, String protocol, String compareTag, int i15, String contentEncoding, String tlsVersion, int i16) {
        Intrinsics.h(callId, "callId");
        Intrinsics.h(errorMsg, "errorMsg");
        Intrinsics.h(serverApi, "serverApi");
        Intrinsics.h(ipAddr, "ipAddr");
        Intrinsics.h(cdnSpeed, "cdnSpeed");
        Intrinsics.h(cdnIp, "cdnIp");
        Intrinsics.h(cdnProvider, "cdnProvider");
        Intrinsics.h(country, "country");
        Intrinsics.h(path, "path");
        Intrinsics.h(host, "host");
        Intrinsics.h(sdkVersion, "sdkVersion");
        Intrinsics.h(protocol, "protocol");
        Intrinsics.h(compareTag, "compareTag");
        Intrinsics.h(contentEncoding, "contentEncoding");
        Intrinsics.h(tlsVersion, "tlsVersion");
        this.f16478a = i11;
        this.f16479b = callId;
        this.f16480c = i12;
        this.f16481d = i13;
        this.f16482e = errorMsg;
        this.f16483f = serverApi;
        this.f16484g = str;
        this.f16485h = ipAddr;
        this.f16486i = j11;
        this.f16487j = j12;
        this.f16488k = j13;
        this.f16489l = j14;
        this.f16490m = j15;
        this.f16491n = j16;
        this.f16492o = j17;
        this.f16493p = j18;
        this.f16494q = j19;
        this.f16495r = j20;
        this.f16496s = j21;
        this.f16497t = j22;
        this.f16498u = cdnSpeed;
        this.f16499v = cdnIp;
        this.f16500w = cdnProvider;
        this.f16501x = country;
        this.f16502y = path;
        this.f16503z = host;
        this.A = i14;
        this.B = str2;
        this.C = sdkVersion;
        this.D = protocol;
        this.E = compareTag;
        this.F = i15;
        this.G = contentEncoding;
        this.H = tlsVersion;
        this.I = i16;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ e(int i11, String str, int i12, int i13, String str2, String str3, String str4, String str5, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, String str6, String str7, String str8, String str9, String str10, String str11, int i14, String str12, String str13, String str14, String str15, int i15, String str16, String str17, int i16, int i17, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        String strReplace;
        String strA;
        int i19 = (i17 & 1) != 0 ? 0 : i11;
        if ((i17 & 2) != 0) {
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            strReplace = new Regex("-").replace(string, "");
        } else {
            strReplace = str;
        }
        int i20 = (i17 & 4) != 0 ? 0 : i12;
        int i21 = (i17 & 8) != 0 ? 0 : i13;
        String str18 = (i17 & 16) != 0 ? "" : str2;
        String str19 = (i17 & 32) != 0 ? "" : str3;
        String str20 = (i17 & 64) != 0 ? null : str4;
        String str21 = (i17 & 128) != 0 ? "" : str5;
        long j23 = (i17 & 256) != 0 ? 0L : j11;
        long j24 = (i17 & 512) != 0 ? 0L : j12;
        long j25 = (i17 & 1024) != 0 ? 0L : j13;
        long j26 = (i17 & 2048) != 0 ? 0L : j14;
        long j27 = (i17 & 4096) != 0 ? 0L : j15;
        long j28 = (i17 & 8192) != 0 ? 0L : j16;
        long j29 = (i17 & 16384) != 0 ? 0L : j17;
        long j30 = (32768 & i17) != 0 ? 0L : j18;
        long j31 = (65536 & i17) != 0 ? 0L : j19;
        long j32 = (131072 & i17) != 0 ? 0L : j20;
        long j33 = (262144 & i17) != 0 ? 0L : j21;
        long j34 = (524288 & i17) == 0 ? j22 : 0L;
        String str22 = (1048576 & i17) != 0 ? "" : str6;
        String str23 = (i17 & 2097152) != 0 ? "" : str7;
        String str24 = (i17 & 4194304) != 0 ? "" : str8;
        if ((i17 & 8388608) != 0) {
            strA = o.a();
            Intrinsics.g(strA, "getCountry()");
        } else {
            strA = str9;
        }
        this(i19, strReplace, i20, i21, str18, str19, str20, str21, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, str22, str23, str24, strA, (16777216 & i17) != 0 ? "" : str10, (i17 & ASTNode.PCTX_STORED) != 0 ? r4 : str11, (i17 & 67108864) != 0 ? 0 : i14, (i17 & ASTNode.NOJIT) != 0 ? "All" : str12, (i17 & ASTNode.DEOP) != 0 ? "1.0.17.1" : str13, (i17 & ASTNode.DISCARD) != 0 ? r4 : str14, (i17 & 1073741824) != 0 ? r4 : str15, (i17 & Integer.MIN_VALUE) != 0 ? 1 : i15, (i18 & 1) != 0 ? r4 : str16, (i18 & 2) != 0 ? r4 : str17, (i18 & 4) != 0 ? 0 : i16);
    }

    public final long A() {
        return this.f16489l;
    }

    public final String B() {
        return this.f16483f;
    }

    public final long C() {
        return this.f16495r;
    }

    public final long D() {
        return this.f16488k;
    }

    public final long E() {
        return this.f16487j;
    }

    public final String F() {
        return this.H;
    }

    public final int G() {
        return this.f16478a;
    }

    public final long H() {
        return this.f16490m;
    }

    public final void I(int i11) {
        this.f16480c = i11;
    }

    public final void J(long j11) {
        this.f16497t = j11;
    }

    public final void K(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16500w = str;
    }

    public final void L(long j11) {
        this.f16496s = j11;
    }

    public final void M(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16498u = str;
    }

    public final void N(String str) {
        this.B = str;
    }

    public final void O(String str) {
        Intrinsics.h(str, "<set-?>");
        this.E = str;
    }

    public final void P(String str) {
        this.f16484g = str;
    }

    public final void Q(String str) {
        Intrinsics.h(str, "<set-?>");
        this.G = str;
    }

    public final void R(long j11) {
        this.f16486i = j11;
    }

    public final void S(int i11) {
        this.f16481d = i11;
    }

    public final void T(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16482e = str;
    }

    public final void U(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16503z = str;
    }

    public final void V(int i11) {
        this.F = i11;
    }

    public final void W(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16485h = str;
    }

    public final void X(int i11) {
        this.A = i11;
    }

    public final void Y(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16502y = str;
    }

    public final void Z(String str) {
        Intrinsics.h(str, "<set-?>");
        this.D = str;
    }

    public final String a() {
        return this.f16479b;
    }

    public final void a0(long j11) {
        this.f16491n = j11;
    }

    public final int b() {
        return this.f16480c;
    }

    public final void b0(long j11) {
        this.f16493p = j11;
    }

    public final long c() {
        return this.f16497t;
    }

    public final void c0(long j11) {
        this.f16492o = j11;
    }

    public final String d() {
        return this.f16500w;
    }

    public final void d0(int i11) {
        this.I = i11;
    }

    public final long e() {
        return this.f16496s;
    }

    public final void e0(long j11) {
        this.f16494q = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f16478a == eVar.f16478a && Intrinsics.c(this.f16479b, eVar.f16479b) && this.f16480c == eVar.f16480c && this.f16481d == eVar.f16481d && Intrinsics.c(this.f16482e, eVar.f16482e) && Intrinsics.c(this.f16483f, eVar.f16483f) && Intrinsics.c(this.f16484g, eVar.f16484g) && Intrinsics.c(this.f16485h, eVar.f16485h) && this.f16486i == eVar.f16486i && this.f16487j == eVar.f16487j && this.f16488k == eVar.f16488k && this.f16489l == eVar.f16489l && this.f16490m == eVar.f16490m && this.f16491n == eVar.f16491n && this.f16492o == eVar.f16492o && this.f16493p == eVar.f16493p && this.f16494q == eVar.f16494q && this.f16495r == eVar.f16495r && this.f16496s == eVar.f16496s && this.f16497t == eVar.f16497t && Intrinsics.c(this.f16498u, eVar.f16498u) && Intrinsics.c(this.f16499v, eVar.f16499v) && Intrinsics.c(this.f16500w, eVar.f16500w) && Intrinsics.c(this.f16501x, eVar.f16501x) && Intrinsics.c(this.f16502y, eVar.f16502y) && Intrinsics.c(this.f16503z, eVar.f16503z) && this.A == eVar.A && Intrinsics.c(this.B, eVar.B) && Intrinsics.c(this.C, eVar.C) && Intrinsics.c(this.D, eVar.D) && Intrinsics.c(this.E, eVar.E) && this.F == eVar.F && Intrinsics.c(this.G, eVar.G) && Intrinsics.c(this.H, eVar.H) && this.I == eVar.I;
    }

    public final String f() {
        return this.f16498u;
    }

    public final void f0(long j11) {
        this.f16489l = j11;
    }

    public final String g() {
        return this.B;
    }

    public final void g0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f16483f = str;
    }

    public final String h() {
        return this.E;
    }

    public final void h0(long j11) {
        this.f16495r = j11;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.f16478a * 31) + this.f16479b.hashCode()) * 31) + this.f16480c) * 31) + this.f16481d) * 31) + this.f16482e.hashCode()) * 31) + this.f16483f.hashCode()) * 31;
        String str = this.f16484g;
        int iHashCode2 = (((((((((((((((((((((((((((((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f16485h.hashCode()) * 31) + s.a(this.f16486i)) * 31) + s.a(this.f16487j)) * 31) + s.a(this.f16488k)) * 31) + s.a(this.f16489l)) * 31) + s.a(this.f16490m)) * 31) + s.a(this.f16491n)) * 31) + s.a(this.f16492o)) * 31) + s.a(this.f16493p)) * 31) + s.a(this.f16494q)) * 31) + s.a(this.f16495r)) * 31) + s.a(this.f16496s)) * 31) + s.a(this.f16497t)) * 31) + this.f16498u.hashCode()) * 31) + this.f16499v.hashCode()) * 31) + this.f16500w.hashCode()) * 31) + this.f16501x.hashCode()) * 31) + this.f16502y.hashCode()) * 31) + this.f16503z.hashCode()) * 31) + this.A) * 31;
        String str2 = this.B;
        return ((((((((((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.C.hashCode()) * 31) + this.D.hashCode()) * 31) + this.E.hashCode()) * 31) + this.F) * 31) + this.G.hashCode()) * 31) + this.H.hashCode()) * 31) + this.I;
    }

    public final String i() {
        return this.f16484g;
    }

    public final void i0(long j11) {
        this.f16488k = j11;
    }

    public final String j() {
        return this.G;
    }

    public final void j0(long j11) {
        this.f16487j = j11;
    }

    public final String k() {
        return this.f16501x;
    }

    public final void k0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.H = str;
    }

    public final long l() {
        return this.f16486i;
    }

    public final void l0(int i11) {
        this.f16478a = i11;
    }

    public final int m() {
        return this.f16481d;
    }

    public final void m0(long j11) {
        this.f16490m = j11;
    }

    public final String n() {
        return this.f16482e;
    }

    public final String o() {
        return this.f16503z;
    }

    public final int p() {
        return this.F;
    }

    public final String q() {
        return this.f16485h;
    }

    public final int r() {
        return this.A;
    }

    public final String s() {
        return this.f16502y;
    }

    public final String t() {
        return this.D;
    }

    public String toString() {
        return "{\n                    usage            : " + this.f16478a + "\n                    call_id          : " + this.f16479b + "\n                    call_result_code : " + this.f16480c + "\n                    server_api       : " + this.f16483f + "\n                    complete_api     : " + this.f16484g + "\n                    ip_address       : " + this.f16485h + "\n                    error_code       : " + this.f16481d + "\n                    error_msg        : " + this.f16482e + "\n                    req_time         : " + this.f16492o + "ms\n                    dns_time         : " + this.f16486i + "ms\n                    tcp_time         : " + this.f16487j + "ms\n                    ssl_time         : " + this.f16488k + "ms\n                    send_time        : " + this.f16489l + "ms\n                    wait_time        : " + this.f16490m + "ms\n                    rec_time         : " + this.f16491n + "ms\n                    req_body_size    : " + this.f16493p + "b\n                    res_body_size    : " + this.f16494q + "b\n                    server_time      : " + this.f16495r + "ms\n                    cdn_req_time     : " + this.f16496s + "ms\n                    cdn_down_time    : " + this.f16497t + "ms\n                    cdn_speed        : " + this.f16498u + "kb/s\n                    cdn_provider     : " + this.f16500w + "\n                    country          : " + this.f16501x + "\n                    path             : " + this.f16502y + "\n                    host             : " + this.f16503z + "\n                    channel          : " + this.B + "\n                    sdk_version      : " + this.C + "\n                    protocol         : " + this.D + "\n                    compare_tag      : " + this.E + "\n                    http_type        : " + this.F + "\n                    content_encoding : " + this.G + "\n                    tls_version      : " + this.H + "\n                    request_downgrade : " + this.I + "\n                  }";
    }

    public final long u() {
        return this.f16491n;
    }

    public final long v() {
        return this.f16493p;
    }

    public final long w() {
        return this.f16492o;
    }

    public final int x() {
        return this.I;
    }

    public final long y() {
        return this.f16494q;
    }

    public final String z() {
        return this.C;
    }
}
