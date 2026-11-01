package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.component.TKC.sP;
import com.bytedance.sdk.openadsdk.component.reward.Fmk;
import com.bytedance.sdk.openadsdk.component.reward.HiB;
import com.bytedance.sdk.openadsdk.component.reward.Jcg;
import com.bytedance.sdk.openadsdk.component.reward.TEQ;

/* JADX INFO: loaded from: classes2.dex */
public class TTC3Proxy {
    public static void a(Context context) {
        try {
            Fmk.Sj(context).Sj();
        } catch (Throwable unused) {
        }
        try {
            HiB.Sj(context).Sj();
        } catch (Throwable unused2) {
        }
    }

    public static void loadFull(Context context, AdSlot adSlot, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        adSlot.setDurationSlotType(8);
        HiB.Sj(context).Sj(adSlot, new sP(pAGInterstitialAdLoadListener));
    }

    public static void loadReward(Context context, AdSlot adSlot, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        adSlot.setDurationSlotType(7);
        Fmk.Sj(context).Sj(adSlot, new Jcg(pAGRewardedAdLoadListener));
    }

    public static void verityPlayable(String str, int i11, String str2, String str3, String str4) {
        TEQ.Sj(str, i11, str2, str3, str4);
    }
}
