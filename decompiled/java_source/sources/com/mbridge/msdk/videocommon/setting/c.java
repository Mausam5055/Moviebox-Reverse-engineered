package com.mbridge.msdk.videocommon.setting;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.i0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static g W;
    public static String X;
    private int E;
    private int G;
    private JSONArray U;
    private JSONObject V;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f39989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f39990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<com.mbridge.msdk.videocommon.entity.b> f39991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f39992d;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList<Integer> f40008t;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f39993e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f39994f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f39995g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f39996h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f39997i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f39998j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f39999k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f40000l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f40001m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f40002n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f40003o = 80;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f40004p = 100;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f40005q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private double f40006r = 1.0d;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f40007s = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f40009u = 3;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f40010v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f40011w = 100;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f40012x = 60;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f40013y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f40014z = 70;
    private int A = 0;
    private int B = -1;
    private int C = -1;
    private int D = -1;
    private int F = 20;
    private int H = 0;
    private int I = 1;
    private String J = "";
    private int K = 1;
    private String L = "";
    private int M = 1;
    private String N = "Virtual Item";
    private String O = "";
    private String P = "";
    private int Q = 0;
    private int R = 1;
    private int S = 60;
    private String T = "";

    public static c a(String str) {
        JSONObject jSONObjectOptJSONObject;
        if (W == null) {
            W = g.a(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        c cVar = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String strOptString = jSONObject.optString("vtag", "");
                String strOptString2 = jSONObject.optString("rid", "");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("unitSetting");
                if (jSONArrayOptJSONArray == null || (jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0)) == null) {
                    return null;
                }
                String strOptString3 = jSONObjectOptJSONObject.optString("unitId");
                if (TextUtils.isEmpty(strOptString3)) {
                    return null;
                }
                c cVar2 = new c();
                try {
                    cVar2.j(strOptString);
                    cVar2.g(strOptString2);
                    List<com.mbridge.msdk.videocommon.entity.b> listA = com.mbridge.msdk.videocommon.entity.b.a(jSONObjectOptJSONObject.optJSONArray("adSourceList"));
                    cVar2.h(strOptString3);
                    cVar2.a(listA);
                    cVar2.h(jSONObjectOptJSONObject.optInt("callbackType"));
                    int iOptInt = jSONObjectOptJSONObject.optInt("aqn", 1);
                    if (iOptInt <= 0) {
                        iOptInt = 1;
                    }
                    cVar2.e(iOptInt);
                    int iOptInt2 = jSONObjectOptJSONObject.optInt("acn", 1);
                    if (iOptInt2 < 0) {
                        iOptInt2 = 1;
                    }
                    cVar2.b(iOptInt2);
                    cVar2.E(jSONObjectOptJSONObject.optInt("vcn", 5));
                    cVar2.u(jSONObjectOptJSONObject.optInt("offset", 5));
                    cVar2.n(jSONObjectOptJSONObject.optInt("dlnet", 1));
                    cVar2.o(jSONObjectOptJSONObject.optInt("endscreen_type", 2));
                    cVar2.D(jSONObjectOptJSONObject.optInt("tv_start", 3));
                    cVar2.C(jSONObjectOptJSONObject.optInt("tv_end", 80));
                    cVar2.y(jSONObjectOptJSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                    cVar2.i(jSONObjectOptJSONObject.optInt("cd_rate", 0));
                    cVar2.a(jSONObject.optLong("current_time"));
                    cVar2.A(jSONObjectOptJSONObject.optInt("orientation", 0));
                    cVar2.m(jSONObjectOptJSONObject.optInt("daily_play_cap", 0));
                    cVar2.I(jSONObjectOptJSONObject.optInt("video_skip_time", -1));
                    cVar2.H(jSONObjectOptJSONObject.optInt("video_skip_result", 2));
                    cVar2.G(jSONObjectOptJSONObject.optInt("video_interactive_type", -1));
                    cVar2.k(jSONObjectOptJSONObject.optInt("close_button_delay", 1));
                    cVar2.w(jSONObjectOptJSONObject.optInt("playclosebtn_tm", -1));
                    cVar2.v(jSONObjectOptJSONObject.optInt("play_ctdown", 0));
                    cVar2.j(jSONObjectOptJSONObject.optInt("close_alert", 0));
                    cVar2.x(jSONObjectOptJSONObject.optInt("rdrct", 20));
                    cVar2.p(jSONObjectOptJSONObject.optInt("load_global_timeout", 70));
                    cVar2.z(jSONObjectOptJSONObject.optInt("rfpv", -1));
                    cVar2.a(jSONObjectOptJSONObject.optDouble("vdcmp", 1.0d));
                    cVar2.c(jSONObjectOptJSONObject.optString("atzu"));
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("atl_type");
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    try {
                        if (jSONArrayOptJSONArray2 != null) {
                            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                                arrayList.add(Integer.valueOf(jSONArrayOptJSONArray2.getInt(i11)));
                            }
                        } else {
                            arrayList.add(4);
                            arrayList.add(6);
                        }
                        cVar2.a(arrayList);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    int iOptInt3 = jSONObjectOptJSONObject.optInt("atl_dyt", 0);
                    cVar2.f(iOptInt3 > 0 ? iOptInt3 : 3);
                    int iOptInt4 = jSONObjectOptJSONObject.optInt("tmorl", 1);
                    if (iOptInt4 > 2 || iOptInt4 <= 0) {
                        iOptInt4 = 1;
                    }
                    cVar2.B(iOptInt4);
                    cVar2.f(jSONObjectOptJSONObject.optString("placementid"));
                    cVar2.s(jSONObjectOptJSONObject.optInt("ltafemty", 10));
                    cVar2.t(jSONObjectOptJSONObject.optInt("ltorwc", 60));
                    cVar2.b(jSONObjectOptJSONObject.optString("ab_id"));
                    cVar2.d(jSONObjectOptJSONObject.optInt(RewardPlus.AMOUNT_MAX, 0));
                    cVar2.g(jSONObjectOptJSONObject.optInt(RewardPlus.CALLBACK_RULE, 1));
                    cVar2.i(jSONObjectOptJSONObject.optString(RewardPlus.VIRTUAL_CURRENCY, ""));
                    cVar2.c(jSONObjectOptJSONObject.optInt(RewardPlus.AMOUNT, 1));
                    cVar2.d(jSONObjectOptJSONObject.optString(RewardPlus.ICON, ""));
                    cVar2.l(jSONObjectOptJSONObject.optInt(RewardPlus.CURRENCY_ID, 1));
                    cVar2.e(jSONObjectOptJSONObject.optString("name", "Virtual Item"));
                    cVar2.F(jSONObjectOptJSONObject.optInt("video_error_rule", 1));
                    cVar2.r(jSONObjectOptJSONObject.optInt("loadtmo", 60));
                    cVar2.a(jSONObjectOptJSONObject.optJSONArray("local_cache_info"));
                    try {
                        String strOptString4 = jSONObjectOptJSONObject.optString("retry_strategy");
                        if (!TextUtils.isEmpty(strOptString4)) {
                            String strA = i0.a(strOptString4);
                            if (!TextUtils.isEmpty(strA)) {
                                cVar2.b(new JSONObject(strA));
                            }
                        }
                    } catch (Exception unused) {
                    }
                    return cVar2;
                } catch (Exception e12) {
                    e = e12;
                    cVar = cVar2;
                }
            } catch (Exception e13) {
                e = e13;
            }
            e.printStackTrace();
        }
        return cVar;
    }

    public static c a(JSONObject jSONObject) {
        c cVar = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            c cVar2 = new c();
            try {
                cVar2.a(com.mbridge.msdk.videocommon.entity.b.a(jSONObject.optJSONArray("adSourceList")));
                cVar2.h(jSONObject.optInt("callbackType"));
                int iOptInt = jSONObject.optInt("aqn", 1);
                if (iOptInt <= 0) {
                    iOptInt = 1;
                }
                cVar2.e(iOptInt);
                int iOptInt2 = jSONObject.optInt("acn", 1);
                if (iOptInt2 < 0) {
                    iOptInt2 = 1;
                }
                cVar2.b(iOptInt2);
                cVar2.E(jSONObject.optInt("vcn", 5));
                cVar2.u(jSONObject.optInt("offset", 5));
                cVar2.n(jSONObject.optInt("dlnet", 1));
                cVar2.o(jSONObject.optInt("endscreen_type", 2));
                cVar2.D(jSONObject.optInt("tv_start", 3));
                cVar2.C(jSONObject.optInt("tv_end", 80));
                cVar2.y(jSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                cVar2.a(jSONObject.optLong("current_time"));
                cVar2.A(jSONObject.optInt("orientation", 0));
                cVar2.m(jSONObject.optInt("daily_play_cap", 0));
                cVar2.I(jSONObject.optInt("video_skip_time", -1));
                cVar2.H(jSONObject.optInt("video_skip_result", 2));
                cVar2.G(jSONObject.optInt("video_interactive_type", -1));
                cVar2.k(jSONObject.optInt("close_button_delay", 1));
                cVar2.w(jSONObject.optInt("playclosebtn_tm", -1));
                cVar2.v(jSONObject.optInt("play_ctdown", 0));
                cVar2.j(jSONObject.optInt("close_alert", 0));
                cVar2.x(jSONObject.optInt("rdrct", 20));
                cVar2.z(jSONObject.optInt("rfpv", -1));
                cVar2.a(jSONObject.optDouble("vdcmp", 1.0d));
                cVar2.p(jSONObject.optInt("load_global_timeout", 70));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("atl_type");
                ArrayList<Integer> arrayList = new ArrayList<>();
                try {
                    if (jSONArrayOptJSONArray != null) {
                        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                            arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.getInt(i11)));
                        }
                    } else {
                        arrayList.add(4);
                        arrayList.add(6);
                    }
                    cVar2.a(arrayList);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                cVar2.f(jSONObject.optInt("atl_dyt", 3));
                int iOptInt3 = jSONObject.optInt("tmorl", 1);
                if (iOptInt3 > 2 || iOptInt3 <= 0) {
                    iOptInt3 = 1;
                }
                cVar2.B(iOptInt3);
                cVar2.f(jSONObject.optString("placementid"));
                cVar2.s(jSONObject.optInt("ltafemty", 10));
                cVar2.t(jSONObject.optInt("ltorwc", 60));
                cVar2.b(jSONObject.optString("ab_id"));
                cVar2.g(jSONObject.optString("rid", ""));
                cVar2.d(jSONObject.optInt(RewardPlus.AMOUNT_MAX, 0));
                cVar2.g(jSONObject.optInt(RewardPlus.CALLBACK_RULE, 1));
                cVar2.i(jSONObject.optString(RewardPlus.VIRTUAL_CURRENCY, ""));
                cVar2.c(jSONObject.optInt(RewardPlus.AMOUNT, 1));
                cVar2.d(jSONObject.optString(RewardPlus.ICON, ""));
                cVar2.l(jSONObject.optInt(RewardPlus.CURRENCY_ID, 1));
                cVar2.e(jSONObject.optString("name", "Virtual Item"));
                cVar2.F(jSONObject.optInt("video_error_rule", 1));
                cVar2.r(jSONObject.optInt("loadtmo", 60));
                cVar2.j(jSONObject.optString("vtag", ""));
                cVar2.a(jSONObject.optJSONArray("local_cache_info"));
                try {
                    String strOptString = jSONObject.optString("retry_strategy");
                    if (!TextUtils.isEmpty(strOptString)) {
                        String strA = i0.a(strOptString);
                        if (!TextUtils.isEmpty(strA)) {
                            cVar2.b(new JSONObject(strA));
                        }
                    }
                } catch (Exception unused) {
                }
                return cVar2;
            } catch (Exception e12) {
                e = e12;
                cVar = cVar2;
                e.printStackTrace();
                return cVar;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    public int A() {
        return this.f40010v;
    }

    public void A(int i11) {
        this.f40013y = i11;
    }

    public JSONArray B() {
        return this.U;
    }

    public void B(int i11) {
        this.f40010v = i11;
    }

    public int C() {
        return this.R;
    }

    public void C(int i11) {
        this.f40003o = i11;
    }

    public int D() {
        return this.D;
    }

    public void D(int i11) {
        this.f40002n = i11;
    }

    public int E() {
        return this.C;
    }

    public void E(int i11) {
        this.f39999k = i11;
    }

    public int F() {
        return this.B;
    }

    public void F(int i11) {
        this.R = i11;
    }

    public String G() {
        return this.T;
    }

    public void G(int i11) {
        this.D = i11;
    }

    public JSONObject H() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("unitId", this.f39989a);
            jSONObject.put("callbackType", this.f39996h);
            List<com.mbridge.msdk.videocommon.entity.b> list = this.f39991c;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.mbridge.msdk.videocommon.entity.b bVar : this.f39991c) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", bVar.a());
                    jSONObject2.put("timeout", bVar.b());
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("adSourceList", jSONArray);
            }
            jSONObject.put("aqn", this.f39997i);
            jSONObject.put("acn", this.f39998j);
            jSONObject.put("vcn", this.f39999k);
            jSONObject.put("offset", this.f40000l);
            jSONObject.put("dlnet", this.f40001m);
            jSONObject.put("tv_start", this.f40002n);
            jSONObject.put("tv_end", this.f40003o);
            jSONObject.put(CampaignEx.JSON_KEY_READY_RATE, this.f40004p);
            jSONObject.put("endscreen_type", this.G);
            jSONObject.put("daily_play_cap", this.A);
            jSONObject.put("video_skip_time", this.B);
            jSONObject.put("video_skip_result", this.C);
            jSONObject.put("video_interactive_type", this.D);
            jSONObject.put("orientation", this.f40013y);
            jSONObject.put("close_button_delay", this.E);
            jSONObject.put("playclosebtn_tm", this.f39993e);
            jSONObject.put("play_ctdown", this.f39994f);
            jSONObject.put("close_alert", this.f39995g);
            jSONObject.put("rfpv", this.f40007s);
            jSONObject.put("vdcmp", this.f40006r);
            JSONArray jSONArray2 = new JSONArray();
            ArrayList<Integer> arrayList = this.f40008t;
            if (arrayList != null) {
                if (arrayList.size() > 0) {
                    Iterator<Integer> it = this.f40008t.iterator();
                    while (it.hasNext()) {
                        jSONArray2.put(it.next());
                    }
                }
                jSONObject.put("atl_type", jSONArray2);
            }
            jSONObject.put("atl_dyt", this.f40009u);
            jSONObject.put("tmorl", this.f40010v);
            jSONObject.put("placementid", this.f39990b);
            jSONObject.put("ltafemty", this.f40011w);
            jSONObject.put("ltorwc", this.f40012x);
            jSONObject.put(RewardPlus.AMOUNT_MAX, this.H);
            jSONObject.put(RewardPlus.CALLBACK_RULE, this.I);
            jSONObject.put(RewardPlus.VIRTUAL_CURRENCY, this.J);
            jSONObject.put(RewardPlus.AMOUNT, this.K);
            jSONObject.put(RewardPlus.ICON, this.L);
            jSONObject.put(RewardPlus.CURRENCY_ID, this.M);
            jSONObject.put("name", this.N);
            jSONObject.put("isDefault", this.Q);
            jSONObject.put("video_error_rule", this.R);
            jSONObject.put("loadtmo", this.S);
            jSONObject.put("vtag", this.T);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    public void H(int i11) {
        this.C = i11;
    }

    public void I(int i11) {
        this.B = i11;
    }

    public String a() {
        return this.O;
    }

    public void a(double d11) {
        this.f40006r = d11;
    }

    public void a(long j11) {
        this.f39992d = j11;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.f40008t = arrayList;
    }

    public void a(List<com.mbridge.msdk.videocommon.entity.b> list) {
        this.f39991c = list;
    }

    public void a(JSONArray jSONArray) {
        this.U = jSONArray;
    }

    public boolean a(int i11) {
        ArrayList<Integer> arrayList = this.f40008t;
        if (arrayList == null || arrayList.size() <= 0) {
            return false;
        }
        return this.f40008t.contains(Integer.valueOf(i11));
    }

    public int b() {
        return this.f39998j;
    }

    public void b(int i11) {
        this.f39998j = i11;
    }

    public void b(String str) {
        this.O = str;
        com.mbridge.msdk.foundation.controller.a.f34994r.put(this.f39989a, str);
    }

    public void b(JSONObject jSONObject) {
        this.V = jSONObject;
    }

    public String c() {
        return X;
    }

    public void c(int i11) {
        if (i11 <= 0) {
            this.K = 1;
        } else {
            this.K = i11;
        }
    }

    public void c(String str) {
        X = str;
    }

    public int d() {
        return this.K;
    }

    public void d(int i11) {
        this.H = i11;
    }

    public void d(String str) {
        this.L = str;
    }

    public int e() {
        return this.f39997i;
    }

    public void e(int i11) {
        this.f39997i = i11;
    }

    public void e(String str) {
        if (TextUtils.isEmpty(str)) {
            this.N = this.J;
        } else {
            this.N = str;
        }
    }

    public int f() {
        return this.f40009u;
    }

    public void f(int i11) {
        this.f40009u = i11;
    }

    public void f(String str) {
        this.f39990b = str;
    }

    public int g() {
        return this.f40005q;
    }

    public void g(int i11) {
        this.I = i11;
    }

    public void g(String str) {
        this.P = str;
    }

    public int h() {
        return this.f39995g;
    }

    public void h(int i11) {
        this.f39996h = i11;
    }

    public void h(String str) {
        this.f39989a = str;
    }

    public int i() {
        return this.E;
    }

    public void i(int i11) {
        this.f40005q = i11;
    }

    public void i(String str) {
        this.J = str;
    }

    public long j() {
        return this.f39992d;
    }

    public void j(int i11) {
        this.f39995g = i11;
    }

    public void j(String str) {
        this.T = str;
    }

    public int k() {
        return this.A;
    }

    public void k(int i11) {
        this.E = i11;
    }

    public int l() {
        return this.f40001m;
    }

    public void l(int i11) {
        this.M = i11;
    }

    public int m() {
        return this.G;
    }

    public void m(int i11) {
        this.A = i11;
    }

    public int n() {
        return this.f40014z;
    }

    public void n(int i11) {
        this.f40001m = i11;
    }

    public int o() {
        return this.S;
    }

    public void o(int i11) {
        this.G = i11;
    }

    public int p() {
        return this.f40011w;
    }

    public void p(int i11) {
        this.f40014z = i11;
    }

    public int q() {
        return this.f40012x;
    }

    public void q(int i11) {
        this.Q = i11;
    }

    public int r() {
        return this.f40000l;
    }

    public void r(int i11) {
        this.S = i11;
    }

    public String s() {
        return this.N;
    }

    public void s(int i11) {
        this.f40011w = i11;
    }

    public String t() {
        return this.f39990b;
    }

    public void t(int i11) {
        this.f40012x = i11;
    }

    public int u() {
        return this.f39993e;
    }

    public void u(int i11) {
        this.f40000l = i11;
    }

    public int v() {
        return this.F;
    }

    public void v(int i11) {
        this.f39994f = i11;
    }

    public int w() {
        return this.f40004p;
    }

    public void w(int i11) {
        this.f39993e = i11;
    }

    public String x() {
        return this.P;
    }

    public void x(int i11) {
        this.F = i11;
    }

    public int y() {
        return this.f40013y;
    }

    public void y(int i11) {
        this.f40004p = i11;
    }

    public Queue<Integer> z() {
        LinkedList linkedList;
        Exception e11;
        try {
            List<com.mbridge.msdk.videocommon.entity.b> list = this.f39991c;
            if (list == null || list.size() <= 0) {
                return null;
            }
            linkedList = new LinkedList();
            for (int i11 = 0; i11 < this.f39991c.size(); i11++) {
                try {
                    linkedList.add(Integer.valueOf(this.f39991c.get(i11).b()));
                } catch (Exception e12) {
                    e11 = e12;
                    e11.printStackTrace();
                }
            }
            return linkedList;
        } catch (Exception e13) {
            linkedList = null;
            e11 = e13;
        }
        e11.printStackTrace();
        return linkedList;
    }

    public void z(int i11) {
        this.f40007s = i11;
    }
}
