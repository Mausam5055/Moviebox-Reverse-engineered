package com.hisavana.pangle.check;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.interfacz.a;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.executer.PangleBanner;
import com.hisavana.pangle.executer.PangleInterstitial;
import com.hisavana.pangle.executer.PangleNative;
import com.hisavana.pangle.executer.PangleSplash;
import com.hisavana.pangle.executer.PangleVideo;
import com.hisavana.pangle.holder.NativeAdViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class ExistsCheck implements IBaseAdSummary {
    public static final String PANGLE_TAG = "pangle_log";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f33347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f33348b;

    private static PAGConfig a(String str) {
        return new PAGConfig.Builder().appId(str).debugLog(f33348b).appIcon(f33347a).supportMultiProcess(true).setGDPRConsent(AppStartInfo.userConsent ? 1 : 0).setPAConsent(1 ^ (AppStartInfo.ageRestrictedUser ? 1 : 0)).build();
    }

    public static void initAdSource(String str, PAGSdk.PAGInitCallback pAGInitCallback) {
        AdLogUtil.Log().d(PANGLE_TAG, "initAdSource");
        if (PAGSdk.isInitSuccess()) {
            if (pAGInitCallback != null) {
                pAGInitCallback.success();
                return;
            }
            return;
        }
        try {
            PAGSdk.init(e.a(), a(str), pAGInitCallback);
        } catch (Exception e11) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "ExistsCheck --> Pangle--> initialize exception");
            if (pAGInitCallback != null) {
                pAGInitCallback.fail(30001, e11.getMessage());
            }
        }
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseBanner getBanner(Context context, Network network, int i11, int i12) {
        return new PangleBanner(context, network, i11);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return new PangleInterstitial(context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public /* synthetic */ BaseVideo getInterstitialRewarded(Context context, Network network) {
        return a.a(this, context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseNative getNative(Context context, Network network, int i11) {
        return new PangleNative(context, network, i11);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseNativeViewHolder getNativeViewHolder() {
        return new NativeAdViewHolder();
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseQueryPrice getQueryPrice() {
        return null;
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseSplash getSplash(Context context, Network network) {
        return new PangleSplash(context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseVideo getVideo(Context context, Network network) {
        return new PangleVideo(context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public void init(Context context, AdSourceConfig adSourceConfig) {
        if (context == null || adSourceConfig == null) {
            AdLogUtil.Log().d(PANGLE_TAG, "Pangle initialize exception");
            return;
        }
        f33348b = adSourceConfig.isDebug;
        f33347a = adSourceConfig.appIconId;
        AdLogUtil.Log().d(PANGLE_TAG, "Pangle initialize, appId = " + adSourceConfig.pangleAppId + ", isClosePangleWebFileLock = " + adSourceConfig.isClosePangleWebFileLock);
        if (adSourceConfig.isClosePangleWebFileLock) {
            AdLogUtil.Log().d(PANGLE_TAG, "close Pangle Web File Lock");
            PAGSdk.closeMultiWebViewFileLock();
        }
        if (TextUtils.isEmpty(adSourceConfig.pangleAppId)) {
            return;
        }
        AdLogUtil.Log().d(PANGLE_TAG, "init Pangle in advance, pangleAppID = " + adSourceConfig.pangleAppId);
        initAdSource(adSourceConfig.pangleAppId, null);
    }
}
