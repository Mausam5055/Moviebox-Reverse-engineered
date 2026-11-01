package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.transsion.api.gateway.utils.SafeStringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class i {
    public static void a(Context context, int i11, int i12, String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000058");
            jSONObject.put(SafeStringUtils.SP_APPID, com.mbridge.msdk.foundation.controller.c.m().b());
            jSONObject.put("dl_type", String.valueOf(i11));
            jSONObject.put("dl_link_type", String.valueOf(i12));
            jSONObject.put("rid", str);
            jSONObject.put("rid_n", str2);
            jSONObject.put(BidResponsedEx.KEY_CID, str3);
            jSONObject.put("tgt_v", k0.w(context));
            jSONObject.put("app_v_n", k0.B(context));
            jSONObject.put("app_v_c", k0.A(context));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("ReportControllerDiff", e11.getMessage());
            }
        }
    }
}
