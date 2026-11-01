package com.mbridge.msdk.setting;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private String A;
    private int D;
    private int E;
    private int I;
    private String K;
    private int N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<Integer> f37279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<Integer> f37280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f37284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f37286i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f37288k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f37289l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f37290m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f37291n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f37292o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f37293p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f37294q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f37295r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f37296s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f37297t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f37298u;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f37303z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37278a = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f37287j = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f37299v = 30;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f37300w = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f37301x = 10;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f37302y = 60;
    private int B = 1;
    private String C = "";
    private int F = 100;
    private int G = 60;
    private int H = 5000;
    private int J = 1;
    private String L = "";
    private String M = "";

    public static l a(JSONObject jSONObject) {
        l lVar = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            l lVar2 = new l();
            try {
                lVar2.e(jSONObject.optString("unitId"));
                lVar2.a(jSONObject.optString("ab_id"));
                lVar2.f(jSONObject.optString("rid"));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("adSourceList");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                        arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i11)));
                    }
                    lVar2.a(arrayList);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("ad_source_timeout");
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                        arrayList2.add(Integer.valueOf(jSONArrayOptJSONArray2.optInt(i12)));
                    }
                    lVar2.b(arrayList2);
                }
                lVar2.x(jSONObject.optInt("tpqn"));
                lVar2.c(jSONObject.optInt("aqn"));
                lVar2.b(jSONObject.optInt("acn"));
                lVar2.z(jSONObject.optInt("wt"));
                int i13 = 1;
                lVar2.o(jSONObject.optInt("iscasf", 1));
                lVar2.w(jSONObject.optInt("spmxrt", 5000));
                lVar2.c(jSONObject.optLong("current_time"));
                lVar2.r(jSONObject.optInt("offset"));
                lVar2.d(jSONObject.optLong("dlct", 3600L));
                lVar2.d(jSONObject.optInt("autoplay", 0));
                lVar2.k(jSONObject.optInt("dlnet", 2));
                lVar2.c(jSONObject.optString("no_offer"));
                lVar2.f(jSONObject.optInt("cb_type"));
                lVar2.b(jSONObject.optLong("clct", 86400L));
                lVar2.a(jSONObject.optLong("clcq", 300L));
                lVar2.u(jSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                lVar2.g(jSONObject.optInt("cd_rate", 0));
                lVar2.i(jSONObject.optInt("content", 1));
                lVar2.m(jSONObject.optInt("impt", 0));
                lVar2.l(jSONObject.optInt("icon_type", 1));
                lVar2.b(jSONObject.optString("no_ads_url", ""));
                lVar2.t(jSONObject.optInt("playclosebtn_tm", -1));
                lVar2.s(jSONObject.optInt("play_ctdown", 0));
                lVar2.h(jSONObject.optInt("close_alert", 0));
                lVar2.n(jSONObject.optInt("intershowlimit", 30));
                lVar2.v(jSONObject.optInt("refreshFq", 60));
                lVar2.e(jSONObject.optInt("closeBtn", 0));
                int iOptInt = jSONObject.optInt("tmorl", 1);
                if (iOptInt <= 2 && iOptInt > 0) {
                    i13 = iOptInt;
                }
                lVar2.y(i13);
                lVar2.d(jSONObject.optString("placementid", ""));
                lVar2.p(jSONObject.optInt("ltafemty", 10));
                lVar2.q(jSONObject.optInt("ltorwc", 60));
                lVar2.g(jSONObject.optString("vtag", ""));
                return lVar2;
            } catch (Exception e11) {
                e = e11;
                lVar = lVar2;
                e.printStackTrace();
                return lVar;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    public int A() {
        return this.D;
    }

    public int B() {
        return this.E;
    }

    public int C() {
        return this.F;
    }

    public int D() {
        return this.G;
    }

    public int E() {
        return this.H;
    }

    public int F() {
        return this.I;
    }

    public int G() {
        return this.J;
    }

    public String H() {
        return this.K;
    }

    public String I() {
        return this.L;
    }

    public String J() {
        return this.M;
    }

    public int K() {
        return this.N;
    }

    public int L() {
        return this.f37284g;
    }

    public JSONObject M() {
        JSONObject jSONObject = new JSONObject();
        try {
            List<Integer> listB = b();
            if (listB != null && listB.size() > 0) {
                int size = listB.size();
                JSONArray jSONArray = new JSONArray();
                for (int i11 = 0; i11 < size; i11++) {
                    jSONArray.put(listB.get(i11));
                }
                jSONObject.put("adSourceList", jSONArray);
            }
            List<Integer> listC = c();
            if (listC != null && listC.size() > 0) {
                int size2 = listC.size();
                JSONArray jSONArray2 = new JSONArray();
                for (int i12 = 0; i12 < size2; i12++) {
                    jSONArray2.put(listC.get(i12));
                }
                jSONObject.put("ad_source_timeout", jSONArray2);
            }
            jSONObject.put("tpqn", F());
            jSONObject.put("aqn", f());
            jSONObject.put("acn", e());
            jSONObject.put("wt", K());
            jSONObject.put("current_time", o());
            jSONObject.put("offset", y());
            jSONObject.put("dlct", p());
            jSONObject.put("autoplay", L());
            jSONObject.put("dlnet", q());
            jSONObject.put("no_offer", x());
            jSONObject.put("cb_type", h());
            jSONObject.put("clct", k());
            jSONObject.put("clcq", j());
            jSONObject.put(CampaignEx.JSON_KEY_READY_RATE, C());
            jSONObject.put("content", m());
            jSONObject.put("impt", s());
            jSONObject.put("icon_type", r());
            jSONObject.put("no_ads_url", w());
            jSONObject.put("playclosebtn_tm", B());
            jSONObject.put("play_ctdown", A());
            jSONObject.put("close_alert", l());
            jSONObject.put("closeBtn", g());
            jSONObject.put("refreshFq", D());
            jSONObject.put("countdown", n());
            jSONObject.put("allowSkip", d());
            jSONObject.put("tmorl", G());
            jSONObject.put("unitId", H());
            jSONObject.put("placementid", z());
            jSONObject.put("ltafemty", u());
            jSONObject.put("ltorwc", v());
            jSONObject.put("vtag", J());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    public String a() {
        return this.f37278a;
    }

    public void a(int i11) {
        this.f37281d = i11;
    }

    public void a(long j11) {
        this.f37288k = j11;
    }

    public void a(String str) {
        this.f37278a = str;
        com.mbridge.msdk.foundation.controller.a.f34994r.put(this.K, str);
    }

    public void a(List<Integer> list) {
        this.f37279b = list;
    }

    public List<Integer> b() {
        return this.f37279b;
    }

    public void b(int i11) {
        this.f37282e = i11;
    }

    public void b(long j11) {
        this.f37289l = j11;
    }

    public void b(String str) {
        this.f37303z = str;
    }

    public void b(List<Integer> list) {
        this.f37280c = list;
    }

    public List<Integer> c() {
        return this.f37280c;
    }

    public void c(int i11) {
        this.f37283f = i11;
    }

    public void c(long j11) {
        this.f37293p = j11;
    }

    public void c(String str) {
        this.A = str;
    }

    public int d() {
        return this.f37281d;
    }

    public void d(int i11) {
        this.f37284g = i11;
    }

    public void d(long j11) {
        this.f37294q = j11;
    }

    public void d(String str) {
        this.C = str;
    }

    public int e() {
        return this.f37282e;
    }

    public void e(int i11) {
        this.f37285h = i11;
    }

    public void e(String str) {
        this.K = str;
    }

    public int f() {
        return this.f37283f;
    }

    public void f(int i11) {
        this.f37286i = i11;
    }

    public void f(String str) {
        this.L = str;
    }

    public int g() {
        return this.f37285h;
    }

    public void g(int i11) {
        this.f37287j = i11;
    }

    public void g(String str) {
        this.M = str;
    }

    public int h() {
        return this.f37286i;
    }

    public void h(int i11) {
        this.f37290m = i11;
    }

    public int i() {
        return this.f37287j;
    }

    public void i(int i11) {
        this.f37291n = i11;
    }

    public long j() {
        return this.f37288k;
    }

    public void j(int i11) {
        this.f37292o = i11;
    }

    public long k() {
        return this.f37289l;
    }

    public void k(int i11) {
        this.f37295r = i11;
    }

    public int l() {
        return this.f37290m;
    }

    public void l(int i11) {
        this.f37297t = i11;
    }

    public int m() {
        return this.f37291n;
    }

    public void m(int i11) {
        this.f37298u = i11;
    }

    public int n() {
        return this.f37292o;
    }

    public void n(int i11) {
        this.f37299v = i11;
    }

    public long o() {
        return this.f37293p;
    }

    public void o(int i11) {
        this.f37300w = i11;
    }

    public long p() {
        return this.f37294q;
    }

    public void p(int i11) {
        this.f37301x = i11;
    }

    public int q() {
        return this.f37295r;
    }

    public void q(int i11) {
        this.f37302y = i11;
    }

    public int r() {
        return this.f37297t;
    }

    public void r(int i11) {
        this.B = i11;
    }

    public int s() {
        return this.f37298u;
    }

    public void s(int i11) {
        this.D = i11;
    }

    public int t() {
        return this.f37300w;
    }

    public void t(int i11) {
        this.E = i11;
    }

    public String toString() {
        List<Integer> list = this.f37279b;
        String str = "";
        if (list != null && list.size() > 0) {
            Iterator<Integer> it = this.f37279b.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ",";
            }
        }
        return "offset = " + y() + " unitId = " + this.K + " fbPlacementId = " + this.f37296s + str;
    }

    public int u() {
        return this.f37301x;
    }

    public void u(int i11) {
        this.F = i11;
    }

    public int v() {
        return this.f37302y;
    }

    public void v(int i11) {
        this.G = i11;
    }

    public String w() {
        return this.f37303z;
    }

    public void w(int i11) {
        this.H = i11;
    }

    public String x() {
        return this.A;
    }

    public void x(int i11) {
        this.I = i11;
    }

    public int y() {
        return this.B;
    }

    public void y(int i11) {
        this.J = i11;
    }

    public String z() {
        return this.C;
    }

    public void z(int i11) {
        this.N = i11;
    }
}
