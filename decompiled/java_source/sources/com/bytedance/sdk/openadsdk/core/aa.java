package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.os.SystemClock;
import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class aa {
    private static boolean EjP;
    private static String Sj;
    private static String TKC;
    private static String sP;

    private static Context EjP(Context context) {
        return context == null ? dNu.Sj() : context;
    }

    @SuppressLint({"HardwareIds"})
    private static void HiB(Context context) {
        Context contextEjP;
        if (EjP || (contextEjP = EjP(context)) == null) {
            return;
        }
        sP = String.valueOf(Build.TIME);
        TKC = TKC.Sj(contextEjP).sP("uuid", (String) null);
        EjP = true;
    }

    public static String Sj(Context context) {
        if (!TextUtils.isEmpty(Sj)) {
            return Sj;
        }
        vS(context);
        return Sj;
    }

    public static void Sj() {
        if (TextUtils.isEmpty(Sj)) {
            return;
        }
        com.bytedance.sdk.openadsdk.utils.JcM.sP(new com.bytedance.sdk.component.Dq.Dq("update_did") { // from class: com.bytedance.sdk.openadsdk.core.aa.1
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(EventConstants.KEY_TIME, SystemClock.elapsedRealtime());
                    jSONObject.put("abcd", aa.Sj);
                    TKC.Sj(dNu.Sj()).Sj("abcd", com.bytedance.sdk.component.utils.Sj.Sj(jSONObject).toString());
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void Sj(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!str.equals(Sj)) {
                Sj = str;
            }
            Sj();
        }
        if (TextUtils.isEmpty(Sj)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.uA.TKC.sP(Sj);
        Ym.Sj(Sj);
    }

    public static String TKC(Context context) {
        if (TextUtils.isEmpty(TKC) && !EjP) {
            synchronized (aa.class) {
                try {
                    if (!EjP) {
                        HiB(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return TKC;
    }

    public static String sP() {
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            String language = locale != null ? locale.getLanguage() : "";
            if (locale == null || !"zh".equals(language)) {
                return language;
            }
            String string = locale.toString();
            if (locale.toString().length() >= 5) {
                string = string.substring(0, 5);
            }
            return Locale.SIMPLIFIED_CHINESE.toString().equals(string) ? "zh" : "zh-Hant";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String sP(Context context) {
        if (sP == null && !EjP) {
            synchronized (aa.class) {
                try {
                    if (!EjP) {
                        HiB(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    private static void vS(Context context) {
        Context contextEjP = EjP(context);
        if (contextEjP == null) {
            return;
        }
        String strSP = TKC.Sj(contextEjP).sP("abcd", (String) null);
        if (TextUtils.isEmpty(strSP)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strSP);
            int iOptInt = jSONObject.optInt("cypher", -1);
            String strOptString = jSONObject.optString("message");
            if (iOptInt == 3) {
                String strTKC = com.bytedance.sdk.component.utils.Sj.TKC(strOptString);
                if (TextUtils.isEmpty(strTKC)) {
                    return;
                }
                Sj = new JSONObject(strTKC).optString("abcd");
                Sj();
            }
        } catch (Throwable unused) {
        }
    }
}
