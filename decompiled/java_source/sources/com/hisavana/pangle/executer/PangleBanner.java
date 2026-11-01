package com.hisavana.pangle.executer;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class PangleBanner extends BaseBanner {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f33349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PAGBannerAdLoadListener f33350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PAGBannerAdInteractionListener f33351f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PAGBannerAd f33352g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PAGBannerRequest f33353h;

    public PangleBanner(Context context, Network network, int i11) {
        super(context, network);
        this.f33350e = new PAGBannerAdLoadListener() { // from class: com.hisavana.pangle.executer.PangleBanner.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
            public void onAdLoaded(PAGBannerAd pAGBannerAd) {
                if (pAGBannerAd == null) {
                    return;
                }
                PangleBanner.this.f33352g = pAGBannerAd;
                PangleBanner pangleBanner = PangleBanner.this;
                pangleBanner.f33349d = pangleBanner.f33352g.getBannerView();
                if (PangleBanner.this.f33351f != null) {
                    PangleBanner.this.f33352g.setAdInteractionListener(PangleBanner.this.f33351f);
                    try {
                        double d11 = Double.parseDouble(PangleBanner.this.f33352g.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d11 > 0.0d) {
                            PangleBanner.this.setEcpmPrice(d11 * 100.0d);
                        }
                    } catch (Exception e11) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e11));
                    }
                }
                PangleBanner.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle onAdLoad");
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
            public void onError(int i12, String str) {
                PangleBanner.this.adFailedToLoad(new TAdErrorCode(i12, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle onError pangle code：" + i12 + "，message：" + str);
            }
        };
        this.f33351f = new PAGBannerAdInteractionListener() { // from class: com.hisavana.pangle.executer.PangleBanner.2
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdClicked() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
                PangleBanner.this.adClicked(null);
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdDismissed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
                PangleBanner.this.adClosed();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdShowed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
                PangleBanner.this.adImpression(null);
            }
        };
        this.f33353h = new PAGBannerRequest(i11 != 1 ? i11 != 2 ? i11 != 3 ? PAGBannerSize.BANNER_W_320_H_50 : new PAGBannerSize(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 90) : PAGBannerSize.BANNER_W_300_H_250 : new PAGBannerSize(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 100));
    }

    @Override // com.hisavana.common.base.BaseBanner, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected View getBanner() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "getBanner " + this.f33349d);
        WeakReference<Context> weakReference = this.mContext;
        Context context = (weakReference == null || weakReference.get() == null) ? null : this.mContext.get();
        if (this.f33349d == null && context != null) {
            this.f33349d = new View(e.a());
        }
        return this.f33349d;
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void onBannerDestroy() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onBannerDestroy");
        if (this.f33349d != null) {
            this.f33349d = null;
        }
        PAGBannerAd pAGBannerAd = this.f33352g;
        if (pAGBannerAd != null) {
            pAGBannerAd.destroy();
        }
        this.f33351f = null;
        this.f33350e = null;
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void onBannerLoad() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onBannerLoad");
        if (this.mNetwork == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            ExistsCheck.initAdSource(this.mNetwork.getApplicationId(), new PAGSdk.PAGInitCallback() { // from class: com.hisavana.pangle.executer.PangleBanner.3
                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void fail(int i11, String str) {
                    PangleBanner.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i11 + "，message：" + str);
                }

                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void success() {
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init time " + jCurrentTimeMillis2);
                    if (((BaseAd) PangleBanner.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleBanner.this).mNetwork.getCodeSeatId()) && PangleBanner.this.f33350e != null) {
                        PAGBannerAd.loadAd(((BaseAd) PangleBanner.this).mNetwork.getCodeSeatId(), PangleBanner.this.f33353h, PangleBanner.this.f33350e);
                        return;
                    }
                    PangleBanner.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }

    @Override // com.hisavana.common.base.BaseBanner, com.hisavana.common.interfacz.IadView
    public void show(WrapTadView wrapTadView, String str, String str2) {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "showBanner");
        if (this.f33349d == null || wrapTadView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.PANGLE_TAG, "showBanner show error,adView is null");
            return;
        }
        logTrigerShow(str, str2);
        wrapTadView.removeAllViews();
        wrapTadView.addView(this.f33349d);
        ViewGroup.LayoutParams layoutParams = this.f33349d.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
            this.f33349d.setLayoutParams(layoutParams);
        }
        this.f33349d.setVisibility(0);
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void showBanner() {
    }
}
