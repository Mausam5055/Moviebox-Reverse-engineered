package com.mbridge.msdk.setting;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.w0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f37320a = "h";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile h f37321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile g f37322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HashMap<String, l> f37323d = new HashMap<>();

    private h() {
    }

    public static void a(Context context, String str) {
        FastKV fastKVBuild;
        Map<String, Object> all = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "mbridge").build();
            } catch (Exception unused) {
                fastKVBuild = null;
            }
        } else {
            fastKVBuild = null;
        }
        if (fastKVBuild == null) {
            try {
                Map<String, ?> all2 = context.getSharedPreferences("mbridge", 0).getAll();
                for (String str2 : all2.keySet()) {
                    if (str2.startsWith(str + "_")) {
                        f37323d.put(str2, l.l((String) all2.get(str2)));
                    }
                }
                return;
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        try {
            all = fastKVBuild.getAll();
        } catch (Exception unused2) {
        }
        if (all != null) {
            try {
                for (String str3 : all.keySet()) {
                    if (str3.startsWith(str + "_")) {
                        f37323d.put(str3, l.l((String) all.get(str3)));
                    }
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public static h b() {
        if (f37321b == null) {
            synchronized (h.class) {
                try {
                    if (f37321b == null) {
                        f37321b = new h();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f37321b;
    }

    private l b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = com.mbridge.msdk.foundation.controller.c.m().b();
        }
        String str3 = str + "_" + str2;
        if (f37323d.containsKey(str3)) {
            return f37323d.get(str3);
        }
        l lVarL = null;
        try {
            lVarL = l.l(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str3));
            f37323d.put(str3, lVarL);
            return lVarL;
        } catch (Exception e11) {
            l lVar = lVarL;
            e11.printStackTrace();
            return lVar;
        }
    }

    public g a() {
        return i.a();
    }

    public l a(String str, String str2) {
        return b(str, str2);
    }

    public JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return jSONObject2;
        }
        if (jSONObject2 != null && jSONObject2.length() != 0) {
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    if ("unitSetting".equals(next) && jSONObject.has("unitSetting")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("unitSetting");
                        jSONArray.put(0, a((JSONObject) jSONArray.get(0), (JSONObject) jSONObject2.getJSONArray("unitSetting").get(0)));
                        jSONObject.put(next, jSONArray);
                    } else {
                        jSONObject.put(next, jSONObject2.opt(next));
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        return jSONObject;
    }

    public void a(String str) {
        i.a(str, this);
    }

    public void a(String str, String str2, String str3) {
        String str4 = str + "_" + str2;
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str4, str3);
        f37323d.put(str4, l.l(str3));
    }

    public boolean a(String str, int i11, String str2) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            String str3 = str + "_" + i11 + "_" + str2;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j11 = 0;
            long jLongValue = ((Long) w0.a(contextD, str3, 0L)).longValue();
            g gVarD = d(str);
            if (gVarD == null) {
                gVarD = b().a();
            } else {
                j11 = jLongValue;
            }
            if (j11 + (gVarD.l0() * 1000) > jCurrentTimeMillis) {
                return false;
            }
            w0.b(contextD, str3, Long.valueOf(jCurrentTimeMillis));
            return true;
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public g b(String str) {
        g gVarD;
        try {
            return (TextUtils.isEmpty(str) || (gVarD = d(str)) == null) ? a() : gVarD;
        } catch (Exception unused) {
            return a();
        }
    }

    public g c() {
        return f37322c != null ? f37322c : a();
    }

    public l c(String str, String str2) {
        l lVarA = a(str, str2);
        return lVarA == null ? l.N() : lVarA;
    }

    public String c(String str) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("ivreward_" + str);
    }

    public g d(String str) {
        if (f37322c == null) {
            try {
                String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str);
                if (!TextUtils.isEmpty(strA)) {
                    JSONObject jSONObject = new JSONObject(strA);
                    if (jSONObject.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                        jSONObject.remove(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                    }
                    if (jSONObject.has("c")) {
                        jSONObject.remove("c");
                    }
                    f37322c = g.C(jSONObject.toString());
                    if (f37322c != null) {
                        f37322c.K0();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return f37322c;
    }

    public l d(String str, String str2) {
        l lVarE = e(str, str2);
        return lVarE == null ? l.N() : lVarE;
    }

    public l e(String str, String str2) {
        l lVarB = b(str, str2);
        if (lVarB != null && lVarB.L() == 0) {
            lVarB.d(1);
        }
        return lVarB;
    }

    public String e(String str) {
        if (str == null) {
            return "";
        }
        try {
            String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str);
            return strA == null ? "" : strA;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            return "";
        }
    }

    public String f(String str, String str2) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str + "_" + str2);
    }

    public boolean f(String str) {
        g gVarD = d(str);
        if (gVarD != null) {
            long jA = gVarD.A() * 1000;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jW = gVarD.w() + jA;
            if (jW > jCurrentTimeMillis) {
                o0.c(f37320a, "app setting nexttime is not ready  [settingNextRequestTime= " + jW + " currentTime = " + jCurrentTimeMillis + "]");
                return false;
            }
        }
        o0.c(f37320a, "app setting timeout or not exists");
        return true;
    }

    public void g(String str) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().c("ivreward_" + str);
    }

    public boolean g(String str, String str2) {
        g gVarD = d(str2);
        if (f(str2) && a(str2, 1, str)) {
            new j().b(com.mbridge.msdk.foundation.controller.c.m().d(), str2, com.mbridge.msdk.foundation.controller.c.m().c());
        }
        l lVarE = e(str2, str);
        if (gVarD != null && lVarE != null) {
            long jQ0 = gVarD.q0() * 1000;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jO = lVarE.o() + jQ0;
            if (jO > jCurrentTimeMillis) {
                o0.c(f37320a, "unit setting  nexttime is not ready  [settingNextRequestTime= " + jO + " currentTime = " + jCurrentTimeMillis + "]");
                return false;
            }
        }
        o0.c(f37320a, "unit setting timeout or not exists");
        return true;
    }

    public void h(String str) {
        try {
            String strE = e(str);
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strE);
            jSONObject.put("current_time", System.currentTimeMillis());
            h(str, jSONObject.toString());
        } catch (Throwable th2) {
            o0.b(f37320a, th2.getMessage());
        }
    }

    public void h(String str, String str2) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str, str2);
        f37322c = g.C(str2);
        if (f37322c != null) {
            f37322c.K0();
        }
        i.a(f37322c);
        e0.a().a(f37322c.Q());
    }

    public void i(String str, String str2) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("ivreward_" + str, str2);
    }

    public void j(String str, String str2) {
        try {
            String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str + "_" + str2);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strA);
            jSONObject.put("current_time", System.currentTimeMillis());
            a(str, str2, jSONObject.toString());
        } catch (Throwable th2) {
            o0.b(f37320a, th2.getMessage());
        }
    }
}
