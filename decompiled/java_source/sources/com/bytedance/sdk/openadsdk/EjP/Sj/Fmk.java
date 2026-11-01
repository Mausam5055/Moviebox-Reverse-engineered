package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk implements com.bytedance.sdk.openadsdk.Zq.sP {
    private final com.bytedance.sdk.component.vS.Sj.vS.EjP Sj;
    private final boolean sP;

    public Fmk(boolean z10, com.bytedance.sdk.component.vS.Sj.vS.EjP ejP) {
        this.Sj = ejP;
        this.sP = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.Zq.sP
    @Nullable
    public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
        int i11;
        if (this.Sj == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, this.sP);
        jSONObject.put("url", this.Sj.sP());
        int iEjP = this.Sj.EjP();
        if (iEjP <= 0) {
            iEjP = 0;
        }
        jSONObject.put("retry_times", iEjP);
        jSONObject.put("ad_id", this.Sj.vS());
        jSONObject.put("track_type", this.Sj.HiB());
        if (!this.sP) {
            i11 = 4;
        } else if (this.Sj.TEQ()) {
            i11 = 3;
        } else {
            i11 = this.Sj.EjP() <= 0 ? 1 : 2;
        }
        jSONObject.put("upload_scene", i11);
        String strJcg = this.Sj.Jcg();
        if (!TextUtils.isEmpty(strJcg)) {
            JSONArray jSONArray = new JSONArray();
            for (String str : strJcg.split(",")) {
                jSONArray.put(str);
            }
            jSONObject.put("error_code", jSONArray);
        }
        String strUA = this.Sj.uA();
        if (!TextUtils.isEmpty(strUA)) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str2 : strUA.split(",")) {
                jSONArray2.put(str2);
            }
            jSONObject.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, jSONArray2);
        }
        return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("track_link_result").sP(jSONObject.toString());
    }
}
