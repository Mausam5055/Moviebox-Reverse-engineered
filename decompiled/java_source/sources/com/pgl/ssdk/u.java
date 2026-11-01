package com.pgl.ssdk;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes5.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f40211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long[][] f40212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f40213c;

    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextUtils.isEmpty(u.f40213c)) {
                String unused = u.f40213c = u.d();
                u0.b(x.b(), "romtype", u.f40213c);
            }
        }
    }

    public static String a(Context context) {
        String str = f40211a;
        if (str != null) {
            return str;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            f40211a = Settings.Global.getString(context.getContentResolver(), "boot_count");
        } else {
            f40211a = "lowapi";
        }
        return f40211a;
    }

    public static boolean b(Context context) {
        Object objMeta = com.pgl.ssdk.ces.a.meta(156, context, null);
        if (objMeta instanceof Boolean) {
            return ((Boolean) objMeta).booleanValue();
        }
        return false;
    }

    private static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(f40213c)) {
            return f40213c;
        }
        String strA = u0.a(x.b(), "romtype", (String) null);
        f40213c = strA;
        if (!TextUtils.isEmpty(strA)) {
            return f40213c;
        }
        o0.b(new a());
        return "";
    }

    private static boolean c(String str) {
        try {
            return new File(str).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static JSONArray[] c(Context context) {
        if (f40212b == null) {
            f40212b = (long[][]) com.pgl.ssdk.ces.a.meta(157, context, null);
        }
        long[][] jArr = f40212b;
        if (jArr == null || jArr.length != 2) {
            f40212b = null;
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        long[][] jArr2 = f40212b;
        long[] jArr3 = jArr2[0];
        long[] jArr4 = jArr2[1];
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        for (int i11 = 0; i11 < jArr3.length; i11++) {
            try {
                jSONArray.put(i11, jCurrentTimeMillis - jArr3[i11]);
                jSONArray2.put(i11, jCurrentTimeMillis - jArr4[i11]);
            } catch (JSONException unused) {
            }
        }
        return new JSONArray[]{jSONArray, jSONArray2};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d() {
        if (b("com.samsung.android.knox.SemPersonaManager") || b("com.samsung.android.knoxguard.KnoxGuardManager")) {
            return "samsung";
        }
        if (b("androidhnext.Manifest") || b("androidhnext.R")) {
            return "honor";
        }
        if (b("androidhwext.Manifest") || b("androidhwext.R")) {
            return "huawei";
        }
        if (b("oppo.Manifest") || b("oppo.R") || b("oplus.Manifest") || b("oplus.R") || b("com.oneplus.Manifest") || b("com.oneplus.R")) {
            return "oppo";
        }
        if (b("vivo.Manifest") || b("vivo.R")) {
            return "vivo";
        }
        if (b("miui.Manifest") || b("miui.R") || b("miui.os.Build")) {
            return "xiaomi";
        }
        if (b("lineageos.platform.Manifest") || b("lineageos.platform.R")) {
            return "lineage";
        }
        if (c("/system/framework/com.motorola.motosignature.jar")) {
            return "moto";
        }
        return (c("/system/framework/transsion-framework.jar") || c("/system/framework/transsion-services.jar")) ? "transsion" : OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER;
    }

    public static boolean d(Context context) {
        Object objMeta = com.pgl.ssdk.ces.a.meta(155, context, null);
        if (objMeta instanceof Boolean) {
            return ((Boolean) objMeta).booleanValue();
        }
        return false;
    }

    public static int e() {
        return ((Integer) com.pgl.ssdk.ces.a.meta(162, null, null)).intValue();
    }
}
