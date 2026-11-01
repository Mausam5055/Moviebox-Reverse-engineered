package com.bytedance.sdk.openadsdk.core.uA;

import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.sdk.component.utils.HiB;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.hisavana.common.tracking.TrackingKey;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private static boolean Sj;

    public static long EjP() {
        if (dNu.EjP().HpB()) {
            return sP.sP().vS();
        }
        return 0L;
    }

    public static int HiB() {
        if (dNu.EjP().HpB()) {
            return sP.sP().Jcg();
        }
        return 6;
    }

    public static Map<String, String> Sj(String str, String str2) {
        if (dNu.EjP().HpB()) {
            return sP.sP().Sj(str, str2 != null ? str2.getBytes() : new byte[0]);
        }
        return new HashMap();
    }

    public static void Sj() {
        if (!Sj && dNu.EjP().HpB()) {
            sP.sP();
            Sj = sP.sP().TKC();
        }
    }

    public static void Sj(MotionEvent motionEvent) {
        if (dNu.EjP().HpB()) {
            sP.sP().Sj(motionEvent);
        }
    }

    public static void Sj(sU sUVar, String str) {
        long jOptLong;
        long jOptLong2;
        long jOptLong3;
        Object obj;
        if (dNu.EjP().HpB()) {
            HashMap map = new HashMap();
            map.put(Constants.AD_FRAMEWORK_VERSION, BuildConfig.VERSION_NAME);
            map.put("au_show", str);
            if (sUVar != null) {
                String strCKW = sUVar.cKW();
                boolean zIsEmpty = TextUtils.isEmpty(strCKW);
                String strOptString = TmcConstants.COLD_OPEN_TYPE;
                if (zIsEmpty) {
                    map.put(TrackingKey.REQUEST_ID, TmcConstants.COLD_OPEN_TYPE);
                } else {
                    map.put(TrackingKey.REQUEST_ID, strCKW);
                }
                try {
                    long j11 = -1;
                    if (sUVar.DhB() != null) {
                        jOptLong = sUVar.DhB().optLong("ad_id", -1L);
                        jOptLong2 = sUVar.DhB().optLong("rit", -1L);
                        jOptLong3 = sUVar.DhB().optLong("ad_slot_type", -1L);
                        strOptString = sUVar.DhB().optString("ad_type", TmcConstants.COLD_OPEN_TYPE);
                    } else {
                        jOptLong = -1;
                        jOptLong2 = -1;
                        jOptLong3 = -1;
                    }
                    map.put("ad_id", Long.valueOf(jOptLong));
                    map.put("rit", Long.valueOf(jOptLong2));
                    map.put("ad_slot_type", Long.valueOf(jOptLong3));
                    map.put("ad_type", strOptString);
                    Map<String, Object> mapQZ = sUVar.QZ();
                    if (mapQZ != null && (obj = mapQZ.get(TTAdConstant.SDK_BIDDING_TYPE)) != null) {
                        j11 = Long.parseLong(obj.toString());
                    }
                    map.put(TTAdConstant.SDK_BIDDING_TYPE, Long.valueOf(j11));
                    sP.sP().Sj("AdShow", map);
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static void Sj(String str) {
        if (dNu.EjP().HpB()) {
            sP.sP().Sj(str);
        }
    }

    public static void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (!dNu.EjP().HpB()) {
                jSONObject.put("pglx", PrepareException.ERROR_NO_URL);
                return;
            }
            Sj();
            if (HiB() != 0) {
                jSONObject.put("pglx", String.valueOf(HiB()));
                return;
            }
            jSONObject.put("sec_did", sP.sP().EjP());
            String strSj = HiB.Sj(jSONObject.toString());
            Map<String, String> mapSj = sP.sP().Sj("https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250", strSj != null ? strSj.getBytes() : new byte[0]);
            if (mapSj == null || mapSj.size() <= 0) {
                jSONObject.put("pglx", PrepareException.ERROR_MANIFEST_INFO);
            } else {
                for (String str : mapSj.keySet()) {
                    jSONObject.put(str, mapSj.get(str));
                }
                jSONObject.put("url", "https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250");
                jSONObject.put("pangle_m", strSj);
            }
            jSONObject.put("ec", sP.sP().vS());
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("SecSdkHelperUtil", th2.getMessage());
            try {
                jSONObject.put("pglx", "7");
            } catch (JSONException unused) {
            }
        }
    }

    public static String TKC() {
        return dNu.EjP().HpB() ? sP.sP().HiB() : "";
    }

    public static void sP() {
        if (dNu.EjP().HpB()) {
            sP.sP().Sj();
        }
    }

    public static void sP(String str) {
        if (TextUtils.isEmpty(str) || !dNu.EjP().HpB()) {
            return;
        }
        sP.sP().sP(str);
    }

    public static String vS() {
        if (dNu.EjP().HpB()) {
            return sP.sP().EjP();
        }
        return null;
    }
}
