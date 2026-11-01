package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import w5.a;

/* JADX INFO: loaded from: classes3.dex */
public class uA {
    public static Fmk Sj;
    private static boolean dNu;
    public static final Set<String> sP = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.uA.1
        {
            add("8025677");
            add("5001121");
        }
    };
    private boolean Dq;

    @NonNull
    private String EjP;
    private boolean Fmk;
    private String HiB;
    private int Jcg;
    private boolean RiZ;

    @Nullable
    private String TEQ;
    private boolean TKC;
    private String TzV;
    private int Ym;
    private Integer Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f21101aa;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.aa.TKC.TKC f21102dx;
    private String sU;
    private Bitmap sef;

    @Nullable
    private String uA;
    private Integer uvD;

    @NonNull
    private String vS;
    private volatile ConcurrentHashMap<String, com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj> zR;

    private static class Sj {
        private static final uA Sj = new uA();
    }

    private uA() {
        this.TKC = false;
        this.Ym = 0;
        this.f21101aa = true;
        this.Fmk = false;
        this.sef = null;
        this.Zq = null;
        this.uvD = -1;
        this.zR = null;
        try {
            a.a(dNu.Sj());
        } catch (Throwable unused) {
        }
    }

    public static Pair<String, Long> EjP(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObjectAa = aa(str);
            if (jSONObjectAa == null) {
                return null;
            }
            return new Pair<>(jSONObjectAa.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE), Long.valueOf(jSONObjectAa.getLong(EventConstants.KEY_TIME)));
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.GlobalInfo", e11.getMessage());
            return null;
        }
    }

    public static int HiB() {
        try {
            String strSj = Sj("domain_index", Long.MAX_VALUE);
            if (TextUtils.isEmpty(strSj)) {
                return 0;
            }
            return Integer.valueOf(strSj).intValue();
        } catch (Throwable th2) {
            th2.getMessage();
            return 0;
        }
    }

    public static boolean Jcg(String str) {
        return (TextUtils.isEmpty(str) || !com.bytedance.sdk.openadsdk.utils.kF.Sj || str.contains("sp_full_screen_video") || str.contains("sp_reward_video") || str.contains("tt_openad") || str.contains("pag_sp_bad_par")) ? false : true;
    }

    private String Sj(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String Sj(String str, long j11) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObjectAa = aa(str);
            if (jSONObjectAa == null) {
                return null;
            }
            if (System.currentTimeMillis() - jSONObjectAa.getLong(EventConstants.KEY_TIME) <= j11) {
                return jSONObjectAa.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            }
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.GlobalInfo", e11.getMessage());
        }
        return null;
    }

    public static void Sj(int i11) {
        if (i11 >= 0) {
            Sj("domain_index", String.valueOf(i11));
        }
    }

    public static void Sj(Fmk fmk) {
        Sj = fmk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(Integer num, int i11) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_privacy", "tt_gdpr", Integer.valueOf(i11));
            com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(4, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_privacy", "tt_gdpr", -1) != i11) {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_privacy", "tt_gdpr", Integer.valueOf(i11));
            com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(4, true);
        }
    }

    public static void Sj(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, str2);
            jSONObject.put(EventConstants.KEY_TIME, System.currentTimeMillis());
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", str, jSONObject.toString());
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.GlobalInfo", e11.getMessage());
        }
    }

    private static void TEQ(String str) {
        Fmk fmk;
        if (TextUtils.isEmpty(str) && (fmk = Sj) != null) {
            fmk.fail(4000, "appid cannot be empty");
        }
        com.bytedance.sdk.component.utils.sU.sP("TTAD.GlobalInfo", "appid cannot be empty");
    }

    private static void Ym(String str) {
        if (TextUtils.isEmpty(str) || str.length() <= 1000) {
            return;
        }
        Fmk fmk = Sj;
        if (fmk != null) {
            fmk.fail(4000, "Data is very long, the longest is 1000");
        }
        com.bytedance.sdk.component.utils.sU.sP("TTAD.GlobalInfo", "Data is very long, the longest is 1000");
    }

    private static JSONObject aa(String str) {
        String strSP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("sp_global_file", str, null);
        if (TextUtils.isEmpty(strSP)) {
            return null;
        }
        try {
            return new JSONObject(strSP);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.GlobalInfo", e11.getMessage());
            return null;
        }
    }

    public static boolean kF() {
        return dNu;
    }

    @NonNull
    public static uA sP() {
        return Sj.Sj;
    }

    public static void sP(int i11) {
        if (i11 >= 0) {
            Sj("config_fail_times", String.valueOf(i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uA(String str) {
        if (TextUtils.isEmpty(this.TEQ)) {
            this.TEQ = str;
        } else {
            try {
                HashMap map = new HashMap();
                JSONArray jSONArray = new JSONArray(this.TEQ);
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("name");
                        if (!TextUtils.isEmpty(strOptString)) {
                            map.put(strOptString, jSONObjectOptJSONObject);
                        }
                    }
                }
                JSONArray jSONArray2 = new JSONArray(str);
                for (int i12 = 0; i12 < jSONArray2.length(); i12++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArray2.optJSONObject(i12);
                    if (jSONObjectOptJSONObject2 != null) {
                        String strOptString2 = jSONObjectOptJSONObject2.optString("name");
                        String strOptString3 = jSONObjectOptJSONObject2.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        if (!TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3)) {
                            map.put(strOptString2, jSONObjectOptJSONObject2);
                        }
                    }
                }
                Collection collectionValues = map.values();
                JSONArray jSONArray3 = new JSONArray();
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    jSONArray3.put((JSONObject) it.next());
                }
                this.TEQ = jSONArray3.toString();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", "extra_data", this.TEQ);
        }
    }

    public static void uP() {
        if (Build.VERSION.SDK_INT == 26 && "MI 6".equals(Build.MODEL)) {
            dNu = true;
        }
    }

    public static int vS() {
        try {
            String strSj = Sj("config_fail_times", Long.MAX_VALUE);
            if (TextUtils.isEmpty(strSj)) {
                return 0;
            }
            return Integer.valueOf(strSj).intValue();
        } catch (Throwable th2) {
            th2.getMessage();
            return 0;
        }
    }

    @NonNull
    public String Dq() {
        if (TextUtils.isEmpty(this.vS)) {
            this.vS = Sj(dNu.Sj());
        }
        return this.vS;
    }

    public void Dq(String str) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", "adx_id", str);
        }
        this.TzV = str;
    }

    @Nullable
    public String EjP() {
        if (TextUtils.isEmpty(this.EjP)) {
            String strSj = Sj("app_id", Long.MAX_VALUE);
            if (!TextUtils.isEmpty(strSj)) {
                this.EjP = strSj;
            }
        }
        return this.EjP;
    }

    public void EjP(final int i11) {
        if (i11 == 1) {
            i11 = 0;
        } else if (i11 == 0) {
            i11 = 1;
        }
        if (i11 == 0 || i11 == 1 || i11 == -1) {
            final Integer num = this.Zq;
            if (num == null || num.intValue() != i11) {
                this.Zq = Integer.valueOf(i11);
                if (com.bytedance.sdk.openadsdk.utils.JcM.vS()) {
                    sef.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.uA.2
                        @Override // java.lang.Runnable
                        public void run() {
                            uA.this.Sj(num, i11);
                        }
                    });
                } else {
                    Sj(num, i11);
                }
            }
        }
    }

    public boolean Fmk() {
        return com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", "is_paid", false) : this.Dq;
    }

    public com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj HiB(String str) {
        try {
            if (this.zR == null || str == null) {
                return null;
            }
            return this.zR.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void HiB(int i11) {
        this.uvD = Integer.valueOf(i11);
    }

    public String Jcg() {
        String str = this.HiB;
        if (str != null) {
            return str;
        }
        String strSj = Sj("mediation_info", Long.MAX_VALUE);
        this.HiB = strSj;
        if (strSj == null) {
            this.HiB = "";
        }
        return this.HiB;
    }

    public boolean RiZ() {
        return sP.contains(this.EjP);
    }

    public void Sj(@NonNull String str) {
        TEQ(str);
        this.EjP = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Sj("app_id", str);
        com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().EjP(7);
    }

    public void Sj(String str, com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sj2) {
        try {
            if (TextUtils.isEmpty(str) || sj2 == null) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                com.bytedance.sdk.openadsdk.TKC.TEQ.Sj(6, str, sj2);
                return;
            }
            if (this.zR == null) {
                synchronized (uA.class) {
                    try {
                        if (this.zR == null) {
                            this.zR = new ConcurrentHashMap<>();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (this.zR != null) {
                this.zR.put(str, sj2);
            }
        } catch (Throwable unused) {
        }
    }

    public void Sj(boolean z10) {
        this.RiZ = z10;
    }

    public boolean Sj() {
        return this.RiZ;
    }

    public int TEQ() {
        Integer num = this.Zq;
        return num != null ? num.intValue() : com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_privacy", "tt_gdpr", -1);
    }

    public void TKC(int i11) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_icon_id", "icon_id", Integer.valueOf(i11));
        }
        this.Jcg = i11;
    }

    public void TKC(@Nullable final String str) {
        Ym(str);
        if (com.bytedance.sdk.openadsdk.utils.JcM.vS()) {
            sef.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.uA.3
                @Override // java.lang.Runnable
                public void run() {
                    uA.this.uA(str);
                }
            });
        } else {
            uA(str);
        }
    }

    public void TKC(boolean z10) {
        this.TKC = z10;
    }

    public boolean TKC() {
        return com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", "sdk_activate_init", true);
    }

    public Bitmap TzV() {
        return com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.component.utils.EjP.Sj(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("sp_global_file", "pause_icon", null)) : this.sef;
    }

    public int Ym() {
        return this.uvD.intValue();
    }

    @Nullable
    public String Zq() {
        return com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("sp_global_file", "extra_data", null) : this.TEQ;
    }

    public boolean aa() {
        return this.uvD.intValue() < -1 || this.uvD.intValue() > 1;
    }

    public boolean dNu() {
        return true;
    }

    public boolean dx() {
        return "com.union_test.internationad".equals(Mts.HiB());
    }

    public void ib() {
        try {
            if (this.zR == null || this.zR.size() != 0) {
                return;
            }
            this.zR = null;
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public void sP(String str) {
        this.HiB = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Sj("mediation_info", str);
    }

    public void sP(boolean z10) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", "sdk_activate_init", Boolean.valueOf(z10));
    }

    public boolean sU() {
        return "5001121".contains(this.EjP);
    }

    @Nullable
    public String sef() {
        return com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("sp_global_file", "keywords", null) : this.uA;
    }

    public int uA() {
        return com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_icon_id", "icon_id", 0) : this.Jcg;
    }

    public com.bytedance.sdk.openadsdk.core.aa.TKC.TKC uvD() {
        if (this.f21102dx == null) {
            this.f21102dx = new com.bytedance.sdk.openadsdk.core.aa.TKC.TKC(10, 8);
        }
        return this.f21102dx;
    }

    public void vS(int i11) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("sp_global_file", "title_bar_theme", Integer.valueOf(i11));
        }
        this.Ym = i11;
    }

    public void vS(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                com.bytedance.sdk.openadsdk.TKC.TEQ.Sj(6, str);
            } else if (this.zR != null) {
                this.zR.remove(str);
            }
        } catch (Throwable unused) {
        }
    }

    public String wE() {
        return com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("sp_global_file", "adx_id", "") : this.TzV;
    }

    public String zR() {
        if (!TextUtils.isEmpty(this.sU)) {
            return this.sU;
        }
        String strSj = com.bytedance.sdk.openadsdk.utils.Ym.Sj();
        this.sU = strSj;
        if (!TextUtils.isEmpty(strSj)) {
            return this.sU;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.utils.Ym.Sj(strValueOf);
        this.sU = strValueOf;
        return strValueOf;
    }
}
