package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class fF {
    private static boolean Sj;

    private static Intent Sj(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, @Nullable PAGNativeAd pAGNativeAd, PangleAd pangleAd, String str2, boolean z10) {
        return Sj(context, str, sUVar, i11, pAGNativeAd, pangleAd, str2, z10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Intent Sj(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, @Nullable PAGNativeAd pAGNativeAd, PangleAd pangleAd, String str2, boolean z10, boolean z11) {
        Intent intent;
        if (z11 || !com.bytedance.sdk.openadsdk.core.model.uP.sP(sUVar) || (pAGNativeAd == 0 && pangleAd == null)) {
            intent = (z11 || sUVar.sdp() != 3 || !(sUVar.dx() == 2 || (sUVar.dx() == 1 && Sj)) || sUVar.rN()) ? new Intent(context, (Class<?>) TTLandingPageActivity.class) : new Intent(context, (Class<?>) TTVideoLandingPageLink2Activity.class);
        } else {
            intent = new Intent(context, (Class<?>) TTPlayableLandingPageActivity.class);
            intent.putExtra("ad_pending_download", Sj(sUVar, z10));
            String strAa = com.bytedance.sdk.openadsdk.core.model.uP.aa(sUVar);
            if (!TextUtils.isEmpty(strAa)) {
                if (strAa.contains(UrlUtils.QUESTION_MARK)) {
                    str = strAa + "&orientation=portrait";
                } else {
                    str = strAa + "?orientation=portrait";
                }
            }
        }
        intent.putExtra("url", str);
        intent.putExtra("gecko_id", sUVar.eMB());
        intent.putExtra("web_title", sUVar.xu());
        intent.putExtra("sdk_version", BuildConfig.VERSION_CODE);
        intent.putExtra("adid", sUVar.aZ());
        intent.putExtra("log_extra", sUVar.mZN());
        com.bytedance.sdk.openadsdk.multipro.sP.Sj sjTKC = null;
        intent.putExtra("icon_url", sUVar.EZ() == null ? null : sUVar.EZ().Sj());
        intent.putExtra("event_tag", str2);
        intent.putExtra(EventConstants.KEY_SOURCE, i11);
        if (!(context instanceof Activity)) {
            intent.addFlags(ASTNode.DEOP);
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, sUVar.SP().toString());
        } else {
            kF.Sj().vS();
            kF.Sj().Sj(sUVar);
        }
        if (sUVar.HcZ() == 5 || sUVar.HcZ() == 15 || sUVar.HcZ() == 50) {
            if (pAGNativeAd != 0) {
                if (pAGNativeAd instanceof com.bytedance.sdk.openadsdk.multipro.sP.Sj.InterfaceC0285Sj) {
                    sjTKC = ((com.bytedance.sdk.openadsdk.multipro.sP.Sj.InterfaceC0285Sj) pAGNativeAd).vS();
                } else if (pAGNativeAd instanceof com.bytedance.sdk.openadsdk.Sj.sP.Sj.sP) {
                    sjTKC = ((com.bytedance.sdk.openadsdk.Sj.sP.Sj.sP) pAGNativeAd).sP();
                }
                if (sjTKC != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, sjTKC.Sj().toString());
                }
            }
            if ((pangleAd instanceof com.bytedance.sdk.openadsdk.core.TKC.vS) && (sjTKC = ((com.bytedance.sdk.openadsdk.core.TKC.vS) pangleAd).TKC()) != null) {
                intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, sjTKC.Sj().toString());
            }
            if (sjTKC != null) {
                intent.putExtra("video_is_auto_play", sjTKC.EjP);
                if (com.bytedance.sdk.component.utils.Zq.EjP()) {
                    sjTKC.Sj().toString();
                }
            }
        }
        return intent;
    }

    private static com.bytedance.sdk.openadsdk.Zq.Sj.sP Sj(int i11, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVar = new com.bytedance.sdk.openadsdk.Zq.Sj.sP();
        sPVar.Sj(com.bytedance.sdk.openadsdk.EjP.sP.Sj.Sj);
        sPVar.Sj(sUVar);
        sPVar.sP(Mts.Sj(sUVar));
        sPVar.Sj(i11);
        sPVar.Sj(false);
        sPVar.sP(sUVar.sdp());
        return sPVar;
    }

    private static String Sj(com.bytedance.sdk.openadsdk.core.model.Ym ym2, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return !TextUtils.isEmpty(ym2.sP()) ? ym2.sP() : Sj(sUVar);
    }

    private static String Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return (!sUVar.Ph() || sUVar.GMp() == null) ? sUVar.Chv() : sUVar.GMp().uA();
    }

    public static void Sj(boolean z10) {
        Sj = z10;
    }

    public static boolean Sj(Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, @Nullable PAGNativeAd pAGNativeAd, @Nullable PangleAd pangleAd, String str, @Nullable com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar, boolean z10, int i12) {
        String strSj;
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(-1, sUVar));
        if (context == null || sUVar == null || i11 == -1) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(1, sUVar));
            return false;
        }
        com.bytedance.sdk.openadsdk.core.model.Ym ymTFd = sUVar.TFd();
        HashMap map = new HashMap();
        if (sUVar.AE() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(i12 >= 11));
        }
        if (i12 != 0 && sUVar.Ph()) {
            map.put("dsp_click_type", Integer.valueOf(i12));
        }
        if (ymTFd == null || TextUtils.isEmpty(ymTFd.Sj())) {
            strSj = Sj(sUVar);
        } else {
            if (Sj(context, sUVar, i11, str, z10, map)) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(2, sUVar));
                return true;
            }
            if (ymTFd.TKC() != 2 || sUVar.HcZ() == 5 || sUVar.HcZ() == 15) {
                strSj = (ymTFd.TKC() != 1 || TextUtils.isEmpty(ymTFd.sP())) ? Sj(sUVar) : ymTFd.sP();
            } else if (vSVar == null) {
                strSj = Sj(ymTFd, sUVar);
            } else {
                if (vSVar.Sj()) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "open_fallback_url", map);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(3, sUVar));
                    return true;
                }
                if (vSVar.HiB()) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "open_fallback_url", map);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(3, sUVar));
                    return true;
                }
                strSj = Sj(ymTFd, sUVar);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(3, sUVar));
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "open_fallback_url", map);
        }
        String str2 = strSj;
        if (sUVar.AE() != 0 || TextUtils.isEmpty(str2) || !str2.contains("play.google.com/store")) {
            return Sj(context, sUVar, i11, pAGNativeAd, pangleAd, str, z10, str2);
        }
        String strSubstring = str2.substring(str2.indexOf("?id=") + 4);
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(4, sUVar));
        return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP.Sj(context, str2, strSubstring, str, sUVar);
    }

    public static boolean Sj(Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, PAGNativeAd pAGNativeAd, PangleAd pangleAd, String str, boolean z10, String str2) {
        if (TextUtils.isEmpty(str2) && !com.bytedance.sdk.openadsdk.core.model.uP.sP(sUVar)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(5, sUVar));
            return false;
        }
        int iSdp = sUVar.sdp();
        if (iSdp == 2 || iSdp == 8) {
            return com.bytedance.sdk.openadsdk.utils.dx.Sj(context, str2, sUVar, com.bytedance.sdk.openadsdk.EjP.sP.Sj.Sj);
        }
        com.bytedance.sdk.component.utils.sP.Sj(context, Sj(context, str2, sUVar, i11, pAGNativeAd, pangleAd, str, z10), null);
        Sj = false;
        return true;
    }

    public static boolean Sj(Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, String str, boolean z10, Map<String, Object> map) {
        if (sUVar == null) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.model.Ym ymTFd = sUVar.TFd();
        if (ymTFd == null || TextUtils.isEmpty(ymTFd.Sj())) {
            EjP.Sj(sUVar, str, ymTFd == null ? -1 : -2, ymTFd != null ? ymTFd.EjP() : null);
            return false;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        Map<String, Object> map2 = map;
        String strSj = ymTFd.Sj();
        if (com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.TKC.Sj()) {
            return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.TKC.Sj(context, strSj, sUVar, i11, map2, z10);
        }
        Uri uri = Uri.parse(strSj);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        if (Mts.Dq(context)) {
            Mts.sP sPVarSj = Mts.Sj(context, intent);
            if (sPVarSj.sP > 0) {
                if (dNu.EjP().Dq()) {
                    Mts.Sj(sUVar, str);
                }
                if (!(context instanceof Activity)) {
                    intent.addFlags(ASTNode.DEOP);
                }
                map2.put("can_query_install", 1);
                map2.put("matched_count", Integer.valueOf(sPVarSj.sP));
                map2.put("url", strSj);
                ComponentName componentName = sPVarSj.Sj;
                if (componentName != null) {
                    intent.setComponent(componentName);
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "open_url_app", map2);
                try {
                    context.startActivity(intent);
                    com.bytedance.sdk.openadsdk.EjP.aa.Sj().Sj(map2).Sj(sUVar, str);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj("dp_start_act_success", sUVar, str, map2);
                    return true;
                } catch (Exception e11) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("exception", e11.getMessage());
                        jSONObject.put("intent", intent.toString());
                        jSONObject.put("can_query_install", 1);
                    } catch (Exception unused) {
                    }
                    EjP.Sj(sUVar, str, -4, jSONObject);
                    if (!dNu.EjP().Dq()) {
                        Sj(context, sUVar.Chv(), sUVar, i11, str, z10);
                    }
                    return false;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("intent", intent.toString());
                jSONObject2.put("can_query_install", 1);
            } catch (Exception unused2) {
            }
            EjP.Sj(sUVar, str, -3, jSONObject2);
        } else {
            try {
                if (dNu.EjP().Dq()) {
                    Mts.Sj(sUVar, str);
                }
                if (!(context instanceof Activity)) {
                    intent.addFlags(ASTNode.DEOP);
                }
                map2.put("can_query_install", 0);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "open_url_app", map2);
                context.startActivity(intent);
                com.bytedance.sdk.openadsdk.EjP.aa.Sj().Sj(map2).Sj(sUVar, str);
                return true;
            } catch (Throwable unused3) {
            }
        }
        return false;
    }

    public static boolean Sj(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, String str2, boolean z10) {
        try {
            context.startActivity(Sj(context, str, sUVar, i11, (PAGNativeAd) null, (PangleAd) null, str2, z10));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, boolean z10) {
        if (z10 && sUVar != null && sUVar.sdp() == 4) {
            return com.bytedance.sdk.openadsdk.core.model.uP.sP(sUVar);
        }
        return false;
    }

    public static boolean sP(Context context, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11, String str2, boolean z10) {
        try {
            Intent intentSj = Sj(context, str, sUVar, i11, (PAGNativeAd) null, (PangleAd) null, str2, z10, true);
            if (!(context instanceof Activity)) {
                intentSj.addFlags(ASTNode.DEOP);
            }
            context.startActivity(intentSj);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
