package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    public static void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, int i11, boolean z10) {
        if (sj2 == null || sj2.EjP() == null || sj2.EjP().size() <= 0) {
            return;
        }
        if (i11 >= sj2.EjP().size()) {
            i11 = 0;
        }
        sU sUVar = sj2.EjP().get(i11);
        Context contextSj = dNu.Sj();
        Sj(sUVar, !TextUtils.isEmpty(z10 ? aa.Sj(contextSj).Sj(sUVar) : EjP.Sj(contextSj).Sj(sUVar)), z10);
    }

    public static void Sj(final sU sUVar, final boolean z10, final boolean z11) {
        com.bytedance.sdk.openadsdk.core.sef.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                sU sUVar2 = sUVar;
                if (sUVar2 == null || sUVar2.ODI()) {
                    return;
                }
                try {
                    Context contextSj = dNu.Sj();
                    AdSlot adSlotXD = sUVar.xD();
                    if (adSlotXD != null) {
                        int iSP = HiB.sP();
                        if (iSP == 0 || iSP == 2) {
                            if (z11) {
                                Fmk.Sj(contextSj).Sj(adSlotXD.getCodeId(), sUVar);
                            } else {
                                HiB.Sj(contextSj).Sj(adSlotXD.getCodeId(), sUVar);
                            }
                        }
                        if (z10) {
                            if (z11) {
                                Fmk.Sj(contextSj).Sj(adSlotXD);
                            } else {
                                HiB.Sj(contextSj).Sj(adSlotXD);
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
