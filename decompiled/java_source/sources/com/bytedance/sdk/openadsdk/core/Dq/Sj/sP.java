package com.bytedance.sdk.openadsdk.core.Dq.Sj;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.model.LqL;
import com.bytedance.sdk.openadsdk.core.model.dNu;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uvD;
import com.bytedance.sdk.openadsdk.core.uA;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.ImagesContract;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import y5.b;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    public static String Sj = "https://pag_open_icon_id/appicon.png";
    private static String sP = "";

    public static String Sj() {
        return sP;
    }

    private static String Sj(sU.Sj sj2) {
        return sj2 != null ? sj2.TEQ() : "";
    }

    public static String Sj(sU sUVar, String str) {
        List<uvD> listBml;
        if (sUVar != null && (listBml = sUVar.Bml()) != null && listBml.size() > 0) {
            for (uvD uvd : listBml) {
                if (uvd != null && TextUtils.equals(str, uvd.Sj())) {
                    return uvd.Jcg();
                }
            }
        }
        return null;
    }

    public static Map<String, String> Sj(sU sUVar) {
        HashMap map = null;
        if (sUVar == null) {
            return null;
        }
        List<uvD> listBml = sUVar.Bml();
        if (listBml != null && listBml.size() > 0) {
            map = new HashMap();
            for (uvD uvd : listBml) {
                if (uvd != null) {
                    map.put(uvd.Sj(), uvd.Jcg());
                }
            }
            uvD uvdEZ = sUVar.EZ();
            if (uvdEZ != null) {
                map.put(uvdEZ.Sj(), uvdEZ.Jcg());
            }
        }
        return map;
    }

    public static JSONObject Sj(float f11, float f12, boolean z10, @NonNull sU sUVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TrackingKey.PLATFORM, "android");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", f11);
            jSONObject2.put("height", f12);
            if (z10) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            if (!(sUVar instanceof dx) || !((dx) sUVar).Qne()) {
                jSONObject.put("creative", Sj(false, sUVar));
                jSONObject.put("template_Plugin", sP(sUVar.xhi()));
                jSONObject.put("diff_template_Plugin", Sj(sUVar.xhi()));
                return jSONObject;
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject.put("choose_ui_data", jSONObject3);
            com.bytedance.sdk.openadsdk.core.model.Sj.C0276Sj c0276SjIUm = ((dx) sUVar).iUm();
            JSONObject jSONObjectSP = c0276SjIUm.sP();
            if (TextUtils.isEmpty(c0276SjIUm.uA())) {
                jSONObjectSP.put("data", sP(c0276SjIUm));
            }
            jSONObject3.put("tpl_info", jSONObjectSP);
            JSONArray jSONArray = new JSONArray();
            jSONObject.put("creatives", jSONArray);
            for (sU sUVar2 : ((dx) sUVar).GhY()) {
                JSONObject jSONObjectSj = Sj(false, sUVar2);
                if (jSONObjectSj != null) {
                    jSONObjectSj.put("template_Plugin", sP(sUVar2.xhi()));
                    jSONObjectSj.put("diff_template_Plugin", Sj(sUVar2.xhi()));
                    jSONArray.put(jSONObjectSj);
                }
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject Sj(float f11, float f12, boolean z10, @NonNull sU sUVar, String str, TKC tkc) {
        sP = "";
        JSONObject jSONObjectSP = null;
        if (sUVar == null) {
            return null;
        }
        try {
            jSONObjectSP = sUVar.SP();
            Sj(jSONObjectSP, sUVar, str);
            JSONObject jSONObjectSP2 = Yf.sP(sUVar);
            jSONObjectSP2.put(TmcConstants.KEY_LANGUAGE, aa.sP());
            jSONObjectSP.put("xSetting", jSONObjectSP2);
            jSONObjectSP.put("xAdInfo", Sj(str, sP(sUVar), sUVar));
            JSONObject jSONObject = new JSONObject();
            Yf.sP(jSONObject);
            jSONObject.put(TrackingKey.PLATFORM, "android");
            jSONObjectSP.put("xAppInfo", jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", f11);
            jSONObject2.put("height", f12);
            if (z10) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObjectSP.put("xSize", jSONObject2);
            if (tkc != null) {
                tkc.Sj("adv3");
            }
            LqL lqLNdK = sUVar.ndK();
            if (lqLNdK != null) {
                String strEjP = lqLNdK.EjP();
                if (TextUtils.isEmpty(strEjP)) {
                    String strSj = com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj("adv3", lqLNdK.Sj(), lqLNdK.sP());
                    if (TextUtils.isEmpty(strSj)) {
                        String str2 = "local db data is null id is " + lqLNdK.Sj() + " md5 is " + lqLNdK.sP();
                        sP = str2;
                        if (tkc != null) {
                            tkc.Sj(3, str2, "net");
                        }
                    } else {
                        jSONObjectSP.put("xTemplate", new JSONObject(strSj));
                        sP = "getTemplate success by db data";
                        if (tkc != null) {
                            tkc.sP(ImagesContract.LOCAL);
                        }
                    }
                } else {
                    jSONObjectSP.put("xTemplate", new JSONObject(strEjP));
                    sP = "getTemplate success by local data";
                    if (tkc != null) {
                        tkc.sP(ImagesContract.LOCAL);
                    }
                }
            }
        } catch (Exception e11) {
            String str3 = "load template exception " + e11.getMessage();
            sP = str3;
            if (tkc != null) {
                tkc.Sj(3, str3, "net");
            }
        }
        return jSONObjectSP;
    }

    private static JSONObject Sj(String str, JSONObject jSONObject, sU sUVar) {
        if (sUVar == null) {
            return jSONObject;
        }
        try {
            if ("open_ad".equals(str)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("app_name", uA.sP().Dq());
                int iUA = uA.sP().uA();
                if (iUA != 0) {
                    int iFF = sUVar.fF();
                    if (9 == iFF) {
                        jSONObject2.put("app_icon", Sj);
                    } else if (10 == iFF) {
                        jSONObject2.put("app_icon", "@".concat(String.valueOf(iUA)));
                    }
                }
                jSONObject.put("open_app_info", jSONObject2);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            return jSONObject;
        }
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject3;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("keys");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i11);
                    if (jSONObject.has(strOptString)) {
                        jSONObject3.put(strOptString, jSONObject.opt(strOptString));
                    }
                }
                jSONObject3.put("xSetting", jSONObject.opt("xSetting"));
                jSONObject3.put("xAdInfo", jSONObject.opt("xAdInfo"));
                jSONObject3.put("xAppInfo", jSONObject.opt("xAppInfo"));
                jSONObject3.put("xSize", jSONObject.opt("xSize"));
                jSONObject3.put("xTemplate", jSONObject.opt("xTemplate"));
                return jSONObject3;
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject Sj(boolean z10, @NonNull sU sUVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", sUVar.Ir());
            if (sUVar.EZ() != null) {
                if (sUVar.EZ() == null || TextUtils.isEmpty(sUVar.EZ().Sj())) {
                    jSONObject.put(RewardPlus.ICON, "");
                } else {
                    jSONObject.put(RewardPlus.ICON, sUVar.EZ().Sj());
                }
            }
            JSONArray jSONArray = new JSONArray();
            if (sUVar.Bml() != null) {
                for (int i11 = 0; i11 < sUVar.Bml().size(); i11++) {
                    uvD uvd = sUVar.Bml().get(i11);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("height", uvd.TKC());
                    jSONObject2.put("width", uvd.sP());
                    jSONObject2.put("url", uvd.Sj());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", sUVar.HcZ());
            jSONObject.put("interaction_type", sUVar.sdp());
            jSONObject.put("interaction_method", sUVar.zR());
            jSONObject.put("is_compliance_template", sP());
            jSONObject.put(CampaignEx.JSON_KEY_TITLE, sUVar.xu());
            jSONObject.put(TrackingKey.DESCRIPTION, sUVar.gR());
            jSONObject.put(EventConstants.KEY_SOURCE, sUVar.dwU());
            JSONObject jSONObject3 = new JSONObject();
            dNu dnuSef = sUVar.sef();
            if (dnuSef == null) {
                dnuSef = new dNu();
            }
            jSONObject3.put("ceiling_time", dnuSef.EjP());
            jSONObject3.put("ceiling_ratio", dnuSef.HiB());
            jSONObject3.put("expand_ratio", dnuSef.vS());
            jSONObject.put("interaction_params", jSONObject3);
            if (sUVar.tz() != null) {
                jSONObject.put("comment_num", sUVar.tz().HiB());
                jSONObject.put("score", sUVar.tz().EjP());
                jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, sUVar.tz().vS());
                jSONObject.put("app", sUVar.tz().Dq());
            }
            b bVarUHs = sUVar.UHs();
            if (bVarUHs != null) {
                JSONObject jSONObjectW = bVarUHs.w();
                jSONObjectW.put("video_duration", bVarUHs.K() * ((double) bVarUHs.N()));
                jSONObject.put("video", jSONObjectW);
            }
            if (sUVar.xhi() != null) {
                jSONObject.put("dynamic_creative", sUVar.xhi().Ym());
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void Sj(JSONObject jSONObject, sU sUVar, String str) {
        b bVarUHs;
        if (sUVar == null || jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has("h265_video")) {
                jSONObject.remove("h265_video");
            }
            if (!jSONObject.has("video") || (bVarUHs = sUVar.UHs()) == null) {
                return;
            }
            JSONObject jSONObjectW = bVarUHs.w();
            if (jSONObjectW != null) {
                if ("open_ad".equals(str)) {
                    jSONObjectW.put("video_duration", com.bytedance.sdk.openadsdk.core.dNu.EjP().ib(String.valueOf(sUVar.If())));
                } else {
                    jSONObjectW.put("video_duration", bVarUHs.K() * ((double) bVarUHs.N()));
                }
            }
            jSONObject.put("video", jSONObjectW);
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    private static String sP(sU.Sj sj2) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVarTKC;
        if (sj2 == null) {
            return "";
        }
        String strUA = sj2.uA();
        return (!TextUtils.isEmpty(strUA) || (sPVarTKC = com.bytedance.sdk.component.adexpress.Sj.sP.sP.TKC(sj2.vS())) == null) ? strUA : sPVarTKC.HiB();
    }

    private static JSONObject sP(sU sUVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            Yf.Sj(jSONObject, sUVar);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static boolean sP() {
        return true;
    }
}
