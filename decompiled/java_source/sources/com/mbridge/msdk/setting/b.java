package com.mbridge.msdk.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.aliyun.player.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public static int f37213c1 = 1500;
    private boolean D0;
    private long F;
    private JSONArray F0;
    private JSONObject G0;
    private ArrayList<Integer> H;
    private d I;
    private long I0;
    private C0536b J;
    private long N0;
    private HashMap<String, String> O;
    private boolean O0;
    private String P;
    private int U;
    private String U0;
    private String X;
    private Map<String, String> Y;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private int f37216a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private String f37219b1;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private int f37231h0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private String f37237k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f37238l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private String f37239l0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<com.mbridge.msdk.foundation.entity.a> f37242n;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f37245o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f37246p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f37247p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.mbridge.msdk.setting.a f37248q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private int f37249q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f37250r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f37251r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Map<String, a> f37252s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f37254t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f37256u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private long f37257u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private long f37259v0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37214a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONArray f37217b = new JSONArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONArray f37220c = new JSONArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f37222d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37224e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37226f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f37228g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37230h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f37232i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f37234j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f37236k = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f37240m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f37244o = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f37258v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f37260w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f37262x = "";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f37264y = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f37266z = "";
    private String A = "";
    private String B = "";
    private int C = 120;
    private String D = com.mbridge.msdk.foundation.same.net.utils.d.h().f35476i;
    private String E = com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m;
    private int G = f37213c1;
    private int K = 0;
    private long L = 86400;
    private int M = 0;
    private int N = 3;
    private boolean Q = true;
    private int R = 0;
    private boolean S = false;
    private boolean T = false;
    private int V = 0;
    private int W = 0;
    private String Z = BuildConfig.VERSION_NAME;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f37215a0 = 30;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f37218b0 = 9377;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f37221c0 = 0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f37223d0 = 5;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private int f37225e0 = 1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f37227f0 = 8000;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private String f37229g0 = "";

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private int f37233i0 = 10;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private int f37235j0 = 120;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private String f37241m0 = "";

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private String f37243n0 = "";

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private String f37253s0 = "";

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private String f37255t0 = "";

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private List<Integer> f37261w0 = new ArrayList();

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private int f37263x0 = 3;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private int f37265y0 = 0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private int f37267z0 = 3;
    private int A0 = 0;
    private int B0 = 10;
    private int C0 = 600;
    private int E0 = 0;
    private String H0 = "";
    private int J0 = 8000;
    private int K0 = 1;
    private long L0 = 10;
    private int M0 = 3;
    private int P0 = 1;
    private int Q0 = 1;
    private int R0 = 1;
    private int S0 = 1;
    private String T0 = "";
    private int V0 = 1300;
    private int W0 = 0;
    private int X0 = 0;
    private long Y0 = 3600;
    private String Z0 = "";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<String> f37268a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f37269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<String> f37270c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<String> f37271d;

        public List<String> a() {
            return this.f37268a;
        }

        public void a(JSONObject jSONObject) {
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("x");
                if (jSONArrayOptJSONArray != null) {
                    this.f37270c = b0.a(jSONArrayOptJSONArray);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("y");
                if (jSONArrayOptJSONArray2 != null) {
                    this.f37271d = b0.a(jSONArrayOptJSONArray2);
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("width");
                if (jSONArrayOptJSONArray3 != null) {
                    this.f37269b = b0.a(jSONArrayOptJSONArray3);
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("height");
                if (jSONArrayOptJSONArray4 != null) {
                    this.f37268a = b0.a(jSONArrayOptJSONArray4);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }

        public List<String> b() {
            return this.f37269b;
        }

        public List<String> c() {
            return this.f37270c;
        }

        public List<String> d() {
            return this.f37271d;
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.setting.b$b, reason: collision with other inner class name */
    public static class C0536b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f37272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private JSONArray f37273b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f37274c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f37275d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f37276e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f37277f;

        public static C0536b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            C0536b c0536b = new C0536b();
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            c0536b.f37277f = jSONObject.optString(CampaignEx.JSON_KEY_TITLE, contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_title", "string")));
            c0536b.f37272a = jSONObject.optString("cancel", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_close_close", "string")));
            c0536b.f37275d = jSONObject.optString("submit", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_close_submit", "string")));
            c0536b.f37276e = jSONObject.optString("submit_notice", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_submit_notice", "string")));
            c0536b.f37274c = jSONObject.optString("privacy", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_privacy_des", "string")));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
            c0536b.f37273b = jSONArrayOptJSONArray;
            if (jSONArrayOptJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                c0536b.f37273b = jSONArray;
                jSONArray.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_not_play", "string")));
                c0536b.f37273b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_sound_problems", "string")));
                c0536b.f37273b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_misleading", "string")));
                c0536b.f37273b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_fraud", "string")));
                c0536b.f37273b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_por_violence", "string")));
                c0536b.f37273b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_other", "string")));
            }
            return c0536b;
        }

        public String a() {
            return this.f37272a;
        }

        public JSONArray b() {
            return this.f37273b;
        }

        public String c() {
            return this.f37274c;
        }

        public String d() {
            return this.f37275d;
        }

        public String e() {
            return this.f37276e;
        }

        public String f() {
            return this.f37277f;
        }
    }

    public static String a(Context context, String str) {
        try {
            g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD != null && gVarD.G() != null) {
                String host = Uri.parse(str).getHost();
                Iterator<Map.Entry<String, String>> it = gVarD.G().entrySet().iterator();
                while (it.hasNext()) {
                    String key = it.next().getKey();
                    if (!TextUtils.isEmpty(host) && host.contains(key)) {
                        String str2 = gVarD.G().get(key);
                        return TextUtils.isEmpty(str2) ? "" : str2.replace("{gaid}", com.mbridge.msdk.foundation.tools.f.d());
                    }
                }
                return "";
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static Map<String, a> a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                a aVar = new a();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                if (jSONObjectOptJSONObject != null) {
                    aVar.a(jSONObjectOptJSONObject);
                }
                map.put(next, aVar);
            }
            return map;
        } catch (JSONException e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            return null;
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                e12.printStackTrace();
            }
            return null;
        }
    }

    private static void a(JSONObject jSONObject) {
        FastKV fastKVBuild = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
            } catch (Exception unused) {
            }
        }
        if (fastKVBuild != null) {
            try {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                if (jSONObject == null || contextD == null) {
                    return;
                }
                String strOptString = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, strOptString)) {
                    com.mbridge.msdk.foundation.same.a.V = strOptString;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                    try {
                        fastKVBuild.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    } catch (Exception unused2) {
                    }
                }
                String strOptString2 = jSONObject.optString("c");
                if (TextUtils.isEmpty(strOptString2) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f35335g, strOptString2)) {
                    return;
                }
                com.mbridge.msdk.foundation.same.a.f35335g = strOptString2;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f35335g);
                try {
                    fastKVBuild.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f35335g);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        try {
            Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (jSONObject == null || contextD2 == null) {
                return;
            }
            String strOptString3 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            if (!TextUtils.isEmpty(strOptString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, strOptString3)) {
                com.mbridge.msdk.foundation.same.a.V = strOptString3;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                SharedPreferences sharedPreferences = contextD2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    editorEdit.apply();
                }
            }
            String strOptString4 = jSONObject.optString("c");
            if (TextUtils.isEmpty(strOptString4) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f35335g, strOptString4)) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.f35335g = strOptString4;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f35335g);
            SharedPreferences sharedPreferences2 = contextD2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences2 != null) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                editorEdit2.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f35335g);
                editorEdit2.apply();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static g b(JSONObject jSONObject) {
        g gVar = null;
        arrayList = null;
        ArrayList arrayList = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            g gVar2 = new g();
            try {
                gVar2.c(jSONObject);
                gVar2.f(jSONObject.optString("cc"));
                gVar2.s(jSONObject.optString("mv_wildcard", "<mvpackage>mbridge</mvpackage>"));
                gVar2.j(jSONObject.optInt("cfc"));
                gVar2.c(jSONObject.optLong("getpf"));
                gVar2.b(jSONObject.optLong("current_time"));
                gVar2.b(jSONObject.optBoolean("cfb"));
                gVar2.a(jSONObject.optLong("awct"));
                gVar2.e(jSONObject.optLong(CampaignEx.JSON_KEY_PLCT) == 0 ? 3600L : jSONObject.optLong(CampaignEx.JSON_KEY_PLCT));
                gVar2.g(jSONObject.optBoolean("rurl"));
                gVar2.i(jSONObject.optLong("uct"));
                gVar2.h(jSONObject.optBoolean("ujds"));
                gVar2.G(jSONObject.optInt("n2"));
                gVar2.H(jSONObject.optInt("n3"));
                gVar2.r(jSONObject.optInt("is_startup_crashsystem", 1));
                gVar2.F(jSONObject.optInt("pcrn"));
                gVar2.f(jSONObject.optLong(CampaignEx.JSON_KEY_PLCTB) == 0 ? 7200L : jSONObject.optLong(CampaignEx.JSON_KEY_PLCTB));
                gVar2.F(jSONObject.optInt("pcrn", 100));
                gVar2.E(jSONObject.optInt("opent", 1));
                gVar2.g(jSONObject.optLong("sfct", 1800L));
                gVar2.U(jSONObject.optInt("upgd", 1));
                gVar2.V(jSONObject.optInt("upsrl", 1));
                gVar2.T(jSONObject.optInt("updevid", 1));
                gVar2.O(jSONObject.optInt("sc", 0));
                gVar2.S(jSONObject.optInt("up_tips", 1));
                gVar2.s(jSONObject.optInt("iseu", -1));
                gVar2.p(jSONObject.optString("jm_unit"));
                try {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("atf");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                        arrayList = new ArrayList();
                        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i11);
                            if (y0.b(strOptString)) {
                                JSONObject jSONObject2 = new JSONObject(strOptString);
                                arrayList.add(new com.mbridge.msdk.foundation.entity.a(jSONObject2.optInt("adtype"), jSONObject2.optString("unitid")));
                            }
                        }
                    }
                    if (arrayList != null) {
                        gVar2.a((List<com.mbridge.msdk.foundation.entity.a>) arrayList);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                gVar2.g(jSONObject.optInt("adct", 259200));
                gVar2.k(jSONObject.optString("confirm_title", ""));
                gVar2.i(jSONObject.optString("confirm_description", ""));
                gVar2.j(jSONObject.optString("confirm_t", ""));
                gVar2.h(jSONObject.optString("confirm_c_rv", ""));
                gVar2.g(jSONObject.optString("confirm_c_play", ""));
                gVar2.c(jSONObject.optString("adchoice_icon", ""));
                gVar2.d(jSONObject.optString("adchoice_link", ""));
                gVar2.e(jSONObject.optString("adchoice_size", ""));
                gVar2.w(jSONObject.optString("platform_logo", ""));
                gVar2.x(jSONObject.optString("platform_name", ""));
                gVar2.a(a(jSONObject.optString("cdnate_cfg", "")));
                gVar2.i(jSONObject.optInt("atrqt", 0));
                gVar2.t(jSONObject.optInt("iupdid", 0));
                gVar2.C(jSONObject.optInt("mcs", 120));
                gVar2.b(jSONObject.optString("ab_id", ""));
                gVar2.y(jSONObject.optString("rid", ""));
                gVar2.q(jSONObject.optString("log_rate", TmcConstants.COLD_OPEN_TYPE));
                gVar2.v(jSONObject.optString("omsdkjs_url", ""));
                gVar2.u(jSONObject.optString("omsdkjs_h5_url", ""));
                gVar2.J(jSONObject.optInt("rty_tk_clk", 0));
                gVar2.L(jSONObject.optInt("rty_tk_imp", 0));
                gVar2.K(jSONObject.optInt("rty_cnt", 3));
                gVar2.N(jSONObject.optInt("rty_to", 600));
                gVar2.M(jSONObject.optInt("rty_inr", 10));
                gVar2.n(jSONObject.optString("dns"));
                gVar2.v(jSONObject.optString("omsdkjs_url", ""));
                gVar2.u(jSONObject.optString("omsdkjs_h5_url", ""));
                long jOptLong = jSONObject.optLong("tcto");
                if (jOptLong == 0) {
                    gVar2.h(10L);
                } else {
                    gVar2.h(jOptLong);
                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("jt");
                    if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                        HashMap map = new HashMap();
                        for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i12);
                            map.put(jSONObjectOptJSONObject.optString("domain"), jSONObjectOptJSONObject.optString("format"));
                        }
                        gVar2.b(map);
                    }
                }
                gVar2.r(jSONObject.optString("mraid_js"));
                gVar2.B(jSONObject.optString("web_env_url"));
                int iOptInt = jSONObject.optInt("alrbs", 0);
                if (iOptInt > 2 || iOptInt < 0) {
                    iOptInt = 0;
                }
                gVar2.h(iOptInt);
                gVar2.e(jSONObject.optBoolean("GDPR_area", false));
                gVar2.l(jSONObject.optInt("ct", 120));
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("ercd");
                if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                    ArrayList<Integer> arrayList2 = new ArrayList<>();
                    for (int i13 = 0; i13 < jSONArrayOptJSONArray3.length(); i13++) {
                        int iOptInt2 = jSONArrayOptJSONArray3.optInt(i13);
                        if (iOptInt2 != 0) {
                            arrayList2.add(Integer.valueOf(iOptInt2));
                        }
                    }
                    if (arrayList2.size() > 0) {
                        arrayList2.add(-1);
                        gVar2.a(arrayList2);
                    }
                }
                String strOptString2 = jSONObject.optString("hst");
                if (!TextUtils.isEmpty(strOptString2)) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(i0.a(strOptString2));
                        Iterator<String> itKeys = jSONObject3.keys();
                        HashMap<String, String> map2 = new HashMap<>();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(jSONObject3.optString(next)) && !TextUtils.isEmpty(i0.a(jSONObject3.optString(next)))) {
                                map2.put(next, jSONObject3.optString(next));
                            }
                        }
                        if (map2.size() > 0) {
                            gVar2.a(map2);
                        }
                    } catch (Exception e12) {
                        o0.b("SETTING", e12.getMessage());
                    }
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("refactor_switch");
                if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                    for (int i14 = 0; i14 < jSONArrayOptJSONArray4.length(); i14++) {
                        JSONObject jSONObject4 = jSONArrayOptJSONArray4.getJSONObject(i14);
                        Iterator<String> itKeys2 = jSONObject4.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            if (!TextUtils.isEmpty(next2) && jSONObject4.getBoolean(next2)) {
                                gVar2.a(Integer.parseInt(next2));
                            }
                        }
                    }
                }
                try {
                    int iOptInt3 = jSONObject.optInt("lqcnt", 30);
                    int iOptInt4 = jSONObject.optInt("lqto", 5);
                    int iOptInt5 = jSONObject.optInt("lqswt", 0);
                    int iOptInt6 = jSONObject.optInt("lqtype", 1);
                    gVar2.x(iOptInt4);
                    gVar2.u(iOptInt3);
                    gVar2.w(iOptInt5);
                    gVar2.y(iOptInt6);
                    gVar2.a(jSONObject.optJSONArray("lg_bl"));
                    gVar2.b(jSONObject.optJSONArray("lg_wl"));
                    gVar2.X(jSONObject.optInt("lg_wl_rt"));
                    gVar2.P(jSONObject.optInt("srml", 8000));
                    gVar2.z(jSONObject.optInt("lrml", 8000));
                    gVar2.W(jSONObject.optInt("wgl_d_ms", 1300));
                    gVar2.m(jSONObject.optInt("dp_ct", f37213c1));
                    int i15 = Integer.parseInt(i0.a(jSONObject.optString("lqpt")));
                    if (i15 > 0 && i15 < 65535) {
                        gVar2.v(i15);
                    }
                } catch (Exception unused) {
                }
                gVar2.Y(jSONObject.optInt("wvddt", 0));
                gVar2.l(jSONObject.optString("hst_st", ""));
                gVar2.m(jSONObject.optString("hst_st_t", ""));
                try {
                    int iOptInt7 = jSONObject.optInt("l", 3);
                    boolean z10 = jSONObject.optInt(CampaignEx.JSON_KEY_AD_K, 0) == 1;
                    boolean z11 = jSONObject.optInt("m", 1) == 1;
                    gVar2.I(iOptInt7);
                    gVar2.f(z10);
                    gVar2.a(z11);
                } catch (Exception e13) {
                    o0.b("Setting", e13.getMessage());
                }
                gVar2.n(jSONObject.optInt("fbk_swt", 0));
                gVar2.a(C0536b.a(jSONObject.optJSONObject("fbk")));
                try {
                    int iOptInt8 = jSONObject.optInt("ad_connection_timeout", com.mbridge.msdk.foundation.same.a.f35343o);
                    int iOptInt9 = jSONObject.optInt("ad_read_timeout", com.mbridge.msdk.foundation.same.a.f35345q);
                    int iOptInt10 = jSONObject.optInt("ad_write_timeout", com.mbridge.msdk.foundation.same.a.f35347s);
                    int iOptInt11 = jSONObject.optInt("ad_retry_count", com.mbridge.msdk.foundation.same.a.f35346r);
                    if (iOptInt8 <= 0) {
                        iOptInt8 = com.mbridge.msdk.foundation.same.a.f35343o;
                    }
                    gVar2.c(iOptInt8);
                    if (iOptInt9 <= 0) {
                        iOptInt9 = com.mbridge.msdk.foundation.same.a.f35345q;
                    }
                    gVar2.d(iOptInt9);
                    if (iOptInt10 <= 0) {
                        iOptInt10 = com.mbridge.msdk.foundation.same.a.f35347s;
                    }
                    gVar2.f(iOptInt10);
                    if (iOptInt11 < 0) {
                        iOptInt11 = com.mbridge.msdk.foundation.same.a.f35346r;
                    }
                    gVar2.e(iOptInt11);
                    int iOptInt12 = jSONObject.optInt("max_download_task_size", 10);
                    if (iOptInt12 <= 0) {
                        iOptInt12 = 10;
                    }
                    gVar2.B(iOptInt12);
                    gVar2.A(jSONObject.optInt("max_bitmap_cache_size", 10));
                    gVar2.R(jSONObject.optInt("t_t", 3));
                    gVar2.p(jSONObject.optInt("h_t", 3));
                    gVar2.o(jSONObject.optInt("gtp"));
                    gVar2.d(jSONObject.optLong("i_i_t", 3600L));
                    gVar2.t(jSONObject.optString(com.mbridge.msdk.foundation.entity.b.JSON_KEY_C_I, ""));
                    gVar2.D(jSONObject.optInt("n_c_u_p", 0));
                } catch (Exception unused2) {
                }
                try {
                    gVar2.o(jSONObject.optString("http_track_url", ""));
                } catch (Exception unused3) {
                }
                gVar2.Q(jSONObject.optInt("st_net", 1));
                gVar2.A(jSONObject.optString("vtag", ""));
                try {
                    gVar2.c(jSONObject.optInt("check_webview", 0) != 0);
                } catch (Exception unused4) {
                    gVar2.c(false);
                }
                gVar2.z(jSONObject.optString("swxid"));
                gVar2.c(jSONObject.optJSONArray("sdk_filters"));
                try {
                    gVar2.k(jSONObject.optInt("ch_nv_im_cb", 1));
                } catch (Exception unused5) {
                    gVar2.k(1);
                }
                try {
                    gVar2.d(jSONObject.optInt("do_us_fi_re", 1) != 0);
                } catch (Exception unused6) {
                    gVar2.d(true);
                }
                try {
                    a(jSONObject);
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                String strOptString3 = jSONObject.optString("bcp");
                if (!TextUtils.isEmpty(strOptString3)) {
                    gVar2.a(com.mbridge.msdk.setting.a.a(i0.a(strOptString3)));
                }
                String strOptString4 = jSONObject.optString("monitor");
                if (!TextUtils.isEmpty(strOptString4)) {
                    gVar2.a(d.a(i0.a(strOptString4)));
                }
                return gVar2;
            } catch (Exception e15) {
                e = e15;
                gVar = gVar2;
                e.printStackTrace();
                return gVar;
            }
        } catch (Exception e16) {
            e = e16;
        }
    }

    public long A() {
        return this.L;
    }

    public void A(int i11) {
        if (i11 > 0) {
            this.f37233i0 = i11;
        }
    }

    public void A(String str) {
        this.T0 = str;
    }

    public boolean A0() {
        return this.Q;
    }

    public int B() {
        return this.N;
    }

    public void B(int i11) {
        this.f37231h0 = i11;
    }

    public void B(String str) {
        this.U0 = str;
    }

    public boolean B0() {
        return this.f37254t;
    }

    public HashMap<String, String> C() {
        return this.O;
    }

    public void C(int i11) {
        this.f37235j0 = i11;
    }

    public boolean C0() {
        return this.f37260w;
    }

    public int D() {
        return this.R;
    }

    public void D(int i11) {
        this.f37216a1 = i11;
    }

    public boolean D0() {
        return this.S;
    }

    public int E() {
        return this.U;
    }

    public void E(int i11) {
        this.f37245o0 = i11;
    }

    public boolean E0() {
        return this.f37214a;
    }

    public int F() {
        return this.V;
    }

    public void F(int i11) {
        this.f37247p0 = i11;
    }

    public boolean F0() {
        return (TextUtils.isEmpty(this.B) || TextUtils.isEmpty(this.f37266z) || TextUtils.isEmpty(this.A) || TextUtils.isEmpty(this.f37262x)) ? false : true;
    }

    public Map<String, String> G() {
        return this.Y;
    }

    public void G(int i11) {
        this.f37249q0 = i11;
    }

    public boolean G0() {
        return (TextUtils.isEmpty(this.B) || TextUtils.isEmpty(this.f37266z) || TextUtils.isEmpty(this.A) || TextUtils.isEmpty(this.f37264y)) ? false : true;
    }

    public JSONArray H() {
        return this.f37217b;
    }

    public void H(int i11) {
        this.f37251r0 = i11;
    }

    public boolean H0() {
        return this.T;
    }

    public JSONArray I() {
        return this.f37220c;
    }

    public void I(int i11) {
        this.f37263x0 = i11;
    }

    public boolean I0() {
        return this.D0;
    }

    public String J() {
        return this.Z;
    }

    public void J(int i11) {
        this.f37265y0 = i11;
    }

    public boolean J0() {
        return this.O0;
    }

    public int K() {
        return this.f37225e0;
    }

    public void K(int i11) {
        this.f37267z0 = i11;
    }

    public void K0() {
        String language = Locale.getDefault().getLanguage();
        if (!G0()) {
            if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                this.B = "Confirm to close? ";
                this.f37266z = "You will not be rewarded after closing the window";
                this.A = "Close it";
                this.f37264y = "Continue";
            } else {
                this.B = "确认关闭？";
                this.f37266z = "关闭后您将不会获得任何奖励噢~ ";
                this.A = "确认关闭";
                this.f37264y = "继续观看";
            }
        }
        if (F0()) {
            return;
        }
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.B = "Confirm to close? ";
            this.f37266z = "You will not be rewarded after closing the window";
            this.A = "Close it";
            this.f37262x = "Continue";
            return;
        }
        this.B = "确认关闭？";
        this.f37266z = "关闭后您将不会获得任何奖励噢~ ";
        this.A = "确认关闭";
        this.f37262x = "继续试玩";
    }

    public int L() {
        return this.f37227f0;
    }

    public void L(int i11) {
        this.A0 = i11;
    }

    public int M() {
        return this.f37231h0;
    }

    public void M(int i11) {
        this.B0 = i11;
    }

    public int N() {
        return this.f37235j0;
    }

    public void N(int i11) {
        this.C0 = i11;
    }

    public String O() {
        return this.f37237k0;
    }

    public void O(int i11) {
        this.E0 = i11;
    }

    public String P() {
        return this.f37239l0;
    }

    public void P(int i11) {
        this.J0 = i11;
    }

    public String Q() {
        return this.Z0;
    }

    public void Q(int i11) {
        this.K0 = i11;
    }

    public long R() {
        return this.Y0;
    }

    public void R(int i11) {
        this.M0 = i11;
    }

    public int S() {
        return this.f37216a1;
    }

    public void S(int i11) {
        this.P0 = i11;
    }

    public String T() {
        return this.f37241m0;
    }

    public void T(int i11) {
        this.Q0 = i11;
    }

    public String U() {
        return this.f37243n0;
    }

    public void U(int i11) {
        this.R0 = i11;
    }

    public int V() {
        return this.f37245o0;
    }

    public void V(int i11) {
        this.S0 = i11;
    }

    public int W() {
        return this.f37247p0;
    }

    public void W(int i11) {
        this.V0 = i11;
    }

    public int X() {
        return this.f37249q0;
    }

    public void X(int i11) {
        this.W0 = i11;
    }

    public int Y() {
        return this.f37251r0;
    }

    public void Y(int i11) {
        this.X0 = i11;
    }

    public long Z() {
        return this.f37257u0;
    }

    public String a() {
        return this.f37222d;
    }

    public void a(int i11) {
        this.f37261w0.add(Integer.valueOf(i11));
    }

    public void a(long j11) {
        this.f37246p = j11;
    }

    public void a(com.mbridge.msdk.setting.a aVar) {
        this.f37248q = aVar;
    }

    public void a(C0536b c0536b) {
        this.J = c0536b;
    }

    public void a(d dVar) {
        this.I = dVar;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.H = arrayList;
    }

    public void a(HashMap<String, String> map) {
        this.O = map;
    }

    public void a(List<com.mbridge.msdk.foundation.entity.a> list) {
        this.f37242n = list;
    }

    public void a(Map<String, a> map) {
        this.f37252s = map;
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000088");
        }
        this.f37217b = jSONArray;
    }

    public void a(boolean z10) {
        this.Q = z10;
    }

    public long a0() {
        if (this.f37259v0 <= 0) {
            this.f37259v0 = 7200L;
        }
        return this.f37259v0;
    }

    public String b() {
        return this.f37232i;
    }

    public void b(long j11) {
        this.F = j11;
    }

    public void b(String str) {
        this.f37222d = str;
    }

    public void b(Map<String, String> map) {
        this.Y = map;
    }

    public void b(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000041");
            jSONArray.put("2000042");
            jSONArray.put("2000032");
            jSONArray.put("2000079");
        }
        this.f37220c = jSONArray;
    }

    public void b(boolean z10) {
        this.f37254t = z10;
    }

    public boolean b(int i11) {
        return this.f37261w0.contains(Integer.valueOf(i11));
    }

    public int b0() {
        return this.f37263x0;
    }

    public String c() {
        return this.f37234j;
    }

    public void c(int i11) {
        this.f37224e = i11;
    }

    public void c(long j11) {
        this.L = j11;
    }

    public void c(String str) {
        this.f37232i = str;
    }

    public void c(JSONArray jSONArray) {
        this.F0 = jSONArray;
    }

    public void c(JSONObject jSONObject) {
        this.G0 = jSONObject;
    }

    public void c(boolean z10) {
        this.f37260w = z10;
    }

    public int c0() {
        return this.f37265y0;
    }

    public String d() {
        return this.f37236k;
    }

    public void d(int i11) {
        this.f37226f = i11;
    }

    public void d(long j11) {
        this.Y0 = j11;
    }

    public void d(String str) {
        this.f37234j = str;
    }

    public void d(boolean z10) {
        this.S = z10;
    }

    public int d0() {
        return this.f37267z0;
    }

    public int e() {
        return this.f37238l;
    }

    public void e(int i11) {
        this.f37228g = i11;
    }

    public void e(long j11) {
        this.f37257u0 = j11;
    }

    public void e(String str) {
        this.f37236k = str;
    }

    public void e(boolean z10) {
        this.f37214a = z10;
    }

    public int e0() {
        return this.A0;
    }

    public int f() {
        return this.f37240m;
    }

    public void f(int i11) {
        this.f37230h = i11;
    }

    public void f(long j11) {
        this.f37259v0 = j11;
    }

    public void f(String str) {
        this.f37250r = str;
    }

    public void f(boolean z10) {
        this.T = z10;
    }

    public int f0() {
        return this.B0;
    }

    public List<com.mbridge.msdk.foundation.entity.a> g() {
        return this.f37242n;
    }

    public void g(int i11) {
        this.f37238l = i11;
    }

    public void g(long j11) {
        this.I0 = j11;
    }

    public void g(String str) {
        this.f37262x = str;
    }

    public void g(boolean z10) {
        this.D0 = z10;
    }

    public int g0() {
        return this.C0;
    }

    public int h() {
        return this.f37244o;
    }

    public void h(int i11) {
        this.f37240m = i11;
    }

    public void h(long j11) {
        this.L0 = j11;
    }

    public void h(String str) {
        this.f37264y = str;
    }

    public void h(boolean z10) {
        this.O0 = z10;
    }

    public int h0() {
        return this.E0;
    }

    public long i() {
        return this.f37246p;
    }

    public void i(int i11) {
        this.f37244o = i11;
    }

    public void i(long j11) {
        this.N0 = j11;
    }

    public void i(String str) {
        this.f37266z = str;
    }

    public JSONArray i0() {
        return this.F0;
    }

    public com.mbridge.msdk.setting.a j() {
        return this.f37248q;
    }

    public void j(int i11) {
        this.f37256u = i11;
    }

    public void j(String str) {
        this.A = str;
    }

    public JSONObject j0() {
        return this.G0;
    }

    public String k() {
        return this.f37250r;
    }

    public void k(int i11) {
        this.f37258v = i11;
    }

    public void k(String str) {
        this.B = str;
    }

    public String k0() {
        return this.H0;
    }

    public Map<String, a> l() {
        return this.f37252s;
    }

    public void l(int i11) {
        this.C = i11;
    }

    public void l(String str) {
        this.D = str;
    }

    public long l0() {
        return this.I0;
    }

    public int m() {
        return this.f37256u;
    }

    public void m(int i11) {
        this.G = i11;
        com.mbridge.msdk.click.utils.a.f34446c = i11;
    }

    public void m(String str) {
        this.E = str;
    }

    public int m0() {
        return this.J0;
    }

    public int n() {
        return this.f37258v;
    }

    public void n(int i11) {
        this.K = i11;
    }

    public void n(String str) {
        this.f37219b1 = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e.a().b(i0.a(str));
    }

    public int n0() {
        return this.K0;
    }

    public String o() {
        return this.f37262x;
    }

    public void o(int i11) {
        this.M = i11;
        com.mbridge.msdk.foundation.same.net.utils.d.h().d(i11);
    }

    public void o(String str) {
        this.P = str;
    }

    public long o0() {
        return this.L0 * 1000;
    }

    public String p() {
        return this.f37264y;
    }

    public void p(int i11) {
        this.N = i11;
    }

    public void p(String str) {
        this.X = str;
    }

    public int p0() {
        return this.M0;
    }

    public String q() {
        return this.f37266z;
    }

    public void q(int i11) {
        this.R = i11;
    }

    public void q(String str) {
        this.Z = str;
    }

    public long q0() {
        return this.N0;
    }

    public String r() {
        return this.A;
    }

    public void r(int i11) {
        this.U = i11;
    }

    public void r(String str) {
        this.f37237k0 = str;
    }

    public int r0() {
        return this.P0;
    }

    public String s() {
        return this.B;
    }

    public void s(int i11) {
        this.V = i11;
    }

    public void s(String str) {
        this.f37239l0 = str;
    }

    public int s0() {
        return this.Q0;
    }

    public int t() {
        return this.C;
    }

    public void t(int i11) {
        this.W = i11;
    }

    public void t(String str) {
        this.Z0 = str;
    }

    public int t0() {
        return this.R0;
    }

    public String toString() {
        return " cfc=" + this.f37256u + " getpf=" + this.L + " rurl=" + this.D0;
    }

    public String u() {
        return this.D;
    }

    public void u(int i11) {
        this.f37215a0 = i11;
    }

    public void u(String str) {
        this.f37241m0 = str;
    }

    public int u0() {
        return this.S0;
    }

    public String v() {
        return this.E;
    }

    public void v(int i11) {
        this.f37218b0 = i11;
        com.mbridge.msdk.foundation.same.net.utils.d.h().b(i11);
        com.mbridge.msdk.foundation.same.net.utils.d.h().c(i11);
    }

    public void v(String str) {
        this.f37243n0 = str;
    }

    public String v0() {
        return this.T0;
    }

    public long w() {
        return this.F;
    }

    public void w(int i11) {
        this.f37221c0 = i11;
    }

    public void w(String str) {
        this.f37253s0 = str;
    }

    public String w0() {
        return this.U0;
    }

    public ArrayList<Integer> x() {
        return this.H;
    }

    public void x(int i11) {
        this.f37223d0 = i11;
    }

    public void x(String str) {
        this.f37255t0 = str;
    }

    public int x0() {
        return this.V0;
    }

    public d y() {
        return this.I;
    }

    public void y(int i11) {
        this.f37225e0 = i11;
    }

    public void y(String str) {
        this.H0 = str;
    }

    public int y0() {
        return this.W0;
    }

    public C0536b z() {
        return this.J;
    }

    public void z(int i11) {
        this.f37227f0 = i11;
    }

    public void z(String str) {
        if (TextUtils.isEmpty(this.f37229g0)) {
            return;
        }
        this.f37229g0 = str;
        if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.c.m().i())) {
            com.mbridge.msdk.foundation.controller.c.m().d(this.f37229g0);
        }
    }

    public int z0() {
        return this.X0;
    }
}
