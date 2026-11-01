package com.bytedance.sdk.openadsdk.RiZ.Sj.Sj;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    public static vS Sj(Context context, sU sUVar, String str) {
        if (TKC.Sj()) {
            return new HiB(context, sUVar, str);
        }
        return Mts.Dq(context) ? new EjP(context, sUVar, str) : new Sj(context, sUVar, str);
    }
}
