package com.bytedance.sdk.openadsdk.RiZ.Sj.Sj;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.aa;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.core.model.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements vS {
    private final WeakReference<Context> Jcg;
    protected com.bytedance.sdk.openadsdk.core.model.EjP Sj;
    protected String TKC;
    protected sU sP;
    protected int vS;
    protected boolean EjP = false;
    protected final AtomicBoolean HiB = new AtomicBoolean(false);
    private boolean Dq = false;

    public EjP(Context context, sU sUVar, String str) {
        this.Jcg = new WeakReference<>(context);
        this.sP = sUVar;
        this.Sj = sUVar.tz();
        this.TKC = str;
        "====tag===".concat(String.valueOf(str));
        if (dNu.Sj() == null) {
            dNu.sP(context);
        }
    }

    private void Sj(Map<String, Object> map) {
        sU sUVar = this.sP;
        if (sUVar != null && sUVar.AE() == 0) {
            sU sUVar2 = this.sP;
            map.put("auto_click", Boolean.valueOf((sUVar2 == null || sUVar2.Dq()) ? false : true));
        }
        sU sUVar3 = this.sP;
        if (sUVar3 != null && sUVar3.AE() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(this.vS >= 11));
        }
        map.put("can_query_install", 1);
    }

    public static boolean Sj(Context context, String str, String str2, String str3, sU sUVar) {
        if (TKC.Sj()) {
            return HiB.Sj(context, str, str2, str3, sUVar);
        }
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

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public void EjP() {
        if (TKC() == null) {
            return;
        }
        if (sP()) {
            this.HiB.set(true);
            this.sP.TKC(true);
            return;
        }
        if (Sj()) {
            this.sP.TKC(true);
            return;
        }
        if (sP(false)) {
            return;
        }
        if (HiB()) {
            this.sP.TKC(true);
        } else {
            if (this.sP.tz() != null || this.sP.Chv() == null) {
                return;
            }
            fF.Sj(TKC(), this.sP.Chv(), this.sP, Mts.Sj(this.TKC), this.TKC, true);
            this.sP.TKC(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public boolean HiB() {
        this.HiB.set(true);
        return this.Sj != null && Sj(TKC(), this.Sj.Sj(), this.Sj.TKC());
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public void Sj(int i11) {
        this.vS = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public void Sj(boolean z10) {
        this.Dq = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public boolean Sj() {
        return false;
    }

    public boolean Sj(Context context, String str, String str2) {
        return Sj(context, str, str2, this.TKC, this.sP);
    }

    protected Context TKC() {
        WeakReference<Context> weakReference = this.Jcg;
        return (weakReference == null || weakReference.get() == null) ? dNu.Sj() : this.Jcg.get();
    }

    public boolean sP() {
        com.bytedance.sdk.openadsdk.core.EjP.Sj(this.sP, this.TKC, 1, null);
        if (this.sP.TFd() == null) {
            com.bytedance.sdk.openadsdk.core.EjP.Sj(this.sP, this.TKC, -1, null);
            return false;
        }
        String strSj = this.sP.TFd().Sj();
        if (TextUtils.isEmpty(strSj)) {
            sU sUVar = this.sP;
            com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, this.TKC, -2, sUVar.TFd().EjP());
        } else {
            Uri uri = Uri.parse(strSj);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            Mts.sP sPVarSj = Mts.Sj(TKC(), intent);
            if (sPVarSj.sP > 0) {
                if (!(TKC() instanceof Activity)) {
                    intent.addFlags(ASTNode.DEOP);
                }
                try {
                    Map<String, Object> map = new HashMap<>();
                    Sj(map);
                    map.put("matched_count", Integer.valueOf(sPVarSj.sP));
                    map.put("url", strSj);
                    ComponentName componentName = sPVarSj.Sj;
                    if (componentName != null) {
                        intent.setComponent(componentName);
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.sP, this.TKC, "open_url_app", map);
                    TKC().startActivity(intent);
                    aa.Sj().Sj(map).Sj(this.sP, this.TKC);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj("dp_start_act_success", this.sP, this.TKC, map);
                    return true;
                } catch (Throwable th2) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("exception", th2.getMessage());
                        jSONObject.put("intent", intent.toString());
                        jSONObject.put("can_query_install", 1);
                    } catch (Exception unused) {
                    }
                    com.bytedance.sdk.openadsdk.core.EjP.Sj(this.sP, this.TKC, -4, jSONObject);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("intent", intent.toString());
                    jSONObject2.put("can_query_install", 1);
                } catch (Exception unused2) {
                }
                com.bytedance.sdk.openadsdk.core.EjP.Sj(this.sP, this.TKC, -3, jSONObject2);
            }
        }
        if (this.EjP && !this.HiB.get()) {
            return false;
        }
        this.EjP = true;
        Map<String, Object> map2 = new HashMap<>();
        Sj(map2);
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.sP, this.TKC, "open_fallback_url", map2);
        return false;
    }

    public boolean sP(boolean z10) {
        kF kFVarENi;
        IPMiBroadcastReceiver iPMiBroadcastReceiverSj;
        try {
            sU sUVar = this.sP;
            if (sUVar == null || (kFVarENi = sUVar.eNi()) == null || TextUtils.isEmpty(kFVarENi.uA())) {
                return false;
            }
            if (kFVarENi.Jcg() && this.sP.tz() != null && !TextUtils.isEmpty(this.sP.tz().TKC()) && (iPMiBroadcastReceiverSj = IPMiBroadcastReceiver.Sj(TKC())) != null) {
                iPMiBroadcastReceiverSj.Sj(this.sP.tz().TKC(), this.sP);
            }
            final boolean zSj = sP.Sj(TKC(), kFVarENi.uA(), this.sP);
            JcM.sP(new Dq("task_oem_store") { // from class: com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP.1
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
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("GPDownLoader", th2.getMessage());
            return false;
        }
    }
}
