package com.hisavana.mintegral.executer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.hisavana.mintegral.check.MBridgeSDKManager;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class MintegralBanner extends BaseBanner {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MBBannerView f33316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BannerAdListener f33317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BannerSize f33318f;

    public MintegralBanner(Context context, Network network, int i11) {
        super(context, network);
        this.f33317e = new BannerAdListener() { // from class: com.hisavana.mintegral.executer.MintegralBanner.1
            @Override // com.mbridge.msdk.out.BannerAdListener
            public void closeFullScreen(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads closeFullScreen");
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void onClick(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onClick");
                MintegralBanner.this.adClicked(null);
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void onCloseBanner(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onCloseBanner");
                MintegralBanner.this.adClosed();
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void onLeaveApp(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLeaveApp");
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
                MintegralBanner.this.adFailedToLoad(new TAdErrorCode(30003, str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral onLoadFailed message：" + str);
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void onLoadSuccessed(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLoadSuccessed");
                MintegralBanner.this.adLoaded();
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void onLogImpression(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onAdShowed");
                MintegralBanner.this.adImpression(null);
            }

            @Override // com.mbridge.msdk.out.BannerAdListener
            public void showFullScreen(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads showFullScreen");
            }
        };
        if (i11 == 0) {
            this.f33318f = new BannerSize(4, 0, 0);
            return;
        }
        if (i11 == 1) {
            this.f33318f = new BannerSize(5, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 100);
            return;
        }
        if (i11 == 2) {
            this.f33318f = new BannerSize(2, 0, 0);
        } else if (i11 != 3) {
            this.f33318f = new BannerSize(4, 0, 0);
        } else {
            this.f33318f = new BannerSize(2, 0, 0);
        }
    }

    @Override // com.hisavana.common.base.BaseBanner, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public int dpToPx(Context context, float f11) {
        return (int) ((f11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected View getBanner() {
        WeakReference<Context> weakReference;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "getBanner " + this.f33316d);
        if (this.f33316d == null && (weakReference = this.mContext) != null && weakReference.get() != null) {
            MBBannerView mBBannerView = new MBBannerView(e.a());
            this.f33316d = mBBannerView;
            mBBannerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        return this.f33316d;
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void onBannerDestroy() {
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onBannerDestroy");
        MBBannerView mBBannerView = this.f33316d;
        if (mBBannerView != null) {
            mBBannerView.release();
            this.f33316d = null;
        }
        this.f33317e = null;
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void onBannerLoad() {
        Network network;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onBannerLoad");
        if (MBridgeSDKManager.getInstance().getCurrentState() != MBridgeSDKManager.MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_SUCCESS) {
            adFailedToLoad(new TAdErrorCode(30001, "Mintegral Ads failed to load ad error with param empty"));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "init onError ");
            return;
        }
        if (this.f33316d != null && (network = this.mNetwork) != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f33317e != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                this.f33316d.init(this.f33318f, "", this.mNetwork.getCodeSeatId());
                this.f33316d.setBannerAdListener(this.f33317e);
                this.f33316d.loadFromBid(this.mNetwork.getBidInfo().getPayload());
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param is empty"));
    }

    @Override // com.hisavana.common.base.BaseBanner
    public void pauseAd() {
        MBBannerView mBBannerView = this.f33316d;
        if (mBBannerView != null) {
            mBBannerView.onPause();
        }
    }

    @Override // com.hisavana.common.base.BaseBanner
    public void resumeAd() {
        MBBannerView mBBannerView = this.f33316d;
        if (mBBannerView != null) {
            mBBannerView.onResume();
        }
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void showBanner() {
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "showBanner");
        MBBannerView mBBannerView = this.f33316d;
        if (mBBannerView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "showBanner show error,mbBannerView is null");
            return;
        }
        ViewGroup.LayoutParams layoutParams = mBBannerView.getLayoutParams();
        layoutParams.width = dpToPx(this.f33316d.getContext(), this.f33318f.getWidth());
        layoutParams.height = dpToPx(this.f33316d.getContext(), this.f33318f.getHeight());
        this.f33316d.setLayoutParams(layoutParams);
        this.f33316d.setVisibility(0);
    }
}
