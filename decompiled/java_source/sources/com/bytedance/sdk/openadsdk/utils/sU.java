package com.bytedance.sdk.openadsdk.utils;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sU {
    public static int Sj = Integer.MIN_VALUE;
    public static final String[] TKC = {"api16-access-ttp.tiktokpangle.us", "api16-access-ttp-b.tiktokpangle.us", "api16-access-ttp.tiktokpangle-b.us", "api16-access-ttp-b.tiktokpangle-b.us"};
    public static int sP = Integer.MIN_VALUE;

    public static String Sj() {
        if (Sj == Integer.MIN_VALUE) {
            Sj = com.bytedance.sdk.openadsdk.core.uA.HiB();
        }
        if (Sj < 0) {
            Sj = 0;
        }
        String[] strArr = TKC;
        try {
            return strArr[Sj % strArr.length];
        } catch (Throwable unused) {
            return strArr[0];
        }
    }

    public static void Sj(com.bytedance.sdk.component.uA.vS vSVar, String str) {
        HashMap map = new HashMap();
        map.put("Referer", TTAdConstant.REQUEST_HEAD_REFERER);
        vSVar.Sj(str, map);
    }

    public static synchronized void Sj(String str) {
        if (str == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            try {
                try {
                    String[] strArr = TKC;
                    if (i11 >= strArr.length) {
                        break;
                    }
                    if (str.contains(strArr[i11])) {
                        int i12 = Sj + 1;
                        Sj = i12;
                        com.bytedance.sdk.openadsdk.core.uA.Sj(i12);
                        break;
                    }
                    i11++;
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (str.contains("/api/ad/union/sdk/settings/") || str.contains("/api/ad/union/sdk/strategies/adn")) {
            if (sP == Integer.MIN_VALUE) {
                sP = com.bytedance.sdk.openadsdk.core.uA.vS();
            }
            int i13 = sP + 1;
            sP = i13;
            if (i13 >= 3) {
                final String strLD = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().LD();
                final int i14 = sP;
                com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().SP();
                sP = 0;
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj("clear_domain", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.utils.sU.1
                    @Override // com.bytedance.sdk.openadsdk.Zq.sP
                    public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("domain", strLD);
                            jSONObject.put("times", i14);
                        } catch (Exception unused) {
                        }
                        return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("clear_domain").sP(jSONObject.toString());
                    }
                });
            }
            com.bytedance.sdk.openadsdk.core.uA.sP(sP);
        }
    }

    public static synchronized void sP() {
        if (sP == 0) {
            return;
        }
        sP = 0;
        com.bytedance.sdk.openadsdk.core.uA.sP(0);
    }
}
