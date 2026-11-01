package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.component.Jcg;
import com.bytedance.sdk.openadsdk.component.Jcg.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class TTC2Proxy {
    private TTC2Proxy() {
    }

    public static void a(Context context) {
        Sj.Sj(context);
    }

    public static void load(Context context, AdSlot adSlot, PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener, int i11) {
        adSlot.setDurationSlotType(3);
        Jcg.Sj(context).Sj(adSlot, pAGAppOpenAdLoadListener, i11);
    }
}
