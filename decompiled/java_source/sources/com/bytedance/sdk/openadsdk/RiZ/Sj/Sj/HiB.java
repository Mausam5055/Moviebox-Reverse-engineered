package com.bytedance.sdk.openadsdk.RiZ.Sj.Sj;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.Zq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.core.model.Ym;
import com.bytedance.sdk.openadsdk.core.model.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.dx;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements vS {
    public static Boolean Sj;
    protected String EjP;
    protected int HiB;
    protected sU TKC;
    protected com.bytedance.sdk.openadsdk.core.model.EjP sP;
    private final WeakReference<Context> vS;

    public HiB(Context context, sU sUVar, String str) {
        this.vS = new WeakReference<>(context);
        this.TKC = sUVar;
        this.sP = sUVar.tz();
        this.EjP = str;
        "====tag===".concat(String.valueOf(str));
        if (dNu.Sj() == null) {
            dNu.sP(context);
        }
    }

    private static Intent Sj(Context context, kF kFVar) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            String strEjP = kFVar.EjP();
            if (TextUtils.isEmpty(strEjP)) {
                intent.setPackage("com.android.vending");
            } else {
                intent.setPackage(strEjP);
            }
            intent.setData(Uri.parse(kFVar.uA()));
            boolean z10 = true;
            if (kFVar.sP() != 1) {
                z10 = false;
            }
            intent.putExtra("overlay", z10);
            if (TextUtils.isEmpty(kFVar.TKC())) {
                intent.putExtra("callerId", context.getPackageName());
            } else {
                intent.putExtra("callerId", kFVar.TKC());
            }
            kFVar.Sj(intent);
            return intent;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    @NonNull
    private static Map<String, Object> Sj(sU sUVar, boolean z10, kF kFVar) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("oem_vendor_type", kFVar.vS());
            jSONObject.put("from_web", z10 ? 1 : 0);
            jSONObject.put("is_w2a", sUVar.Jcg());
            map.put("pag_json_data", jSONObject.toString());
        } catch (Throwable unused) {
        }
        return map;
    }

    private void Sj(Map<String, Object> map) {
        sU sUVar = this.TKC;
        if (sUVar != null && sUVar.AE() == 0) {
            sU sUVar2 = this.TKC;
            map.put("auto_click", Boolean.valueOf((sUVar2 == null || sUVar2.Dq()) ? false : true));
        }
        sU sUVar3 = this.TKC;
        if (sUVar3 != null && sUVar3.AE() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(this.HiB >= 11));
        }
        map.put("can_query_install", Integer.valueOf(vS() ? 1 : 0));
    }

    private static void Sj(JSONObject jSONObject, JSONObject jSONObject2, sU sUVar, String str, int i11) {
        try {
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, i11);
            jSONObject2.put("pag_json_data", jSONObject.toString());
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str, "gp_mini_card_status", jSONObject2);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public static boolean Sj(Context context, String str, String str2, String str3, sU sUVar) {
        if (!TextUtils.isEmpty(str3) && str3.contains("_landingpage")) {
            str3 = str3.replace("_landingpage", "");
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.setFlags(ASTNode.DEOP);
                context.startActivity(intent);
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str3, "store_open", (JSONObject) null);
                return true;
            } catch (Throwable unused) {
            }
        }
        if (context != null && str2 != null && !TextUtils.isEmpty(str2)) {
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                Uri uri = Uri.parse(MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK.concat(str2));
                intent2.setData(uri);
                Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent2, 65536).iterator();
                while (it.hasNext()) {
                    if (it.next().activityInfo.packageName.equals("com.android.vending") && context.getPackageManager().getLaunchIntentForPackage("com.android.vending") != null) {
                        Intent intent3 = new Intent("android.intent.action.VIEW");
                        intent3.setData(uri);
                        intent3.setPackage("com.android.vending");
                        if (!(context instanceof Activity)) {
                            intent3.setFlags(ASTNode.DEOP);
                        }
                        context.startActivity(intent3);
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str3, "store_open", (JSONObject) null);
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                ApmHelper.reportCustomError("gotoGooglePlayByPackageNameAndUrl error", "gotoGooglePlay", th2);
            }
        }
        return false;
    }

    public static boolean Sj(sU sUVar, Context context, boolean z10) {
        if (sUVar != null && sUVar.eNi() != null && sUVar.eNi().Dq() && !TextUtils.isEmpty(sUVar.eNi().uA()) && context != null) {
            try {
                kF kFVarENi = sUVar.eNi();
                String strSj = Mts.Sj(sUVar);
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObjectTEQ = kFVarENi.TEQ();
                jSONObjectTEQ.put("from_web", z10 ? 1 : 0);
                jSONObjectTEQ.put("is_w2a", sUVar.Jcg());
                jSONObjectTEQ.put(NotificationCompat.CATEGORY_STATUS, 0);
                jSONObject.put("pag_json_data", jSONObjectTEQ.toString());
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, strSj, "gp_mini_card_status", jSONObject);
                Intent intentSj = Sj(context, kFVarENi);
                if (intentSj == null) {
                    Sj(jSONObjectTEQ, jSONObject, sUVar, strSj, -2);
                    return false;
                }
                if (!(context instanceof Activity)) {
                    Activity activitySP = Zq.Sj().HiB().sP();
                    if (activitySP != null && dx.Sj(activitySP)) {
                        context = activitySP;
                    }
                } else if (!dx.Sj((Activity) context)) {
                    context = null;
                }
                if (!(context instanceof Activity)) {
                    Sj(jSONObjectTEQ, jSONObject, sUVar, strSj, -5);
                    return false;
                }
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || intentSj.resolveActivity(packageManager) == null) {
                    Sj(jSONObjectTEQ, jSONObject, sUVar, strSj, -4);
                    return false;
                }
                try {
                    ((Activity) context).startActivityForResult(intentSj, 0);
                    Sj(jSONObjectTEQ, jSONObject, sUVar, strSj, 1);
                    return true;
                } catch (Throwable unused) {
                    Sj(jSONObjectTEQ, jSONObject, sUVar, strSj, -3);
                    return false;
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        return false;
    }

    public static boolean Sj(sU sUVar, String str) {
        if (sUVar == null || sUVar.eNi() == null) {
            return false;
        }
        String strHiB = sUVar.eNi().HiB();
        if (TextUtils.isEmpty(strHiB)) {
            return false;
        }
        return Pattern.compile(strHiB).matcher(str).matches();
    }

    public static boolean Sj(sU sUVar, String str, Context context, String str2, Map<String, Object> map) {
        Intent intentSj;
        if (sUVar != null && sUVar.zwV() == 0) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(str) || (intentSj = Mts.Sj(context, str)) == null) {
                return false;
            }
            intentSj.putExtra("START_ONLY_FOR_ANDROID", true);
            if (!(context instanceof Activity)) {
                intentSj.addFlags(ASTNode.DEOP);
            }
            context.startActivity(intentSj);
            if (map == null) {
                map = new HashMap<>();
            }
            if (sUVar != null && sUVar.AE() == 0) {
                map.put("auto_click", Boolean.valueOf(!sUVar.Dq()));
            }
            map.put("can_query_install", Integer.valueOf(vS() ? 1 : 0));
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str2, "click_open", map);
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean Sj(String str, sU sUVar) {
        String queryParameter;
        if (str != null && !str.isEmpty()) {
            try {
                Uri uri = Uri.parse(str);
                String scheme = uri.getScheme();
                String host = uri.getHost();
                if ("market".equals(scheme) && "details".equals(host)) {
                    return true;
                }
                if ((!"http".equals(scheme) && !"https".equals(scheme)) || (!Constants.GP_DEEPLINK.equals(host) && !"market.android.com".equals(host))) {
                    if ("market".equals(scheme) && "webstoreredirect".equals(host) && (queryParameter = uri.getQueryParameter("uri")) != null) {
                        return Sj(queryParameter, sUVar);
                    }
                }
                return true;
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        return false;
    }

    public static boolean sP(sU sUVar, Context context, boolean z10) {
        String strTKC;
        IPMiBroadcastReceiver iPMiBroadcastReceiverSj;
        if (sUVar != null && context != null) {
            try {
                kF kFVarENi = sUVar.eNi();
                if (kFVarENi != null && !TextUtils.isEmpty(kFVarENi.uA())) {
                    if (kFVarENi.Dq() && Sj(sUVar, context, z10)) {
                        return true;
                    }
                    if (kFVarENi.Jcg()) {
                        if (sUVar.Jcg() == 1) {
                            strTKC = kFVarENi.Sj();
                        } else {
                            strTKC = (sUVar.tz() == null || TextUtils.isEmpty(sUVar.tz().TKC())) ? null : sUVar.tz().TKC();
                        }
                        if (!TextUtils.isEmpty(strTKC) && (iPMiBroadcastReceiverSj = IPMiBroadcastReceiver.Sj(context)) != null) {
                            iPMiBroadcastReceiverSj.Sj(strTKC, sUVar);
                        }
                    }
                    final boolean zSj = TKC.Sj(context, kFVarENi.uA(), sUVar, Mts.sP(sUVar), Sj(sUVar, z10, kFVarENi), true);
                    JcM.sP(new Dq("task_oem_store") { // from class: com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.HiB.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (zSj) {
                                uA.Sj("oem_store", "1");
                            } else {
                                uA.Sj("oem_store", "-2");
                            }
                        }
                    });
                    return zSj;
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("GPDownLoader", th2.getMessage());
            }
        }
        return false;
    }

    private static boolean vS() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public void EjP() {
        if (sP() == null) {
            return;
        }
        if (TKC()) {
            this.TKC.TKC(true);
            return;
        }
        if (Sj()) {
            this.TKC.TKC(true);
            return;
        }
        if (sP(false)) {
            return;
        }
        if (HiB()) {
            this.TKC.TKC(true);
        } else {
            if (this.TKC.tz() != null || this.TKC.Chv() == null) {
                return;
            }
            fF.Sj(sP(), this.TKC.Chv(), this.TKC, Mts.Sj(this.EjP), this.EjP, true);
            this.TKC.TKC(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public boolean HiB() {
        return this.sP != null && Sj(sP(), this.sP.Sj(), this.sP.TKC());
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public void Sj(int i11) {
        this.HiB = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public void Sj(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public boolean Sj() {
        if (this.sP == null) {
            return false;
        }
        sU sUVar = this.TKC;
        if (sUVar != null && sUVar.zwV() == 0) {
            return false;
        }
        String strTKC = this.sP.TKC();
        if (TextUtils.isEmpty(strTKC)) {
            return false;
        }
        return Sj(this.TKC, strTKC, sP(), this.EjP, new HashMap());
    }

    public boolean Sj(Context context, String str, String str2) {
        return Sj(context, str, str2, this.EjP, this.TKC);
    }

    public boolean TKC() {
        com.bytedance.sdk.openadsdk.core.EjP.Sj(this.TKC, this.EjP, 1, null);
        Ym ymTFd = this.TKC.TFd();
        if (ymTFd == null) {
            com.bytedance.sdk.openadsdk.core.EjP.Sj(this.TKC, this.EjP, -1, null);
            return false;
        }
        HashMap map = new HashMap();
        Sj(map);
        String strSj = ymTFd.Sj();
        Context contextSP = sP();
        sU sUVar = this.TKC;
        if (TKC.Sj(contextSP, strSj, sUVar, Mts.sP(sUVar), map, true)) {
            return true;
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.TKC, this.EjP, "open_fallback_url", map);
        return false;
    }

    protected Context sP() {
        WeakReference<Context> weakReference = this.vS;
        return (weakReference == null || weakReference.get() == null) ? dNu.Sj() : this.vS.get();
    }

    public boolean sP(boolean z10) {
        return sP(this.TKC, sP(), z10);
    }
}
