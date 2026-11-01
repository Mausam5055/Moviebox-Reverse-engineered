package com.mbridge.msdk.tracker.network;

import android.os.SystemClock;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.push.PushConstants;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class p {
    private volatile long A;
    private volatile long B;
    private volatile long C;
    private volatile long D;
    private volatile long E;
    private volatile long F;
    private volatile long G;
    private volatile long H;
    private volatile List<InetAddress> I;
    private volatile InetSocketAddress J;
    private volatile Proxy K;
    private volatile com.mbridge.msdk.thrid.okhttp.o L;
    private volatile com.mbridge.msdk.thrid.okhttp.u M;
    private volatile IOException N;
    private volatile Exception P;
    private long R;
    private long S;
    private long T;
    private long U;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile String f38592d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile long f38594f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile String f38598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile String f38599k;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile long f38607s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile long f38608t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile IOException f38609u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private volatile long f38610v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private volatile long f38611w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private volatile long f38613y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private volatile long f38614z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile String f38589a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile String f38590b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile String f38591c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile String f38593e = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile int f38595g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile String f38596h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile int f38597i = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile String f38600l = "okhttp";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile boolean f38601m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AtomicInteger f38602n = new AtomicInteger(0);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile String f38603o = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile long f38604p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile long f38605q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile long f38606r = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private volatile String f38612x = "system";
    private volatile boolean O = false;
    private volatile boolean Q = false;

    public p(String str, String str2) {
        this.f38592d = "";
        this.f38598j = "un_known";
        this.f38599k = "";
        this.f38598j = str;
        this.f38599k = str2;
        this.f38592d = UUID.randomUUID().toString();
    }

    private void P() {
        try {
            JSONObject jSONObjectX = x();
            com.mbridge.msdk.tracker.e eVarA = a(jSONObjectX, "m_request_end");
            if (MBridgeConstans.DEBUG) {
                o0.a("NetworkMonitor_" + H(), "request  end  monitor = " + jSONObjectX.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().d().d(eVarA);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NetworkMonitor", "reportRequestEnd ", th2);
            }
        }
    }

    private void Q() {
        try {
            JSONObject jSONObjectZ = z();
            com.mbridge.msdk.tracker.e eVarA = a(jSONObjectZ, "m_request_start");
            if (MBridgeConstans.DEBUG) {
                o0.a("NetworkMonitor_" + H(), "request start monitor = " + jSONObjectZ.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().d().d(eVarA);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NetworkMonitor", "reportRequestStart ", th2);
            }
        }
    }

    private void T() {
        this.N = null;
        this.f38609u = null;
        this.P = null;
        this.f38607s = 0L;
        this.f38608t = 0L;
        this.f38610v = 0L;
        this.f38611w = 0L;
        this.f38613y = 0L;
        this.f38614z = 0L;
        this.A = 0L;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.F = 0L;
        this.G = 0L;
        this.H = 0L;
        this.f38605q = 0L;
        this.f38606r = 0L;
        this.f38601m = false;
        this.f38595g = -1;
        this.f38597i = -1;
        this.f38596h = "";
        this.f38603o = "";
        this.f38604p = 0L;
        this.Q = false;
    }

    private static com.mbridge.msdk.tracker.e a(JSONObject jSONObject, String str) {
        com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(str);
        eVar.a(0);
        eVar.b(0);
        eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
        eVar.a(jSONObject);
        return eVar;
    }

    private static String a(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str2 = "IOException";
        }
        sb2.append(String.format(str, str2));
        sb2.append(TextUtils.isEmpty(str3) ? "" : str3.replaceAll("[\\n\\r]", " "));
        return sb2.toString();
    }

    private void a(IOException iOException, long j11) {
        if (iOException != null) {
            if (this.f38610v == 0) {
                this.f38610v = j11;
            }
            if (this.f38611w == 0) {
                this.f38611w = j11;
            }
            if (this.f38613y == 0) {
                this.f38613y = j11;
            }
            if (this.f38614z == 0) {
                this.f38614z = j11;
            }
            if (this.A == 0) {
                this.A = j11;
            }
            if (this.B == 0) {
                this.B = j11;
            }
            if (this.C == 0) {
                this.C = j11;
            }
            if (this.D == 0) {
                this.D = j11;
            }
            if (this.E == 0) {
                this.E = j11;
            }
            if (this.F == 0) {
                this.F = j11;
            }
            if (this.G == 0) {
                this.G = j11;
            }
            if (this.H == 0) {
                this.H = j11;
            }
        }
    }

    private JSONObject x() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", "m_request_end");
        jSONObject.put("uuid", M());
        jSONObject.put("request_uuid", A());
        jSONObject.put("url", L());
        jSONObject.put("timeout", I());
        jSONObject.put("timeout_connection", e());
        jSONObject.put("timeout_read", s());
        jSONObject.put("timeout_write", N());
        jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, H());
        jSONObject.put("lrid", n());
        jSONObject.put("method", o());
        jSONObject.put("adtp", b());
        jSONObject.put("http_stack", m());
        jSONObject.put(PushConstants.SP_KEY_RETRY_COUNT, v() - 1);
        jSONObject.put("request_wait_duration", this.f38594f);
        jSONObject.put("duration", j());
        jSONObject.put("request_duration", w());
        jSONObject.put("response_code", E());
        String strH = h();
        jSONObject.put("dns_result", strH);
        jSONObject.put("dns_status", TextUtils.isEmpty(strH) ? 2 : 1);
        jSONObject.put("is_connection_acquired", O() ? 1 : 0);
        jSONObject.put(PlaceTypes.ADDRESS, c());
        jSONObject.put("port", p());
        jSONObject.put("proxy", r());
        jSONObject.put("protocol", q());
        jSONObject.put("tls_version", J());
        jSONObject.put("content_type", f());
        int iG = G();
        jSONObject.put("result", iG);
        if (iG != 1) {
            jSONObject.put(TrackingKey.ERROR_TYPE, l());
            jSONObject.put("reason", k());
        }
        jSONObject.put("dns_duration", g());
        jSONObject.put("connect_duration", d());
        jSONObject.put("request_header_duration", y());
        jSONObject.put("request_body_duration", t());
        jSONObject.put("request_body_size", u());
        jSONObject.put("response_header_duration", F());
        jSONObject.put("response_body_duration", C());
        jSONObject.put("response_body_size", D());
        jSONObject.put("transmission_duration", K());
        jSONObject.put("current_response_body_size", B());
        jSONObject.put("dns_type", i());
        return jSONObject;
    }

    private JSONObject z() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", "m_request_start");
        jSONObject.put("uuid", M());
        jSONObject.put("request_uuid", A());
        jSONObject.put("lrid", n());
        jSONObject.put("url", L());
        jSONObject.put("timeout", I());
        jSONObject.put("timeout_connection", e());
        jSONObject.put("timeout_read", s());
        jSONObject.put("timeout_write", N());
        jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, H());
        jSONObject.put("method", o());
        jSONObject.put("adtp", b());
        jSONObject.put("http_stack", m());
        jSONObject.put(PushConstants.SP_KEY_RETRY_COUNT, v() - 1);
        jSONObject.put("request_wait_duration", this.f38594f);
        return jSONObject;
    }

    public String A() {
        return TextUtils.isEmpty(this.f38593e) ? "" : this.f38593e;
    }

    public long B() {
        return this.f38606r;
    }

    public long C() {
        return this.H - this.G;
    }

    public long D() {
        return this.f38605q;
    }

    public int E() {
        return this.f38597i;
    }

    public long F() {
        return this.F - this.E;
    }

    public int G() {
        return this.f38595g;
    }

    public String H() {
        return TextUtils.isEmpty(this.f38598j) ? "un_known" : this.f38598j;
    }

    public long I() {
        return this.R;
    }

    public String J() {
        if (this.L != null) {
            try {
                com.mbridge.msdk.thrid.okhttp.b0 b0VarC = this.L.c();
                return b0VarC == null ? "" : b0VarC.a();
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "getTlsVersion ", e11);
                }
            }
        }
        return "";
    }

    public long K() {
        return this.E - this.A;
    }

    public String L() {
        return TextUtils.isEmpty(this.f38589a) ? "" : this.f38589a;
    }

    public String M() {
        return TextUtils.isEmpty(this.f38592d) ? "" : this.f38592d;
    }

    public long N() {
        return this.U;
    }

    public boolean O() {
        return this.f38601m;
    }

    public void R() {
        this.C = SystemClock.elapsedRealtime();
    }

    public void S() {
        this.A = SystemClock.elapsedRealtime();
    }

    public void U() {
        this.G = SystemClock.elapsedRealtime();
    }

    public void V() {
        this.E = SystemClock.elapsedRealtime();
    }

    public void W() {
    }

    public void a() {
        this.f38610v = SystemClock.elapsedRealtime();
    }

    public void a(int i11) {
        this.f38595g = i11;
        if (this.Q) {
            this.Q = false;
            P();
        }
    }

    public void a(long j11) {
        this.f38593e = UUID.randomUUID().toString();
        this.f38594f = j11;
        this.f38602n.addAndGet(1);
        T();
        this.Q = true;
        Q();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.d dVar) {
        this.f38607s = SystemClock.elapsedRealtime();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.g gVar) {
        this.f38601m = !this.O;
        if (!this.f38601m || gVar == null) {
            return;
        }
        try {
            this.M = gVar.a();
            com.mbridge.msdk.thrid.okhttp.a0 a0VarC = gVar.c();
            if (a0VarC != null) {
                this.J = a0VarC.d();
                this.K = a0VarC.b();
            }
            this.L = gVar.b();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NetworkMonitor", "connectionAcquired ", e11);
            }
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.o oVar) {
        this.L = oVar;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.u uVar, IOException iOException) {
        this.f38614z = SystemClock.elapsedRealtime();
        this.M = uVar;
        this.N = iOException;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.w wVar) {
        this.B = SystemClock.elapsedRealtime();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.y yVar) {
        this.F = SystemClock.elapsedRealtime();
        if (yVar != null) {
            try {
                com.mbridge.msdk.thrid.okhttp.p pVarM = yVar.m();
                if (pVarM != null) {
                    String strB = pVarM.b(HttpHeaders.CONTENT_TYPE);
                    if (TextUtils.isEmpty(strB)) {
                        strB = "";
                    }
                    b(strB);
                }
            } catch (Exception e11) {
                b(TmcConstants.ROUTE_UNKNOWN);
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "responseHeadersEnd ", e11);
                }
            }
        }
    }

    public void a(IOException iOException) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f38608t = jElapsedRealtime;
        this.f38609u = iOException;
        a(iOException, jElapsedRealtime);
    }

    public void a(Exception exc) {
        this.P = exc;
    }

    public void a(String str) {
        this.f38591c = str;
    }

    public void a(InetSocketAddress inetSocketAddress, Proxy proxy) {
        this.f38613y = SystemClock.elapsedRealtime();
        this.J = inetSocketAddress;
        this.K = proxy;
        this.O = true;
    }

    public void a(List<InetAddress> list) {
        this.f38611w = SystemClock.elapsedRealtime();
        this.I = list;
    }

    public String b() {
        return TextUtils.isEmpty(this.f38591c) ? "" : this.f38591c;
    }

    public void b(int i11) {
        this.f38597i = i11;
    }

    public void b(long j11) {
        this.D = SystemClock.elapsedRealtime();
    }

    public void b(com.mbridge.msdk.thrid.okhttp.g gVar) {
    }

    public void b(String str) {
        this.f38603o = str;
    }

    public String c() {
        if (this.J != null) {
            try {
                InetAddress address = this.J.getAddress();
                if (address == null) {
                    return "";
                }
                String hostAddress = address.getHostAddress();
                return TextUtils.isEmpty(hostAddress) ? "" : hostAddress;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "getAddress ", e11);
                }
            }
        }
        return "";
    }

    public void c(long j11) {
        this.f38606r = j11;
    }

    public void c(String str) {
        this.f38612x = str;
    }

    public long d() {
        return this.f38614z - this.f38613y;
    }

    public void d(long j11) {
        this.H = SystemClock.elapsedRealtime();
    }

    public void d(String str) {
        this.f38596h = str;
    }

    public long e() {
        return this.S;
    }

    public void e(long j11) {
        this.S = j11;
    }

    public void e(String str) {
        this.f38590b = str;
    }

    public String f() {
        return com.mbridge.msdk.foundation.same.d.a(this.f38603o);
    }

    public void f(long j11) {
        this.T = j11;
    }

    public void f(String str) {
        this.f38589a = str;
    }

    public long g() {
        return this.f38611w - this.f38610v;
    }

    public void g(long j11) {
        this.f38604p = j11;
    }

    public String h() {
        if (this.I == null || this.I.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < this.I.size(); i11++) {
            try {
                InetAddress inetAddress = this.I.get(i11);
                if (inetAddress != null) {
                    sb2.append(inetAddress.getHostAddress());
                    if (i11 != this.I.size() - 1) {
                        sb2.append(",");
                    } else {
                        continue;
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "getDnsResult ", e11);
                }
            }
        }
        return sb2.toString();
    }

    public void h(long j11) {
        this.f38605q = j11;
    }

    public String i() {
        return TextUtils.isEmpty(this.f38612x) ? "system" : this.f38612x;
    }

    public void i(long j11) {
        this.R = j11;
    }

    public long j() {
        return (this.f38608t - this.f38607s) + this.f38594f;
    }

    public void j(long j11) {
        this.U = j11;
    }

    public String k() {
        try {
            if (this.N != null) {
                String name = this.N.getClass().getName();
                String message = this.N.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    return a("connection: %s ", name, message);
                }
            }
            if (this.f38609u != null) {
                String name2 = this.f38609u.getClass().getName();
                String message2 = this.f38609u.getMessage();
                if (!TextUtils.isEmpty(message2)) {
                    return a("call: %s ", name2, message2);
                }
            }
            if (this.P == null) {
                return "un_known";
            }
            String name3 = this.P.getClass().getName();
            String message3 = this.P.getMessage();
            return !TextUtils.isEmpty(message3) ? a("error: %s ", name3, message3) : "un_known";
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return "un_known";
            }
            o0.b("NetworkMonitor", "getError ", e11);
            return "un_known";
        }
    }

    public String l() {
        return this.f38596h;
    }

    public String m() {
        return this.f38600l;
    }

    public String n() {
        return TextUtils.isEmpty(this.f38590b) ? "" : this.f38590b;
    }

    public String o() {
        return TextUtils.isEmpty(this.f38599k) ? "" : this.f38599k;
    }

    public int p() {
        if (this.J != null) {
            return this.J.getPort();
        }
        return -1;
    }

    public String q() {
        return this.M != null ? this.M.toString() : "";
    }

    public String r() {
        Proxy.Type type;
        return (this.K == null || (type = this.K.type()) == null) ? "" : type.toString();
    }

    public long s() {
        return this.T;
    }

    public long t() {
        return this.D - this.C;
    }

    public long u() {
        return this.f38604p;
    }

    public int v() {
        return this.f38602n.getAndAdd(0);
    }

    public long w() {
        return this.f38608t - this.f38607s;
    }

    public long y() {
        return this.B - this.A;
    }
}
