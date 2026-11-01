package com.mbridge.msdk.foundation.same.net.utils;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.tracker.network.toolbox.h;
import com.mbridge.msdk.tracker.network.toolbox.i;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.u;
import com.mbridge.msdk.tracker.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public String A;
    private String B;
    public String C;
    public String D;
    private String E;
    public String F;
    private String G;
    public String H;
    private String I;
    public String J;
    public String K;
    private String L;
    public String M;
    private String N;
    public String O;
    private String P;
    public String Q;
    public String R;
    private String S;
    public String T;
    public String U;
    private String V;
    public String W;
    public String X;
    private String Y;
    public String Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35462a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private String f35463a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f35464b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f35465b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f35466c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private String f35467c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f35468d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public String f35469d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f35470e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private boolean f35471e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f35472f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f35473f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f35474g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f35475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f35476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f35477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f35478k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f35479l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f35480m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f35481n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f35482o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f35483p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f35484q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f35485r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f35486s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f35487t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList<String> f35488u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f35489v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f35490w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ArrayList<String> f35491x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f35492y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f35493z;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f35494a = new d();
    }

    private d() {
        this.f35462a = "RequestUrlUtil";
        this.f35464b = DomainNameUtils.getInstance().DEFAULT_HOST_APPLETS;
        this.f35466c = DomainNameUtils.getInstance().DEFAULT_CDN_SPARE_SETTING_URL;
        this.f35468d = DomainNameUtils.getInstance().DEFAULT_HOST_ANALYTICS;
        this.f35470e = DomainNameUtils.getInstance().DEFAULT_HOST_API;
        this.f35472f = DomainNameUtils.getInstance().DEFAULT_HOST_MONITOR_DEFAULT;
        this.f35474g = DomainNameUtils.getInstance().DEFAULT_HOST_PRIVACY;
        this.f35475h = DomainNameUtils.getInstance().DEFAULT_HOST_REVENUE_DEFAULT;
        this.f35476i = DomainNameUtils.getInstance().DEFAULT_HOST_SETTING;
        this.f35477j = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_ANALYTICS;
        this.f35478k = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_MONITOR;
        this.f35479l = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_REVENUE;
        this.f35480m = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_SETTING;
        this.f35481n = 9377;
        this.f35482o = 9377;
        this.f35483p = 9988;
        this.f35484q = 9377;
        this.f35485r = false;
        this.f35486s = false;
        this.f35487t = 1;
        this.f35488u = DomainNameUtils.getInstance().SPARE_SETTING_HOST;
        this.f35489v = 0;
        this.f35490w = 0;
        this.f35491x = DomainNameUtils.getInstance().SPARE_TCP_SETTING_HOST;
        this.f35492y = DomainNameUtils.getInstance().DEFAULT_HB_HOST;
        this.f35493z = "/bid";
        this.A = this.f35492y + this.f35493z;
        this.B = "/sdk/customid";
        this.C = this.f35476i + this.B;
        this.D = this.f35480m + this.B;
        this.E = "/image";
        this.F = this.f35470e + this.E;
        this.G = "/load";
        this.H = this.f35492y + this.G;
        this.I = "/mapping";
        this.J = this.f35476i + this.I;
        this.K = this.f35480m + this.I;
        this.L = "";
        this.M = this.f35475h + this.L;
        this.N = "/batchPaidEvent";
        this.O = this.f35475h + this.N;
        this.P = "/setting";
        this.Q = this.f35476i + this.P;
        this.R = this.f35480m + this.P;
        this.S = "/rewardsetting";
        this.T = this.f35476i + this.S;
        this.U = this.f35480m + this.S;
        this.V = "/appwall/setting";
        this.W = this.f35476i + this.V;
        this.X = this.f35480m + this.V;
        this.Y = "/openapi/ad/v3";
        this.Z = this.f35470e + this.Y;
        this.f35463a0 = "/openapi/ad/v4";
        this.f35465b0 = this.f35470e + this.f35463a0;
        this.f35467c0 = "/openapi/ad/v5";
        this.f35469d0 = this.f35470e + this.f35467c0;
        this.f35471e0 = true;
        this.f35473f0 = 0;
    }

    private p a(int i11) {
        return i11 == 1 ? new p(new m((byte) 2), h().f35478k, h().f35482o) : new p(new h(), h().M, 0);
    }

    private void a() {
        this.O = this.f35475h + this.N;
    }

    private void a(g gVar) {
        com.mbridge.msdk.setting.d dVarY;
        if (gVar == null || (dVarY = gVar.y()) == null || dVarY.a() == 1) {
            return;
        }
        int iB = q0.a().b("monitor", NativeComponentConstants.KEY_COMPONENT_TYPE, q0.a().b("t_r_t", 1));
        if (iB != 0 && iB != 1) {
            iB = 0;
        }
        u.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), new x.b().a(new com.mbridge.msdk.foundation.same.report.d()).a(new n()).a(iB, a(iB)).a(q0.a().b("t_m_e_t", MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF)).b(q0.a().b("t_m_e_s", 50)).d(q0.a().b("t_m_r_c", 50)).c(q0.a().b("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS)).e(q0.a().b("t_m_r_t_s", 1)).a(), dVarY.b() * 1000, com.mbridge.msdk.foundation.same.report.c.b());
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("(https|http)://[-A-Za-z0-9{}+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]").matcher(str.trim()).matches();
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Uri.parse(str).getHost();
        } catch (Throwable th2) {
            o0.b("RequestUrlUtil", th2.getMessage());
            return "";
        }
    }

    private void b() {
        this.M = this.f35472f + this.L;
    }

    private void c() {
        this.A = this.f35492y + this.f35493z;
        this.H = this.f35492y + this.G;
        i.b().f(this.f35492y);
    }

    private void d() {
        this.Z = this.f35470e + this.Y;
        this.f35465b0 = this.f35470e + this.f35463a0;
        this.f35469d0 = this.f35470e + this.f35467c0;
        this.F = this.f35470e + this.E;
    }

    public static d h() {
        return b.f35494a;
    }

    public String a(String str, int i11) {
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split("_");
                return strArrSplit.length > 1 ? a(true, strArrSplit[1]) : a(true, "");
            }
        } catch (Exception e11) {
            o0.b("RequestUrlUtil", e11.getMessage());
        }
        return i11 % 2 == 0 ? this.f35469d0 : this.Z;
    }

    public String a(boolean z10, String str) {
        if (!z10) {
            return this.A.replace("{}", "");
        }
        if (!this.H.contains("{}") || TextUtils.isEmpty(str)) {
            return this.H.replace("{}", "");
        }
        return this.H.replace("{}", str + "-");
    }

    public void a(boolean z10) {
        this.f35471e0 = z10;
    }

    public void b(int i11) {
        this.f35481n = i11;
    }

    public void c(int i11) {
        this.f35484q = i11;
    }

    public void d(int i11) {
        this.f35473f0 = i11;
    }

    public void e() {
        this.Q = this.f35476i + this.P;
        this.C = this.f35476i + this.B;
        this.T = this.f35476i + this.S;
        this.J = this.f35476i + this.I;
        this.W = this.f35476i + this.V;
    }

    public void f() {
        this.R = this.f35480m + this.P;
        this.D = this.f35480m + this.B;
        this.U = this.f35480m + this.S;
        this.K = this.f35480m + this.I;
        this.X = this.f35480m + this.V;
    }

    public boolean g() {
        try {
            if (this.f35486s) {
                ArrayList<String> arrayList = this.f35491x;
                if (arrayList != null && this.f35490w <= arrayList.size() - 1) {
                    if (!a(this.f35491x.get(this.f35490w))) {
                        this.f35480m = this.f35491x.get(this.f35490w);
                        f();
                    }
                    return true;
                }
            } else {
                ArrayList<String> arrayList2 = this.f35488u;
                if (arrayList2 != null && this.f35489v <= arrayList2.size() - 1) {
                    this.f35476i = this.f35488u.get(this.f35489v);
                    e();
                    return true;
                }
            }
            if (this.f35485r) {
                this.f35489v = 0;
                this.f35490w = 0;
            }
            return false;
        } catch (Throwable th2) {
            o0.a("RequestUrlUtil", th2.getMessage());
            return false;
        }
    }

    public int i() {
        return this.f35473f0;
    }

    public void j() {
        HashMap<String, String> mapC;
        g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD != null) {
            com.mbridge.msdk.setting.a aVarJ = gVarD.j();
            if (aVarJ != null) {
                this.f35479l = aVarJ.f();
                this.f35483p = aVarJ.g();
                this.f35475h = aVarJ.e();
                a();
            }
            com.mbridge.msdk.setting.d dVarY = gVarD.y();
            if (dVarY != null) {
                this.f35478k = dVarY.d();
                this.f35482o = dVarY.e();
                this.f35472f = dVarY.c();
                b();
                a(gVarD);
            }
            this.f35486s = gVarD.n0() == 2;
            this.f35487t = gVarD.n0();
            a(!gVarD.b(2));
            if (gVarD.C() != null && gVarD.C().size() > 0 && (mapC = gVarD.C()) != null && mapC.size() > 0) {
                if (mapC.containsKey("v") && !TextUtils.isEmpty(mapC.get("v")) && a(mapC.get("v"))) {
                    this.f35470e = mapC.get("v");
                    d();
                }
                if (mapC.containsKey(CampaignEx.JSON_KEY_HB) && !TextUtils.isEmpty(mapC.get(CampaignEx.JSON_KEY_HB)) && a(mapC.get(CampaignEx.JSON_KEY_HB))) {
                    this.f35492y = mapC.get(CampaignEx.JSON_KEY_HB);
                    c();
                }
                if (mapC.containsKey("lg") && !TextUtils.isEmpty(mapC.get("lg"))) {
                    String str = mapC.get("lg");
                    if (a(str)) {
                        this.f35468d = str;
                    } else {
                        this.f35477j = str;
                    }
                }
                if (mapC.containsKey("lgt") && !TextUtils.isEmpty(mapC.get("lgt"))) {
                    String str2 = mapC.get("lgt");
                    if (a(str2)) {
                        String strB = b(str2);
                        if (!TextUtils.isEmpty(strB)) {
                            this.f35477j = strB;
                        }
                    } else {
                        this.f35477j = str2;
                    }
                }
            }
            String strU = gVarD.u();
            if (!TextUtils.isEmpty(strU)) {
                this.f35476i = strU;
                e();
                this.f35488u.add(0, strU);
            }
            String strV = gVarD.v();
            if (TextUtils.isEmpty(strV)) {
                return;
            }
            this.f35480m = strV;
            f();
            this.f35491x.add(0, strV);
        }
    }
}
