package com.hisavana.mintegral.executer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.hisavana.mintegral.util.PlatformUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.MBBidNativeHandler;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.out.OnMBMediaViewListenerPlus;
import com.transsion.push.PushConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class MintegralNative extends BaseNative {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MBBidNativeHandler f33324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NativeListener.NativeAdListener f33325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OnMBMediaViewListenerPlus f33326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AdNativeInfo f33327g;

    public MintegralNative(Context context, Network network, int i11) {
        super(context, network, i11);
        this.f33325e = new NativeListener.NativeAdListener() { // from class: com.hisavana.mintegral.executer.MintegralNative.1
            @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
            public void onAdClick(Campaign campaign) {
                MintegralNative mintegralNative = MintegralNative.this;
                mintegralNative.adClicked(mintegralNative.f33327g);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onAdClick");
            }

            @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
            public void onAdFramesLoaded(List<Frame> list) {
            }

            @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
            public void onAdLoadError(String str) {
                MintegralNative.this.adFailedToLoad(new TAdErrorCode(30003, str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral onLoadFailed message：" + str);
            }

            @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
            public void onAdLoaded(List<Campaign> list, int i12) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdLoad");
                if (list == null || list.isEmpty()) {
                    return;
                }
                Iterator<Campaign> it = list.iterator();
                int i13 = 0;
                while (it.hasNext()) {
                    TAdNativeInfo tAdNativeInfo = PlatformUtil.getTAdNativeInfo(it.next(), ((BaseNative) MintegralNative.this).mAdt, MintegralNative.this.getTtl(), MintegralNative.this);
                    int iFilter = MintegralNative.this.filter(tAdNativeInfo);
                    if (iFilter == 0) {
                        ((BaseNative) MintegralNative.this).mNatives.add(tAdNativeInfo);
                    } else {
                        AdUtil.release(tAdNativeInfo);
                    }
                    i13 = iFilter;
                }
                if (!((BaseNative) MintegralNative.this).mNatives.isEmpty()) {
                    MintegralNative mintegralNative = MintegralNative.this;
                    mintegralNative.adLoaded(((BaseNative) mintegralNative).mNatives);
                    return;
                }
                MintegralNative.this.adFailedToLoad(new TAdErrorCode(i13, "ad filter"));
                AdLogUtil.Log().w(ExistsCheck.MINTEGRAL_TAG, "ad not pass sensitive check or no icon or image filter:" + i13);
            }

            @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
            public void onLoggingImpression(int i12) {
                MintegralNative mintegralNative = MintegralNative.this;
                mintegralNative.adImpression(mintegralNative.f33327g);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLoggingImpression");
            }
        };
        this.f33326f = new OnMBMediaViewListenerPlus() { // from class: com.hisavana.mintegral.executer.MintegralNative.2
            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onEnterFullscreen() {
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onExitFullscreen() {
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onFinishRedirection(Campaign campaign, String str) {
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onRedirectionFailed(Campaign campaign, String str) {
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onStartRedirection(Campaign campaign, String str) {
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onVideoAdClicked(Campaign campaign) {
                MintegralNative mintegralNative = MintegralNative.this;
                mintegralNative.adClicked(mintegralNative.f33327g);
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onVideoComplete() {
            }

            @Override // com.mbridge.msdk.out.OnMBMediaViewListenerPlus
            public void onVideoStart() {
            }
        };
    }

    @Override // com.hisavana.common.base.BaseNative, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        MBBidNativeHandler mBBidNativeHandler = this.f33324d;
        if (mBBidNativeHandler != null) {
            mBBidNativeHandler.bidRelease();
        }
        this.f33324d = null;
        this.f33325e = null;
        this.f33326f = null;
        this.f33327g = null;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public OnMBMediaViewListenerPlus getOnMBMediaViewListenerPlus() {
        return this.f33326f;
    }

    @Override // com.hisavana.common.base.BaseNative
    protected void initNative() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f33325e != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                Map<String, Object> nativeProperties = MBBidNativeHandler.getNativeProperties("", this.mNetwork.getCodeSeatId());
                nativeProperties.put("ad_num", Integer.valueOf(this.mAdCount));
                nativeProperties.put(MBridgeConstans.NATIVE_VIDEO_SUPPORT, Boolean.TRUE);
                MBBidNativeHandler mBBidNativeHandler = new MBBidNativeHandler(nativeProperties, e.a());
                this.f33324d = mBBidNativeHandler;
                mBBidNativeHandler.setAdListener(this.f33325e);
                this.f33324d.bidLoad(this.mNetwork.getBidInfo().getPayload());
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param empty"));
    }

    @Override // com.hisavana.common.base.BaseNative
    protected void onNativeAdStartLoad() {
    }

    @Override // com.hisavana.common.interfacz.IadNative
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        logTrigerShow(adNativeInfo);
        this.f33327g = adNativeInfo;
        if (this.f33324d == null || adNativeInfo == null || adNativeInfo.getNativeAdWrapper() == null || adNativeInfo.getNativeAdWrapper().getNativeAd() == null || !(adNativeInfo.getNativeAdWrapper().getNativeAd() instanceof Campaign)) {
            onAdShowError(adNativeInfo, TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "registerViewForInteraction error");
        } else {
            this.f33324d.registerView(viewGroup, list, (Campaign) adNativeInfo.getNativeAdWrapper().getNativeAd());
            setNativeCloseListener(viewGroup, adNativeInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.IadNative
    public void unregisterView(@NonNull AdNativeInfo adNativeInfo) {
    }
}
