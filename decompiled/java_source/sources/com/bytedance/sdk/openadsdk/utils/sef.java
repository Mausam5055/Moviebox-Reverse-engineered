package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class sef implements com.bytedance.sdk.openadsdk.oem.Sj {
    private static final sef Sj = new sef();
    private static boolean TKC;
    private static com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sP;

    public static void Sj() {
        if (sP == null) {
            return;
        }
        sP = null;
        IPMiBroadcastReceiver iPMiBroadcastReceiverSj = IPMiBroadcastReceiver.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj());
        if (iPMiBroadcastReceiverSj != null) {
            iPMiBroadcastReceiverSj.Sj();
        }
        TKC = false;
    }

    public static void Sj(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        com.bytedance.sdk.openadsdk.core.model.kF kFVarENi = sj2.sP.eNi();
        if (kFVarENi == null || !kFVarENi.Jcg()) {
            return;
        }
        sP = sj2;
        IPMiBroadcastReceiver iPMiBroadcastReceiverSj = IPMiBroadcastReceiver.Sj(sj2.Ei);
        if (iPMiBroadcastReceiverSj != null) {
            iPMiBroadcastReceiverSj.Sj(Sj);
        }
    }

    public static void sP() {
        TKC = true;
    }

    @Override // com.bytedance.sdk.openadsdk.oem.Sj
    public void Sj(String str, final int i11) {
        com.bytedance.sdk.openadsdk.core.model.EjP ejPTz;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = sP;
        if (sj2 == null || (ejPTz = sj2.sP.tz()) == null) {
            return;
        }
        String strTKC = ejPTz.TKC();
        if (TextUtils.isEmpty(strTKC) || !strTKC.equals(str)) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.sef.1
            @Override // java.lang.Runnable
            public void run() {
                int i12;
                if (sef.sP == null || (i12 = i11) <= 0 || i12 > 5) {
                    return;
                }
                boolean z10 = true;
                boolean z11 = i12 == 1;
                if (sef.TKC) {
                    sef.sP.f20993jb.EjP();
                    HashMap map = new HashMap();
                    map.put("click_scence", 4);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sef.sP.sP, new com.bytedance.sdk.openadsdk.core.model.TEQ.Sj().Sj(), sef.sP.HiB, true, (Map<String, Object>) map, 1);
                } else {
                    z10 = z11;
                }
                if (z10) {
                    sef.Sj();
                }
            }
        });
    }
}
