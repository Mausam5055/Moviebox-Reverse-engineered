package com.mbridge.msdk.thrid.okhttp.internal.cache;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.internal.http.d;
import com.mbridge.msdk.thrid.okhttp.internal.http.e;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f37922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y f37923b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f37924a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final w f37925b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final y f37926c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f37927d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f37928e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Date f37929f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f37930g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Date f37931h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f37932i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f37933j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f37934k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f37935l;

        public a(long j11, w wVar, y yVar) {
            this.f37935l = -1;
            this.f37924a = j11;
            this.f37925b = wVar;
            this.f37926c = yVar;
            if (yVar != null) {
                this.f37932i = yVar.s();
                this.f37933j = yVar.q();
                p pVarM = yVar.m();
                int iB = pVarM.b();
                for (int i11 = 0; i11 < iB; i11++) {
                    String strA = pVarM.a(i11);
                    String strB = pVarM.b(i11);
                    if (HttpHeaders.DATE.equalsIgnoreCase(strA)) {
                        this.f37927d = d.a(strB);
                        this.f37928e = strB;
                    } else if (HttpHeaders.EXPIRES.equalsIgnoreCase(strA)) {
                        this.f37931h = d.a(strB);
                    } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                        this.f37929f = d.a(strB);
                        this.f37930g = strB;
                    } else if ("ETag".equalsIgnoreCase(strA)) {
                        this.f37934k = strB;
                    } else if ("Age".equalsIgnoreCase(strA)) {
                        this.f37935l = e.a(strB, -1);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f37927d;
            long jMax = date != null ? Math.max(0L, this.f37933j - date.getTime()) : 0L;
            int i11 = this.f37935l;
            if (i11 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i11));
            }
            long j11 = this.f37933j;
            return jMax + (j11 - this.f37932i) + (this.f37924a - j11);
        }

        private static boolean a(w wVar) {
            return (wVar.a("If-Modified-Since") == null && wVar.a("If-None-Match") == null) ? false : true;
        }

        private long b() {
            com.mbridge.msdk.thrid.okhttp.c cVarH = this.f37926c.h();
            if (cVarH.d() != -1) {
                return TimeUnit.SECONDS.toMillis(cVarH.d());
            }
            if (this.f37931h != null) {
                Date date = this.f37927d;
                long time = this.f37931h.getTime() - (date != null ? date.getTime() : this.f37933j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f37929f == null || this.f37926c.r().g().k() != null) {
                return 0L;
            }
            Date date2 = this.f37927d;
            long time2 = (date2 != null ? date2.getTime() : this.f37932i) - this.f37929f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private b d() {
            String str;
            if (this.f37926c == null) {
                return new b(this.f37925b, null);
            }
            if ((!this.f37925b.d() || this.f37926c.l() != null) && b.a(this.f37926c, this.f37925b)) {
                com.mbridge.msdk.thrid.okhttp.c cVarB = this.f37925b.b();
                if (cVarB.h() || a(this.f37925b)) {
                    return new b(this.f37925b, null);
                }
                com.mbridge.msdk.thrid.okhttp.c cVarH = this.f37926c.h();
                long jA = a();
                long jB = b();
                if (cVarB.d() != -1) {
                    jB = Math.min(jB, TimeUnit.SECONDS.toMillis(cVarB.d()));
                }
                long millis = 0;
                long millis2 = cVarB.f() != -1 ? TimeUnit.SECONDS.toMillis(cVarB.f()) : 0L;
                if (!cVarH.g() && cVarB.e() != -1) {
                    millis = TimeUnit.SECONDS.toMillis(cVarB.e());
                }
                if (!cVarH.h()) {
                    long j11 = millis2 + jA;
                    if (j11 < millis + jB) {
                        y.a aVarO = this.f37926c.o();
                        if (j11 >= jB) {
                            aVarO.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (jA > 86400000 && e()) {
                            aVarO.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new b(null, aVarO.a());
                    }
                }
                String str2 = this.f37934k;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.f37929f != null) {
                        str2 = this.f37930g;
                    } else {
                        if (this.f37927d == null) {
                            return new b(this.f37925b, null);
                        }
                        str2 = this.f37928e;
                    }
                    str = "If-Modified-Since";
                }
                p.a aVarA = this.f37925b.c().a();
                com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVarA, str, str2);
                return new b(this.f37925b.f().a(aVarA.a()).a(), this.f37926c);
            }
            return new b(this.f37925b, null);
        }

        private boolean e() {
            return this.f37926c.h().d() == -1 && this.f37931h == null;
        }

        public b c() {
            b bVarD = d();
            return (bVarD.f37922a == null || !this.f37925b.b().j()) ? bVarD : new b(null, null);
        }
    }

    b(w wVar, y yVar) {
        this.f37922a = wVar;
        this.f37923b = yVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.h().b() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(y yVar, w wVar) {
        int iK = yVar.k();
        if (iK != 200 && iK != 410 && iK != 414 && iK != 501 && iK != 203 && iK != 204) {
            if (iK != 307) {
                if (iK != 308 && iK != 404 && iK != 405) {
                    switch (iK) {
                        case 300:
                        case MRAID_ERROR_VALUE:
                            break;
                        case INVALID_IFA_STATUS_VALUE:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (yVar.b(HttpHeaders.EXPIRES) == null) {
                if (yVar.h().d() == -1) {
                    if (!yVar.h().c()) {
                    }
                }
            }
        }
        return (yVar.h().i() || wVar.b().i()) ? false : true;
    }
}
