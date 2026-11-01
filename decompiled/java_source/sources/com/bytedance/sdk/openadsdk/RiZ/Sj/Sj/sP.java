package com.bytedance.sdk.openadsdk.RiZ.Sj.Sj;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.EjP.aa;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static Intent Sj(Context context, String str) {
        try {
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            if (!(context instanceof Activity)) {
                intent.addFlags(ASTNode.DEOP);
            }
            return intent;
        } catch (Throwable th2) {
            sU.sP("DeepLinkUtils", th2.getMessage());
            return null;
        }
    }

    private static void Sj(Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, Map<String, Object> map) {
        if (sUVar != null && sUVar.AE() == 0) {
            map.put("auto_click", Boolean.valueOf(!sUVar.Dq()));
        }
        map.put("can_query_install", Integer.valueOf(Mts.Dq(context) ? 1 : 0));
    }

    public static boolean Sj(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        String strSj = Mts.Sj(sUVar);
        com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, strSj, 1, null);
        Intent intentSj = Sj(context, str);
        if (TextUtils.isEmpty(str) || intentSj == null) {
            com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, strSj, -2, sUVar.TFd().EjP());
            return false;
        }
        boolean zDq = Mts.Dq(context);
        HashMap map = new HashMap();
        map.put("url", str);
        if (zDq) {
            Mts.sP sPVarSj = Mts.Sj(context, intentSj);
            if (sPVarSj.sP <= 0) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("intent", intentSj.toString());
                    jSONObject.put("can_query_install", 1);
                } catch (Exception unused) {
                }
                com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, strSj, -3, jSONObject);
                return false;
            }
            try {
                Sj(context, sUVar, map);
                map.put("matched_count", Integer.valueOf(sPVarSj.sP));
                ComponentName componentName = sPVarSj.Sj;
                if (componentName != null) {
                    intentSj.setComponent(componentName);
                }
            } catch (Throwable th2) {
                sU.sP("DeepLinkUtils", th2.getMessage());
            }
        }
        try {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, strSj, "open_url_app", map);
            context.startActivity(intentSj);
            aa.Sj().Sj(map).Sj(sUVar, strSj);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("dp_start_act_success", sUVar, strSj, map);
            return true;
        } catch (Throwable th3) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("exception", th3.getMessage());
                jSONObject2.put("intent", intentSj.toString());
                jSONObject2.put("can_query_install", zDq ? 1 : 0);
            } catch (Exception unused2) {
            }
            com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, strSj, -4, jSONObject2);
            return false;
        }
    }
}
