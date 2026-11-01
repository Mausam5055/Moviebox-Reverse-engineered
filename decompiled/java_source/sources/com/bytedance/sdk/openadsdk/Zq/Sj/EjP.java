package com.bytedance.sdk.openadsdk.Zq.Sj;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.api.gateway.utils.SafeStringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP<T extends EjP> implements TKC {
    private String Jcg;
    private String Sj;
    private String TEQ;
    private String TKC;
    private String Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f20949aa;
    private String sP;
    private String uA;
    private final String EjP = BuildConfig.VERSION_NAME;
    private long HiB = System.currentTimeMillis() / 1000;
    private int vS = 0;
    private int Dq = 0;

    private JSONObject Zq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("os", 1);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", Mts.HiB());
            jSONObject.put("ua", Mts.TKC());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static EjP<EjP> sP() {
        return new EjP<>();
    }

    private T uvD() {
        return this;
    }

    public long Dq() {
        return this.HiB;
    }

    public T Dq(String str) {
        this.f20949aa = str;
        return (T) uvD();
    }

    public T EjP(String str) {
        this.TKC = str;
        return (T) uvD();
    }

    public String EjP() {
        return this.Ym;
    }

    public String Fmk() {
        return this.TEQ;
    }

    public T HiB(String str) {
        this.Jcg = str;
        return (T) uvD();
    }

    public String HiB() {
        return this.sP;
    }

    public T Jcg(String str) {
        this.TEQ = str;
        return (T) uvD();
    }

    public String Jcg() {
        return TextUtils.isEmpty(BuildConfig.VERSION_NAME) ? "" : BuildConfig.VERSION_NAME;
    }

    public T Sj(int i11) {
        this.vS = i11;
        return (T) uvD();
    }

    public T Sj(String str) {
        this.Sj = str;
        return (T) uvD();
    }

    @Override // com.bytedance.sdk.openadsdk.Zq.Sj.TKC
    public JSONObject Sj() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(Constants.AD_FRAMEWORK_VERSION, Jcg());
            jSONObject2.put("app_version", Mts.Jcg());
            jSONObject2.put(CampaignEx.JSON_KEY_TIMESTAMP, Dq());
            jSONObject2.put("conn_type", TzV.sP(dNu.Sj()));
            jSONObject2.put(SafeStringUtils.SP_APPID, TextUtils.isEmpty(uA.sP().EjP()) ? "" : uA.sP().EjP());
            jSONObject2.put("device_info", Zq());
            if (!TextUtils.isEmpty(TKC())) {
                jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_TYPE, TKC());
            }
            jSONObject2.put("error_code", Ym());
            if (!TextUtils.isEmpty(aa())) {
                jSONObject2.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, aa());
            }
            if (!TextUtils.isEmpty(HiB())) {
                jSONObject2.put("rit", HiB());
            }
            if (!TextUtils.isEmpty(vS())) {
                jSONObject2.put(CampaignEx.JSON_KEY_CREATIVE_ID, vS());
            }
            if (uA() > 0) {
                jSONObject2.put("adtype", uA());
            }
            if (!TextUtils.isEmpty(TEQ())) {
                jSONObject2.put("req_id", TEQ());
            }
            if (!TextUtils.isEmpty(Fmk())) {
                jSONObject2.put("extra", Fmk());
            }
            String strEjP = EjP();
            if (TextUtils.isEmpty(strEjP)) {
                jSONObject = new JSONObject();
            } else {
                try {
                    jSONObject = new JSONObject(strEjP);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            }
            if (jSONObject != null) {
                jSONObject.put("os_version_int", Build.VERSION.SDK_INT);
                jSONObject2.put("event_extra", jSONObject.toString());
            } else if (!TextUtils.isEmpty(strEjP)) {
                jSONObject2.put("event_extra", strEjP);
            }
            if (!TextUtils.isEmpty(sef())) {
                jSONObject2.put("duration", sef());
            }
        } catch (Throwable th2) {
            sU.sP("LogStatsBase", th2.getMessage());
        }
        return jSONObject2;
    }

    public String TEQ() {
        return this.Jcg;
    }

    public T TKC(String str) {
        this.sP = str;
        return (T) uvD();
    }

    public String TKC() {
        return this.Sj;
    }

    public int Ym() {
        return this.Dq;
    }

    public String aa() {
        return this.uA;
    }

    public T sP(int i11) {
        this.Dq = i11;
        return (T) uvD();
    }

    public T sP(String str) {
        this.Ym = str;
        return (T) uvD();
    }

    public String sef() {
        return this.f20949aa;
    }

    public int uA() {
        return this.vS;
    }

    public T vS(String str) {
        this.uA = str;
        return (T) uvD();
    }

    public String vS() {
        return this.TKC;
    }
}
