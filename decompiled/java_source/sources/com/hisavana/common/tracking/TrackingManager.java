package com.hisavana.common.tracking;

import android.os.Bundle;
import com.cloud.tmc.ad.athena.PostConstant;
import com.hisavana.common.BuildConfig;
import i7.a;
import i7.b;

/* JADX INFO: loaded from: classes.dex */
public class TrackingManager {
    public static final int CODE_ERROR = 1;
    public static final int CODE_SUCCESS = 0;
    public static final int TID = 8661;
    public static final int TRIGGER_TYPE_AD_FILLING = 3;
    public static final int TRIGGER_TYPE_AD_UNIT_IS_CLOSED = 6;
    public static final int TRIGGER_TYPE_AHA_ADD_IDS = 5;
    public static final int TRIGGER_TYPE_COLD = 1;
    public static final int TRIGGER_TYPE_CONFIG_IS_EMPTY = 7;

    private static void track(Bundle bundle, final String str) {
        if (bundle == null) {
            return;
        }
        final Bundle bundle2 = new Bundle();
        bundle2.putAll(bundle);
        b.c(new Runnable() { // from class: com.hisavana.common.tracking.TrackingManager.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                Bundle bundleA = b.a(null);
                bundleA.putString("sdk_version", BuildConfig.VERSION_NAME);
                bundleA.putInt("sdk_version_int", 360200);
                if ("ad_trigger".equals(str) || "ad_show".equals(str) || "ad_click".equals(str)) {
                    a.v0(bundleA);
                }
                bundleA.putAll(bundle2);
                System.currentTimeMillis();
                new yi.a(str, TrackingManager.TID).c(bundleA, null).b();
            }
        });
    }

    public static void trackEnterScene(Bundle bundle) {
        track(bundle, "enter_scene");
    }

    public static void trackGetNativeInfo(Bundle bundle) {
        track(bundle, "get_native_Info");
    }

    public static void trackInit(Bundle bundle) {
        track(bundle, "app_init");
    }

    public static void trackInterstitialRewardGuideClose(Bundle bundle) {
        track(bundle, "interstitial_reward_guideclose");
    }

    public static void trackIsReady(Bundle bundle) {
        track(bundle, "is_ready");
    }

    public static void trackTriggerStart(int i11) {
        Bundle bundle = new Bundle();
        bundle.putLong("ts", System.currentTimeMillis());
        bundle.putInt("trigger_source", i11);
        track(bundle, "ad_trigger_start");
    }

    public static void trackingADCldRequest(Bundle bundle) {
        track(bundle, PostConstant.EVENT_CLD_REQUEST);
    }

    public static void trackingADTrigger(Bundle bundle) {
        track(bundle, "ad_trigger");
    }

    public static void trackingAdBidding(Bundle bundle) {
        track(bundle, "inquiry_request");
    }

    public static void trackingAdBiddingReturn(Bundle bundle) {
        track(bundle, "inquiry_return");
    }

    public static void trackingAdCancel(Bundle bundle) {
        track(bundle, "ad_cancel");
    }

    public static void trackingAdClick(Bundle bundle) {
        track(bundle, "ad_click");
    }

    public static void trackingAdClose(Bundle bundle) {
        track(bundle, "ad_closure");
    }

    public static void trackingAdLoaded(Bundle bundle) {
        track(bundle, "ad_filling");
    }

    public static void trackingAdRequest(Bundle bundle) {
        track(bundle, "ad_request");
    }

    public static void trackingAdReturn(Bundle bundle) {
        track(bundle, "ad_return");
    }

    public static void trackingAdmobShowPrice(Bundle bundle) {
        track(bundle, "show_price");
    }

    public static void trackingCldReturn(Bundle bundle) {
        track(bundle, PostConstant.EVENT_CLD_RETURN);
    }

    public static void trackingErrorLog(Bundle bundle) {
        track(bundle, "ad_error_log");
    }

    public static void trackingImpression(Bundle bundle) {
        track(bundle, "ad_show");
    }

    public static void trackingStartBid(Bundle bundle) {
        track(bundle, "ad_start_bid");
    }

    public static void trackingTriggerShow(Bundle bundle) {
        track(bundle, "ad_trigger_show");
    }
}
