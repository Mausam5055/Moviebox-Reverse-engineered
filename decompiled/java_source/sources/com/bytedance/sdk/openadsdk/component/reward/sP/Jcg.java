package com.bytedance.sdk.openadsdk.component.reward.sP;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg {
    @NonNull
    public static sP Sj(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        sU sUVar = sj2.sP;
        if ((sUVar instanceof dx) && ((dx) sUVar).Qne()) {
            return new vS(sj2);
        }
        if (uP.TzV(sUVar)) {
            return new TEQ(sj2);
        }
        if (Dq.Sj(sUVar) && !TKC.Sj(sUVar)) {
            return new Dq(sj2);
        }
        if (uA.Sj(sUVar)) {
            return new uA(sj2);
        }
        if (TEQ.Sj(sUVar)) {
            return new TEQ(sj2);
        }
        if (EjP.Sj(sUVar)) {
            return new EjP(sj2);
        }
        return TKC.Sj(sUVar) ? new TKC(sj2) : new HiB(sj2);
    }
}
