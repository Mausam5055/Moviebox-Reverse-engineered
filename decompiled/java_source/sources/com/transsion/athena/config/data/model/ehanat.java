package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ga.AthenaAnalytics;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import javax.crypto.KeyGenerator;
import k4.a;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class ehanat {
    private static String A = "";
    private static boolean B = false;
    public static boolean C = false;
    public static boolean D = false;
    public static boolean E = false;
    public static boolean F = false;
    public static boolean G = true;
    public static boolean H = true;
    public static boolean I = true;
    public static boolean J = true;
    public static boolean K = false;
    private static JSONObject L = new JSONObject();
    private static JSONObject M = new JSONObject();
    private static JSONObject N = new JSONObject();
    private static JSONObject O = new JSONObject();
    private static JSONObject P = new JSONObject();
    private static final ArrayMap<Integer, String> Q = new ArrayMap<>();
    public static boolean R = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f42600a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f42601b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f42602c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f42603d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f42604e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f42605f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f42606g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f42607h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f42608i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f42609j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f42610k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f42611l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static byte[] f42612m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static byte[] f42613n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static byte[] f42614o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f42615p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static String f42616q = "online";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static long f42617r = 30000;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f42618s = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static String f42619t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f42620u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static boolean f42621v = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f42622w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static int f42623x = 10485760;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static int f42624y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static short f42625z;

    public static String a(int i11) {
        ArrayMap<Integer, String> arrayMap = Q;
        return arrayMap.containsKey(Integer.valueOf(i11)) ? arrayMap.get(Integer.valueOf(i11)) : "";
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return a(false) + f42605f;
        }
        return str + f42605f;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0036  */
    @NonNull
    public static String a(boolean z10) {
        byte b11;
        String str;
        String str2 = f42616q;
        int iHashCode = str2.hashCode();
        if (iHashCode != -1012222381) {
            if (iHashCode != 99349) {
                if (iHashCode == 3556498 && str2.equals(OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST)) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
            } else if (str2.equals("dev")) {
                b11 = 0;
            } else {
                b11 = -1;
            }
        } else if (str2.equals("online")) {
            b11 = 2;
        } else {
            b11 = -1;
        }
        if (b11 == 0) {
            str = f42600a;
        } else if (b11 != 1) {
            str = z10 ? f42603d : f42604e;
        } else {
            str = z10 ? f42601b : f42602c;
        }
        try {
            if (anehat.a(AthenaAnalytics.J(), "debug.athena.test_mode", false).booleanValue()) {
                str = z10 ? f42601b : f42602c;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return "https://" + str;
    }

    public static void a() {
        f42622w = true;
    }

    public static void a(int i11, String str) {
        Q.put(Integer.valueOf(i11), str);
    }

    public static void a(long j11) {
        if (j11 < 30000) {
            j11 = 30000;
        }
        f42617r = j11;
    }

    public static void a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                M.put(str, obj);
            }
        } catch (JSONException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    public static void a(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.isEmpty(f42618s) || z10) {
            f42618s = str;
        }
    }

    public static void a(short s11, String str) {
        f42625z = s11;
        A = str;
    }

    private static boolean a(Object obj) {
        int length = obj.toString().getBytes(StandardCharsets.UTF_8).length;
        if (length <= 2000) {
            return true;
        }
        com.transsion.athena.taaneh.aethna.b(String.format(Locale.getDefault(), "custom param is too long,limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length)));
        return false;
    }

    public static String b() {
        return A;
    }

    public static String b(String str) {
        return str + f42608i;
    }

    public static void b(int i11) {
        if (i11 < 0) {
            i11 = 0;
        } else if (i11 > 200) {
            i11 = 200;
        }
        f42624y = i11;
    }

    public static void b(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                P.put(str, obj);
            }
        } catch (JSONException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    public static void b(boolean z10) {
        f42621v = z10;
    }

    public static short c() {
        return f42625z;
    }

    public static void c(int i11) {
        if (i11 < 2097152) {
            f42623x = 2097152;
        }
        f42623x = i11;
    }

    public static void c(String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        f42600a = jSONObject.getString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
        f42601b = jSONObject.getString("tu");
        f42602c = jSONObject.getString("tc");
        f42603d = jSONObject.getString("ou");
        f42604e = jSONObject.getString("oc");
        f42605f = jSONObject.getString("c").replace("v6", "v7");
        f42606g = jSONObject.getString("g") + "v2";
        String string = jSONObject.getString(TmcStartParams.KEY_URL_SHORT);
        f42607h = string;
        f42608i = string.replace("v2", "v3");
        f42609j = jSONObject.getString("fc");
        f42610k = jSONObject.getString("fd");
        f42611l = jSONObject.getString("fe");
        f42613n = jSONObject.getString("w").getBytes();
        f42614o = jSONObject.getString("iv").getBytes();
        a aVarA = a.a(AthenaAnalytics.J());
        try {
            if (aVarA.e("athena_def") != 0) {
                f42612m = f42613n;
                return;
            }
            String strH = aVarA.h("athena_ea");
            if (TextUtils.isEmpty(strH)) {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                keyGenerator.init(128);
                strH = anehat.c(keyGenerator.generateKey().getEncoded());
                aVarA.c("athena_ea", strH);
            }
            f42612m = anehat.a(strH);
        } catch (Exception unused) {
            aVarA.b("athena_def", 1);
            f42612m = f42613n;
        }
    }

    public static void c(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                O.put(str, obj);
            }
        } catch (JSONException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    public static void c(boolean z10) {
        f42615p = z10;
    }

    public static JSONObject d() {
        return M;
    }

    public static void d(String str) {
        f42619t = str;
    }

    public static synchronized void d(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (a(obj)) {
                    L.put(str, obj);
                }
            } catch (JSONException e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            }
        }
    }

    public static void d(boolean z10) {
        com.transsion.athena.taaneh.aethna.c("setEnable isEnable = " + z10);
        f42620u = z10;
    }

    public static JSONObject e() {
        return P;
    }

    public static void e(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                N.put(str, obj);
            }
        } catch (JSONException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    public static void e(boolean z10) {
        B = z10;
    }

    public static JSONObject f() {
        return O;
    }

    public static void f(boolean z10) {
        f42616q = z10 ? OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST : "online";
    }

    public static String g() {
        return f42618s;
    }

    public static synchronized JSONObject h() {
        return L;
    }

    public static String i() {
        return a(false) + f42606g;
    }

    public static int j() {
        return f42624y;
    }

    public static int k() {
        return f42623x;
    }

    public static JSONObject l() {
        return N;
    }

    public static String m() {
        return f42619t;
    }

    public static long n() {
        return f42617r;
    }

    public static String o() {
        return a(true) + f42608i;
    }

    public static boolean p() {
        return f42621v;
    }

    public static boolean q() {
        return f42615p;
    }

    public static boolean r() {
        return f42620u;
    }

    public static boolean s() {
        return B;
    }

    public static boolean t() {
        return TextUtils.equals(f42616q, "online");
    }

    public static boolean u() {
        return f42622w;
    }

    public static boolean v() {
        return TextUtils.equals(f42616q, OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST);
    }
}
