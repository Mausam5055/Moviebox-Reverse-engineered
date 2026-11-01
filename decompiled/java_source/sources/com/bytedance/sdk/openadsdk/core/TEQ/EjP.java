package com.bytedance.sdk.openadsdk.core.TEQ;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.ImagesContract;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    private static String Sj = "";

    public static String Sj() {
        return Sj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public static JSONObject Sj(sU sUVar, com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC tkc) {
        tkc.Sj(CommonLogUtil.TAG_AD);
        String strDNu = "";
        Sj = "";
        ?? r11 = 0;
        try {
            sU.Sj sjXhi = sUVar.xhi();
            if (sjXhi != null) {
                strDNu = sjXhi.dNu();
                if (TextUtils.isEmpty(strDNu) && !TextUtils.isEmpty(sjXhi.uvD()) && !TextUtils.isEmpty(sjXhi.vS())) {
                    strDNu = com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(CommonLogUtil.TAG_AD, sjXhi.vS(), sjXhi.uvD());
                }
            }
            try {
                if (TextUtils.isEmpty(strDNu)) {
                    String str = "local data is null id is " + sjXhi.vS() + " md5 is " + sjXhi.uvD();
                    Sj = str;
                    tkc.Sj(3, str, "net");
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(strDNu);
                    try {
                        Sj = "getTemplate success";
                        tkc.sP(ImagesContract.LOCAL);
                        return jSONObject;
                    } catch (JSONException unused) {
                        String strConcat = "parse json exception data is ".concat(String.valueOf(strDNu));
                        Sj = strConcat;
                        tkc.Sj(2, strConcat, ImagesContract.LOCAL);
                        return null;
                    }
                } catch (JSONException unused2) {
                }
            } catch (Throwable th2) {
                r11 = sjXhi;
                th = th2;
                String str2 = "get template error " + th.getMessage();
                Sj = str2;
                tkc.Sj(2, str2, ImagesContract.LOCAL);
                return r11;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static JSONObject Sj(sU sUVar, String str) {
        JSONObject jSONObjectSP = sUVar.SP();
        try {
            jSONObjectSP.put("show_dislike", sUVar.RrR());
            jSONObjectSP.put(TmcConstants.KEY_LANGUAGE, aa.sP());
            if ("open_ad".equals(str)) {
                JSONObject jSONObject = new JSONObject();
                String strDq = uA.sP().Dq();
                int iUA = uA.sP().uA();
                jSONObject.put("app_name", strDq);
                jSONObject.put("app_icon_id", "@".concat(String.valueOf(iUA)));
                jSONObjectSP.put("open_app_info", jSONObject);
            }
            jSONObjectSP.put("os", "Android");
            JSONArray jSONArrayTKC = TKC(sUVar);
            if (jSONArrayTKC != null) {
                jSONObjectSP.put("dpa_data", jSONArrayTKC);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("UgenUtils", "parseUGenDataInfo exception", th2.getMessage());
        }
        return jSONObjectSP;
    }

    public static boolean Sj(int i11) {
        return i11 == 10 || i11 == 9;
    }

    public static boolean Sj(sU sUVar) {
        return sUVar != null && sUVar.fF() == 7;
    }

    private static JSONArray TKC(sU sUVar) {
        try {
            sU.Sj sjXhi = sUVar.xhi();
            if (sjXhi == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(sjXhi.Ym());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("original_price", Double.valueOf(jSONObject.optDouble("original_price", 0.0d)));
            jSONObject2.putOpt("price_unit", jSONObject.optString("price_unit"));
            jSONObject2.putOpt("discount", Double.valueOf(jSONObject.optDouble("discount", 0.0d)));
            jSONObject2.putOpt("product_name", jSONObject.optString("dpa_product_name"));
            jSONObject2.putOpt(TrackingKey.DESCRIPTION, jSONObject.optString("dpa_description"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("dpa_images");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                jSONObject2.putOpt("image", jSONArrayOptJSONArray.get(0));
            }
            jSONObject2.putOpt("brand_name", jSONObject.optString("dpa_brand_name"));
            jSONObject2.putOpt("sale_price_i18n", Integer.valueOf(jSONObject.optInt("sale_price_i18n")));
            jSONObject2.putOpt("real_price", Double.valueOf(jSONObject.optDouble("real_price", 0.0d)));
            jSONObject2.put("button_text", sUVar.Ir());
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("dpa_related_products");
            if (jSONArrayOptJSONArray2 != null) {
                jSONArray.put(jSONObject2);
                for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                    try {
                        JSONObject jSONObject3 = jSONArrayOptJSONArray2.getJSONObject(i11);
                        jSONObject3.put("button_text", sUVar.Ir());
                        jSONArray.put(jSONObject3);
                    } catch (Throwable unused) {
                    }
                }
            }
            return jSONArray;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static boolean sP(sU sUVar) {
        return sUVar != null && sUVar.fF() == 10;
    }
}
