package com.hisavana.vungle.excuter;

import android.app.Activity;
import android.content.Context;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.vungle.check.ExistsCheck;
import com.hisavana.vungle.excuter.VungleInterstitial;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.vungle.ads.BaseAd;
import com.vungle.ads.VungleError;
import com.vungle.ads.a;
import com.vungle.ads.b;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.k;
import com.vungle.ads.n;
import com.vungle.ads.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\rR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/hisavana/vungle/excuter/VungleInterstitial;", "Lcom/hisavana/common/base/BaseInterstitial;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", "<init>", "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V", "", "isLoaded", "()Z", "", "initInterstitial", "()V", "onInterstitialStartLoad", "Landroid/app/Activity;", "activity", "onInterstitialShow", "(Landroid/app/Activity;)V", "destroyAd", "Lcom/vungle/ads/n;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/vungle/ads/n;", "interstitialAd", "e", "Z", "isAdLoaded", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VungleInterstitial extends BaseInterstitial {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private n interstitialAd;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isAdLoaded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleInterstitial(Context context, Network network) {
        super(context, network);
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(VungleInterstitial vungleInterstitial, boolean z10) {
        if (z10) {
            n nVar = vungleInterstitial.interstitialAd;
            if (nVar != null) {
                a.C0700a.load$default(nVar, null, 1, null);
            }
        } else {
            if (z10) {
                throw new NoWhenBranchMatchedException();
            }
            vungleInterstitial.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
        return Unit.f67061a;
    }

    @Override // com.hisavana.common.base.BaseInterstitial, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        n nVar = this.interstitialAd;
        if (nVar != null) {
            nVar.setAdListener(null);
        }
        this.interstitialAd = null;
        this.isLoaded = false;
        AdLogUtil.Log().d(ExistsCheck.TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void initInterstitial() {
        String placementId = getPlacementId();
        Intrinsics.g(placementId, "getPlacementId(...)");
        if (placementId.length() == 0) {
            return;
        }
        Context contextA = e.a();
        Intrinsics.g(contextA, "getContext(...)");
        String placementId2 = getPlacementId();
        Intrinsics.g(placementId2, "getPlacementId(...)");
        b bVar = new b();
        bVar.setAdOrientation(2);
        Unit unit = Unit.f67061a;
        n nVar = new n(contextA, placementId2, bVar);
        nVar.setAdListener(new o() { // from class: com.hisavana.vungle.excuter.VungleInterstitial$initInterstitial$2$1
            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdClicked(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Interstitial clicked");
                this.f33397a.adClicked(null);
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdEnd(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Interstitial closed");
                this.f33397a.adClosed();
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdFailedToLoad(BaseAd baseAd, VungleError adError) {
                Intrinsics.h(baseAd, "baseAd");
                Intrinsics.h(adError, "adError");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Interstitial load failed : " + adError.getErrorMessage());
                this.f33397a.adFailedToLoad(new TAdErrorCode(adError.getCode(), adError.getMessage()));
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdFailedToPlay(BaseAd baseAd, VungleError adError) {
                Intrinsics.h(baseAd, "baseAd");
                Intrinsics.h(adError, "adError");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Interstitial impression failed : " + adError.getErrorMessage());
                this.f33397a.onAdShowError(new TAdErrorCode(adError.getCode(), adError.getErrorMessage()));
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdImpression(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Interstitial impression");
                this.f33397a.adImpression(null);
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdLeftApplication(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdLoaded(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                this.f33397a.isAdLoaded = true;
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Interstitial loaded");
                this.f33397a.adLoaded();
            }

            @Override // com.vungle.ads.o, com.vungle.ads.l, com.vungle.ads.h
            public void onAdStart(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
            }
        });
        this.interstitialAd = nVar;
    }

    @Override // com.hisavana.common.interfacz.IadInterstitial
    /* JADX INFO: renamed from: isLoaded, reason: from getter */
    public boolean getIsAdLoaded() {
        return this.isAdLoaded;
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void onInterstitialShow(Activity activity) {
        n nVar = this.interstitialAd;
        if (nVar == null || !nVar.canPlayAd().booleanValue()) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            return;
        }
        n nVar2 = this.interstitialAd;
        if (nVar2 != null) {
            k.a.play$default(nVar2, null, 1, null);
        }
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void onInterstitialStartLoad() {
        Network network = this.mNetwork;
        if (network != null) {
            String codeSeatId = network.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            if (codeSeatId.length() != 0) {
                ExistsCheck.Companion companion = ExistsCheck.INSTANCE;
                String applicationId = this.mNetwork.getApplicationId();
                Intrinsics.g(applicationId, "getApplicationId(...)");
                companion.initVungle(applicationId, new Function1() { // from class: ee.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return VungleInterstitial.b(this.f61850a, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
        }
        adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
    }
}
