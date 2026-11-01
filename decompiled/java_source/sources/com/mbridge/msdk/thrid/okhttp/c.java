package com.mbridge.msdk.thrid.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final c f37775n = new a().b().a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final c f37776o = new a().c().a(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f37777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f37778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f37779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f37780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f37781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f37782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f37783g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f37784h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f37785i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f37786j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f37787k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f37788l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f37789m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f37790a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f37791b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f37792c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f37793d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f37794e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f37795f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f37796g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f37797h;

        public a a(int i11, TimeUnit timeUnit) {
            if (i11 >= 0) {
                long seconds = timeUnit.toSeconds(i11);
                this.f37793d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i11);
        }

        public c a() {
            return new c(this);
        }

        public a b() {
            this.f37790a = true;
            return this;
        }

        public a c() {
            this.f37795f = true;
            return this;
        }
    }

    c(a aVar) {
        this.f37777a = aVar.f37790a;
        this.f37778b = aVar.f37791b;
        this.f37779c = aVar.f37792c;
        this.f37780d = -1;
        this.f37781e = false;
        this.f37782f = false;
        this.f37783g = false;
        this.f37784h = aVar.f37793d;
        this.f37785i = aVar.f37794e;
        this.f37786j = aVar.f37795f;
        this.f37787k = aVar.f37796g;
        this.f37788l = aVar.f37797h;
    }

    private c(boolean z10, boolean z11, int i11, int i12, boolean z12, boolean z13, boolean z14, int i13, int i14, boolean z15, boolean z16, boolean z17, String str) {
        this.f37777a = z10;
        this.f37778b = z11;
        this.f37779c = i11;
        this.f37780d = i12;
        this.f37781e = z12;
        this.f37782f = z13;
        this.f37783g = z14;
        this.f37784h = i13;
        this.f37785i = i14;
        this.f37786j = z15;
        this.f37787k = z16;
        this.f37788l = z17;
        this.f37789m = str;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0041  */
    /* JADX WARN: Code duplicated, block: B:21:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:53:0x0109  */
    /* JADX WARN: Code duplicated, block: B:55:0x0111  */
    /* JADX WARN: Code duplicated, block: B:56:0x0119  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122  */
    /* JADX WARN: Code duplicated, block: B:59:0x0125  */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0130  */
    /* JADX WARN: Code duplicated, block: B:64:0x0138  */
    /* JADX WARN: Code duplicated, block: B:87:0x013a A[SYNTHETIC] */
    public static c a(p pVar) {
        int i11;
        int iA;
        String strTrim;
        int iA2;
        String strTrim2;
        int iB = pVar.b();
        boolean z10 = true;
        String str = null;
        boolean z11 = false;
        boolean z12 = false;
        int iA3 = -1;
        int iA4 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int iA5 = -1;
        int iA6 = -1;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        for (int i12 = 0; i12 < iB; i12++) {
            String strA = pVar.a(i12);
            String strB = pVar.b(i12);
            if (strA.equalsIgnoreCase(HttpHeaders.CACHE_CONTROL)) {
                if (str == null) {
                    str = strB;
                }
                for (i11 = 0; i11 < strB.length(); i11 = iA2) {
                    iA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, i11, "=,;");
                    strTrim = strB.substring(i11, iA).trim();
                    if (iA != strB.length() || strB.charAt(iA) == ',' || strB.charAt(iA) == ';') {
                        iA2 = iA + 1;
                        strTrim2 = null;
                    } else {
                        int iB2 = com.mbridge.msdk.thrid.okhttp.internal.http.e.b(strB, iA + 1);
                        if (iB2 >= strB.length() || strB.charAt(iB2) != '\"') {
                            iA2 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, iB2, ",;");
                            strTrim2 = strB.substring(iB2, iA2).trim();
                        } else {
                            int i13 = iB2 + 1;
                            int iA7 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, i13, "\"");
                            strTrim2 = strB.substring(i13, iA7);
                            iA2 = iA7 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(strTrim)) {
                        z11 = true;
                    } else if ("no-store".equalsIgnoreCase(strTrim)) {
                        z12 = true;
                    } else if ("max-age".equalsIgnoreCase(strTrim)) {
                        iA3 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                    } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                        iA4 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                    } else if ("private".equalsIgnoreCase(strTrim)) {
                        z13 = true;
                    } else if ("public".equalsIgnoreCase(strTrim)) {
                        z14 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                        z15 = true;
                    } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                        iA5 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                        iA6 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                        z16 = true;
                    } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                        z17 = true;
                    } else if ("immutable".equalsIgnoreCase(strTrim)) {
                        z18 = true;
                    }
                }
            } else {
                if (strA.equalsIgnoreCase("Pragma")) {
                }
            }
            z10 = false;
            while (i11 < strB.length()) {
                iA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, i11, "=,;");
                strTrim = strB.substring(i11, iA).trim();
                if (iA != strB.length()) {
                    iA2 = iA + 1;
                    strTrim2 = null;
                } else {
                    iA2 = iA + 1;
                    strTrim2 = null;
                }
                if ("no-cache".equalsIgnoreCase(strTrim)) {
                    z11 = true;
                } else if ("no-store".equalsIgnoreCase(strTrim)) {
                    z12 = true;
                } else if ("max-age".equalsIgnoreCase(strTrim)) {
                    iA3 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                    iA4 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                } else if ("private".equalsIgnoreCase(strTrim)) {
                    z13 = true;
                } else if ("public".equalsIgnoreCase(strTrim)) {
                    z14 = true;
                } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                    z15 = true;
                } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                    iA5 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, Integer.MAX_VALUE);
                } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                    iA6 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                    z16 = true;
                } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                    z17 = true;
                } else if ("immutable".equalsIgnoreCase(strTrim)) {
                    z18 = true;
                }
            }
        }
        return new c(z11, z12, iA3, iA4, z13, z14, z15, iA5, iA6, z16, z17, z18, !z10 ? null : str);
    }

    private String a() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f37777a) {
            sb2.append("no-cache, ");
        }
        if (this.f37778b) {
            sb2.append("no-store, ");
        }
        if (this.f37779c != -1) {
            sb2.append("max-age=");
            sb2.append(this.f37779c);
            sb2.append(", ");
        }
        if (this.f37780d != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.f37780d);
            sb2.append(", ");
        }
        if (this.f37781e) {
            sb2.append("private, ");
        }
        if (this.f37782f) {
            sb2.append("public, ");
        }
        if (this.f37783g) {
            sb2.append("must-revalidate, ");
        }
        if (this.f37784h != -1) {
            sb2.append("max-stale=");
            sb2.append(this.f37784h);
            sb2.append(", ");
        }
        if (this.f37785i != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f37785i);
            sb2.append(", ");
        }
        if (this.f37786j) {
            sb2.append("only-if-cached, ");
        }
        if (this.f37787k) {
            sb2.append("no-transform, ");
        }
        if (this.f37788l) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }

    public boolean b() {
        return this.f37781e;
    }

    public boolean c() {
        return this.f37782f;
    }

    public int d() {
        return this.f37779c;
    }

    public int e() {
        return this.f37784h;
    }

    public int f() {
        return this.f37785i;
    }

    public boolean g() {
        return this.f37783g;
    }

    public boolean h() {
        return this.f37777a;
    }

    public boolean i() {
        return this.f37778b;
    }

    public boolean j() {
        return this.f37786j;
    }

    public String toString() {
        String str = this.f37789m;
        if (str != null) {
            return str;
        }
        String strA = a();
        this.f37789m = strA;
        return strA;
    }
}
