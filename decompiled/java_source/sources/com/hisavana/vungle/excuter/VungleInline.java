package com.hisavana.vungle.excuter;

import android.content.Context;
import android.view.View;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.vungle.check.ExistsCheck;
import com.hisavana.vungle.excuter.VungleInline;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.BaseAd;
import com.vungle.ads.VungleBannerView;
import com.vungle.ads.VungleError;
import com.vungle.ads.g;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.y;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/hisavana/vungle/excuter/VungleInline;", "Lcom/hisavana/common/base/BaseBanner;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", "", "bannerSize", "<init>", "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V", "Lcom/vungle/ads/VungleBannerView;", "c", "()Lcom/vungle/ads/VungleBannerView;", "", "onBannerLoad", "()V", "showBanner", "onBannerDestroy", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "e", "I", "f", "Lcom/vungle/ads/VungleBannerView;", "bannerAd", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VungleInline extends BaseBanner<View> {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int bannerSize;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private VungleBannerView bannerAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleInline(Context context, Network network, int i11) {
        super(context, network);
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
        this.context = context;
        this.bannerSize = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(VungleInline vungleInline, boolean z10) {
        if (z10) {
            VungleBannerView vungleBannerView = vungleInline.bannerAd;
            if (vungleBannerView != null) {
                VungleBannerView.load$default(vungleBannerView, null, 1, null);
            }
        } else {
            if (z10) {
                throw new NoWhenBranchMatchedException();
            }
            vungleInline.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.hisavana.common.base.BaseBanner
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public VungleBannerView getBanner() {
        y adSizeWithWidthAndHeight;
        int i11;
        String placementId = getPlacementId();
        Intrinsics.g(placementId, "getPlacementId(...)");
        if (placementId.length() == 0) {
            return null;
        }
        if (this.bannerAd == null) {
            int i12 = this.mBannerAdWidth;
            if (i12 <= 0 || (i11 = this.mBannerAdMaxHeight) <= 0) {
                int i13 = this.bannerSize;
                if (i13 == 0) {
                    adSizeWithWidthAndHeight = y.BANNER;
                } else if (i13 == 1) {
                    adSizeWithWidthAndHeight = y.Companion.getAdSizeWithWidthAndHeight(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 100);
                } else if (i13 != 2) {
                    adSizeWithWidthAndHeight = i13 != 3 ? y.BANNER : y.Companion.getAdSizeWithWidthAndHeight(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 90);
                } else {
                    adSizeWithWidthAndHeight = y.MREC;
                }
            } else {
                adSizeWithWidthAndHeight = y.Companion.getAdSizeWithWidthAndHeight(i12, i11);
            }
            Context context = this.context;
            String placementId2 = getPlacementId();
            Intrinsics.g(placementId2, "getPlacementId(...)");
            VungleBannerView vungleBannerView = new VungleBannerView(context, placementId2, adSizeWithWidthAndHeight);
            vungleBannerView.setAdListener(new g() { // from class: com.hisavana.vungle.excuter.VungleInline$getBanner$1$1
                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdClicked(BaseAd baseAd) {
                    Intrinsics.h(baseAd, "baseAd");
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Banner clicked");
                    this.f33394a.adClicked(null);
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdEnd(BaseAd baseAd) {
                    Intrinsics.h(baseAd, "baseAd");
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdFailedToLoad(BaseAd baseAd, VungleError adError) {
                    Intrinsics.h(baseAd, "baseAd");
                    Intrinsics.h(adError, "adError");
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Banner load failed : " + adError.getErrorMessage());
                    this.f33394a.adFailedToLoad(new TAdErrorCode(adError.getCode(), adError.getMessage()));
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdFailedToPlay(BaseAd baseAd, VungleError adError) {
                    Intrinsics.h(baseAd, "baseAd");
                    Intrinsics.h(adError, "adError");
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Banner load failed : " + adError.getErrorMessage());
                    this.f33394a.onAdShowError(new TAdErrorCode(adError.getCode(), adError.getMessage()));
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdImpression(BaseAd baseAd) {
                    Intrinsics.h(baseAd, "baseAd");
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Banner impression");
                    this.f33394a.adImpression(null);
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdLeftApplication(BaseAd baseAd) {
                    Intrinsics.h(baseAd, "baseAd");
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdLoaded(BaseAd baseAd) {
                    Intrinsics.h(baseAd, "baseAd");
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Banner loaded");
                    this.f33394a.adLoaded();
                }

                @Override // com.vungle.ads.g, com.vungle.ads.h
                public void onAdStart(BaseAd baseAd) {
                    Intrinsics.h(baseAd, "baseAd");
                }
            });
            this.bannerAd = vungleBannerView;
        }
        return this.bannerAd;
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void onBannerDestroy() {
        VungleBannerView vungleBannerView = this.bannerAd;
        if (vungleBannerView != null) {
            vungleBannerView.finishAd();
        }
        VungleBannerView vungleBannerView2 = this.bannerAd;
        if (vungleBannerView2 != null) {
            vungleBannerView2.setAdListener(null);
        }
        this.bannerAd = null;
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void onBannerLoad() {
        Network network = this.mNetwork;
        if (network != null) {
            String codeSeatId = network.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            if (codeSeatId.length() != 0) {
                ExistsCheck.Companion companion = ExistsCheck.INSTANCE;
                String applicationId = this.mNetwork.getApplicationId();
                Intrinsics.g(applicationId, "getApplicationId(...)");
                companion.initVungle(applicationId, new Function1() { // from class: ee.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return VungleInline.d(this.f61849a, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
        }
        adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
    }

    @Override // com.hisavana.common.base.BaseBanner
    protected void showBanner() {
    }
}
