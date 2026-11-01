package com.bytedance.sdk.openadsdk.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.api.PAGErrorCode;
import com.bytedance.sdk.openadsdk.api.PAGLoadListener;
import com.bytedance.sdk.openadsdk.api.PAGRequest;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.dNu.EjP;
import com.bytedance.sdk.openadsdk.dNu.TKC;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.b;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static void Sj(final Dq dq2, final PAGLoadListener pAGLoadListener, final AdSlot adSlot) {
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                if (!sef.HiB()) {
                    PAGLoadListener pAGLoadListener2 = pAGLoadListener;
                    if (pAGLoadListener2 != null) {
                        pAGLoadListener2.onError(10000, "Please exec TTAdSdk.init before load ad");
                        return;
                    }
                    return;
                }
                if (!uA.sP().aa()) {
                    TKC.Sj(new EjP() { // from class: com.bytedance.sdk.openadsdk.Sj.Sj.1.1
                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj2.sP(b.LOAD_AD);
                            sj2.TKC(adSlot.getCodeId());
                            sj2.EjP(Mts.TKC(adSlot.getDurationSlotType()));
                            sj2.Sj(BuildConfig.VERSION_NAME);
                            sj2.Jcg(Mts.Sj(adSlot).toString());
                            return sj2;
                        }
                    });
                    JcM.EjP(dq2);
                } else {
                    PAGLoadListener pAGLoadListener3 = pAGLoadListener;
                    if (pAGLoadListener3 != null) {
                        pAGLoadListener3.onError(10004, com.bytedance.sdk.openadsdk.core.Dq.Sj(10004));
                    }
                }
            }
        };
        if (sef.HiB()) {
            runnable.run();
        } else {
            sef.sP().post(runnable);
        }
    }

    public static void Sj(AdSlot.Builder builder, PAGRequest pAGRequest) {
        Map<String, Object> extraInfo;
        if (!sef.HiB() || pAGRequest == null || builder == null || (extraInfo = pAGRequest.getExtraInfo()) == null) {
            return;
        }
        if (extraInfo.containsKey("ad_id") && extraInfo.get("ad_id") != null) {
            builder.setAdId(extraInfo.get("ad_id").toString());
        }
        if (extraInfo.containsKey(CampaignEx.JSON_KEY_CREATIVE_ID) && extraInfo.get(CampaignEx.JSON_KEY_CREATIVE_ID) != null) {
            builder.setCreativeId(extraInfo.get(CampaignEx.JSON_KEY_CREATIVE_ID).toString());
        }
        if (extraInfo.containsKey("ext") && extraInfo.get("ext") != null) {
            builder.setExt(extraInfo.get("ext").toString());
        }
        if (!extraInfo.containsKey("media_extra") || extraInfo.get("media_extra") == null) {
            return;
        }
        builder.setMediaExtra(extraInfo.get("media_extra").toString());
    }

    public static boolean Sj(PAGLoadListener pAGLoadListener) {
        if (com.bytedance.sdk.openadsdk.core.settings.uA.Sj()) {
            return false;
        }
        if (pAGLoadListener == null) {
            return true;
        }
        pAGLoadListener.onError(1000, "Ad request is temporarily paused, Please contact your AM");
        return true;
    }

    public static boolean Sj(String str, PAGRequest pAGRequest, PAGLoadListener pAGLoadListener) {
        if (TextUtils.isEmpty(str) && pAGLoadListener != null) {
            pAGLoadListener.onError(1, PAGErrorCode.PAGAdErrorCodeSlotIdNULLMsg);
            return true;
        }
        if (pAGRequest != null || pAGLoadListener == null) {
            return false;
        }
        pAGLoadListener.onError(2, PAGErrorCode.PAGAdErrorCodeRequestNULLMsg);
        return true;
    }
}
