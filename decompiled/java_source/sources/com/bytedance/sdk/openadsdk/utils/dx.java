package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import androidx.browser.customtabs.j;
import com.bytedance.sdk.openadsdk.activity.TTBaseActivity;
import com.bytedance.sdk.openadsdk.core.act.AdActAction;
import java.util.HashMap;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class dx {
    public static boolean Sj(Activity activity) {
        return (activity == null || activity.isDestroyed() || activity.isFinishing()) ? false : true;
    }

    public static boolean Sj(Context context, final String str, final com.bytedance.sdk.openadsdk.core.model.sU sUVar, final String str2) {
        if (!(context instanceof Activity)) {
            Activity activitySP = com.bytedance.sdk.openadsdk.core.Zq.Sj().HiB().sP();
            if (activitySP != null && Sj(activitySP)) {
                context = activitySP;
            }
        } else if (!Sj((Activity) context)) {
            context = null;
        }
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        }
        if (context == null) {
            return false;
        }
        final String strSj = Mts.Sj(sUVar);
        if (!com.bytedance.sdk.component.utils.TzV.Sj(str)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sP(str2, 5, sUVar));
            return false;
        }
        final String strSP = com.bytedance.sdk.openadsdk.core.model.sU.sP(context, sUVar);
        if (TextUtils.isEmpty(strSP)) {
            return sP(context, str, sUVar, str2, strSj);
        }
        try {
            final d.b bVar = new d.b();
            bVar.f(false);
            bVar.e(2);
            final Context context2 = context;
            new AdActAction(context, sUVar, str2, str).Sj(new AdActAction.BindCustomTabsServiceCallback() { // from class: com.bytedance.sdk.openadsdk.utils.dx.1
                @Override // com.bytedance.sdk.openadsdk.core.act.AdActAction.BindCustomTabsServiceCallback
                public void onBindFail(int i11, String str3) {
                    com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP = dx.sP(str2, i11, sUVar);
                    sPVarSP.TKC(str3);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP);
                    dx.sP(context2, str, sUVar, str2, strSj);
                }

                @Override // com.bytedance.sdk.openadsdk.core.act.AdActAction.BindCustomTabsServiceCallback
                public void onBindSuccess(j jVar) {
                    if (jVar != null) {
                        try {
                            bVar.c(jVar);
                        } catch (Throwable th2) {
                            String message = th2.getMessage();
                            com.bytedance.sdk.component.utils.sU.sP("OpenUtils", message);
                            com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP = dx.sP(str2, 13, sUVar);
                            sPVarSP.TKC(message);
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP);
                            dx.sP(context2, str, sUVar, str2, strSj);
                            return;
                        }
                    }
                    d dVarA = bVar.a();
                    if (!(context2 instanceof Activity)) {
                        dVarA.f2166a.addFlags(ASTNode.DEOP);
                    }
                    com.bytedance.sdk.openadsdk.core.act.TKC.Sj(context2, strSP, dVarA, Uri.parse(str));
                    Context context3 = context2;
                    if (context3 instanceof TTBaseActivity) {
                        ((TTBaseActivity) context3).sP(true);
                    }
                    com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP2 = dx.sP(str2, 100, sUVar);
                    sPVarSP2.Sj(true);
                    sPVarSP2.sP(8);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP2);
                }
            });
            return true;
        } catch (Throwable th2) {
            String message = th2.getMessage();
            com.bytedance.sdk.component.utils.sU.sP("OpenUtils", message);
            com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP = sP(str2, 12, sUVar);
            sPVarSP.TKC(message);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP);
            return sP(context, str, sUVar, str2, strSj);
        }
    }

    public static boolean Sj(String str) {
        return !TextUtils.isEmpty(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.bytedance.sdk.openadsdk.Zq.Sj.sP sP(String str, int i11, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVar = new com.bytedance.sdk.openadsdk.Zq.Sj.sP();
        sPVar.Sj(str);
        sPVar.Sj(sUVar);
        sPVar.sP(Mts.Sj(sUVar));
        sPVar.Sj(i11);
        sPVar.Sj(false);
        sPVar.sP(sUVar.sdp());
        return sPVar;
    }

    public static boolean sP(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str2) {
        if (!(context instanceof Activity)) {
            Activity activitySP = com.bytedance.sdk.openadsdk.core.Zq.Sj().HiB().sP();
            if (activitySP != null && Sj(activitySP)) {
                context = activitySP;
            }
        } else if (!Sj((Activity) context)) {
            context = null;
        }
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        }
        Context context2 = context;
        if (context2 == null || !Sj(str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        HashMap map = new HashMap();
        map.put("deeplink_url", str);
        map.put("jsb_deeplink", 1);
        if (com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.TKC.Sj()) {
            return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.TKC.Sj(context2, str, sUVar, Mts.sP(sUVar), map, true);
        }
        try {
            if (!(context2 instanceof Activity)) {
                intent.addFlags(ASTNode.DEOP);
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str2, "open_url_app", map);
            context2.startActivity(intent);
            com.bytedance.sdk.openadsdk.EjP.aa.Sj().Sj(map).Sj(sUVar, str2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean sP(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str2, String str3) {
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(str));
            if (!(context instanceof Activity)) {
                intent.addFlags(ASTNode.DEOP);
            }
            try {
                context.startActivity(intent);
                com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP = sP(str2, 100, sUVar);
                sPVarSP.Sj(true);
                sPVarSP.sP(2);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP);
                return true;
            } catch (Throwable th2) {
                String message = th2.getMessage();
                com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP2 = sP(str2, 7, sUVar);
                sPVarSP2.TKC(message);
                sPVarSP2.sP(2);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP2);
                return false;
            }
        } catch (Throwable th3) {
            String message2 = th3.getMessage();
            com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSP3 = sP(str2, 6, sUVar);
            sPVarSP3.TKC(message2);
            sPVarSP3.sP(2);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSP3);
            return false;
        }
    }
}
