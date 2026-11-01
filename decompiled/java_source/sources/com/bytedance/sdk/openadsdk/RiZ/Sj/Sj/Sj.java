package com.bytedance.sdk.openadsdk.RiZ.Sj.Sj;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.EjP.aa;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends EjP {
    public Sj(Context context, sU sUVar, String str) {
        super(context, sUVar, str);
    }

    private static void Sj(sU sUVar, Map<String, Object> map) {
        if (map == null) {
            return;
        }
        if (sUVar != null && sUVar.AE() == 0) {
            map.put("auto_click", Boolean.valueOf(!sUVar.Dq()));
        }
        map.put("can_query_install", 0);
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
            Sj(sUVar, map);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str2, "click_open", map);
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean Sj(String str, Context context, String str2, sU sUVar, Map<String, Object> map) {
        Intent intent = null;
        try {
            if (TextUtils.isEmpty(str)) {
                com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, str2, -2, null);
                return false;
            }
            Uri uri = Uri.parse(str);
            Intent intent2 = new Intent("android.intent.action.VIEW");
            try {
                intent2.setData(uri);
                if (!(context instanceof Activity)) {
                    intent2.addFlags(ASTNode.DEOP);
                }
                if (map == null) {
                    map = new HashMap<>();
                }
                Sj(sUVar, map);
                map.put("url", str);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str2, "open_url_app", map);
                context.startActivity(intent2);
                aa.Sj().Sj(map).Sj(sUVar, str2);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("dp_start_act_success", sUVar, str2, map);
                return true;
            } catch (Throwable th2) {
                th = th2;
                intent = intent2;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("exception", th.getMessage());
                    if (intent != null) {
                        jSONObject.put("intent", intent.toString());
                    }
                    jSONObject.put("can_query_install", 0);
                } catch (Exception unused) {
                }
                com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, str2, -4, jSONObject);
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP, com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS
    public boolean Sj() {
        HashMap map;
        if (this.Sj == null) {
            return false;
        }
        sU sUVar = this.sP;
        if (sUVar == null || sUVar.AE() != 0) {
            map = null;
        } else {
            map = new HashMap();
            map.put("dpl_probability_jump", Boolean.valueOf(this.vS >= 11));
        }
        return Sj(this.sP, this.Sj.TKC(), TKC(), this.TKC, map);
    }

    @Override // com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP
    public boolean sP() {
        com.bytedance.sdk.openadsdk.core.EjP.Sj(this.sP, this.TKC, 1, null);
        if (this.sP.TFd() != null) {
            HashMap map = new HashMap();
            sU sUVar = this.sP;
            if (sUVar != null && sUVar.AE() == 0) {
                map.put("dpl_probability_jump", Boolean.valueOf(this.vS >= 11));
            }
            if (Sj(this.sP.TFd().Sj(), TKC(), this.TKC, this.sP, map)) {
                return true;
            }
            if (!this.EjP || this.HiB.get()) {
                this.EjP = true;
                Sj(this.sP, map);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.sP, this.TKC, "open_fallback_url", map);
            }
        } else {
            com.bytedance.sdk.openadsdk.core.EjP.Sj(this.sP, this.TKC, -1, null);
        }
        return false;
    }
}
