package com.hisavana.vungle.excuter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.vungle.check.ExistsCheck;
import com.hisavana.vungle.excuter.VungleNative;
import com.hisavana.vungle.util.VungleUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.BaseAd;
import com.vungle.ads.NativeAd;
import com.vungle.ads.VungleError;
import com.vungle.ads.a;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.ui.view.MediaView;
import com.vungle.ads.s;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000e\u0010\fJ3\u0010\u0016\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/hisavana/vungle/excuter/VungleNative;", "Lcom/hisavana/common/base/BaseNative;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", "", "adType", "<init>", "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V", "", "c", "()V", "initNative", "onNativeAdStartLoad", "Landroid/view/ViewGroup;", "viewGroup", "", "Landroid/view/View;", "adContains", "Lcom/hisavana/common/bean/AdNativeInfo;", "nativeInfo", "registerViewForInteraction", "(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V", "unregisterView", "(Lcom/hisavana/common/bean/AdNativeInfo;)V", "destroyAd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "Lcom/vungle/ads/NativeAd;", "e", "Lcom/vungle/ads/NativeAd;", "nativeAd", "f", "Lcom/hisavana/common/bean/AdNativeInfo;", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VungleNative extends BaseNative {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private NativeAd nativeAd;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private AdNativeInfo nativeInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleNative(Context context, Network network, int i11) {
        super(context, network, i11);
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        TAdNativeInfo nativeInfo = VungleUtil.INSTANCE.getNativeInfo(this.nativeAd, this.mAdt, getTtl(), this);
        if (filter(nativeInfo) == 0) {
            this.mNatives.add(nativeInfo);
        } else {
            AdUtil.release(nativeInfo);
        }
        if (this.mNatives.isEmpty()) {
            adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
        } else {
            adLoaded(this.mNatives);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(VungleNative vungleNative, boolean z10) {
        if (z10) {
            NativeAd nativeAd = vungleNative.nativeAd;
            if (nativeAd != null) {
                a.C0700a.load$default(nativeAd, null, 1, null);
            }
        } else {
            if (z10) {
                throw new NoWhenBranchMatchedException();
            }
            vungleNative.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
        return Unit.f67061a;
    }

    @Override // com.hisavana.common.base.BaseNative, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            nativeAd.unregisterView();
        }
        NativeAd nativeAd2 = this.nativeAd;
        if (nativeAd2 != null) {
            nativeAd2.setAdListener(null);
        }
        this.nativeAd = null;
    }

    @Override // com.hisavana.common.base.BaseNative
    protected void initNative() {
        String placementId = getPlacementId();
        Intrinsics.g(placementId, "getPlacementId(...)");
        if (placementId.length() == 0) {
            return;
        }
        Context context = this.context;
        String placementId2 = getPlacementId();
        Intrinsics.g(placementId2, "getPlacementId(...)");
        NativeAd nativeAd = new NativeAd(context, placementId2);
        nativeAd.setAdOptionsPosition(1);
        nativeAd.setAdListener(new s() { // from class: com.hisavana.vungle.excuter.VungleNative$initNative$2$1
            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdClicked(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Native clicked");
                VungleNative vungleNative = this.f33401a;
                vungleNative.adClicked(vungleNative.nativeInfo);
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdEnd(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdFailedToLoad(BaseAd baseAd, VungleError adError) {
                Intrinsics.h(baseAd, "baseAd");
                Intrinsics.h(adError, "adError");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Native load failed : " + adError.getErrorMessage());
                this.f33401a.adFailedToLoad(new TAdErrorCode(adError.getCode(), adError.getMessage()));
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdFailedToPlay(BaseAd baseAd, VungleError adError) {
                Intrinsics.h(baseAd, "baseAd");
                Intrinsics.h(adError, "adError");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Native impression failed : " + adError.getErrorMessage());
                this.f33401a.onAdShowError(new TAdErrorCode(adError.getCode(), adError.getErrorMessage()));
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdImpression(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Native impression");
                VungleNative vungleNative = this.f33401a;
                vungleNative.adImpression(vungleNative.nativeInfo);
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdLeftApplication(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdLoaded(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Native loaded");
                this.f33401a.c();
            }

            @Override // com.vungle.ads.s, com.vungle.ads.h
            public void onAdStart(BaseAd baseAd) {
                Intrinsics.h(baseAd, "baseAd");
            }
        });
        this.nativeAd = nativeAd;
    }

    @Override // com.hisavana.common.base.BaseNative
    protected void onNativeAdStartLoad() {
        Network network = this.mNetwork;
        if (network != null) {
            String codeSeatId = network.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            if (codeSeatId.length() != 0) {
                ExistsCheck.Companion companion = ExistsCheck.INSTANCE;
                String applicationId = this.mNetwork.getApplicationId();
                Intrinsics.g(applicationId, "getApplicationId(...)");
                companion.initVungle(applicationId, new Function1() { // from class: ee.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return VungleNative.d(this.f61851a, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
        }
        adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
    }

    @Override // com.hisavana.common.interfacz.IadNative
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> adContains, AdNativeInfo nativeInfo) {
        Object objM454constructorimpl;
        this.nativeInfo = nativeInfo;
        if (this.nativeAd == null || viewGroup == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            return;
        }
        if (isExpired()) {
            onAdShowError(TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED);
        }
        logTrigerShow(nativeInfo);
        try {
            Result.Companion companion = Result.INSTANCE;
            FrameLayout frameLayout = new FrameLayout(this.context);
            ViewParent parent = viewGroup.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(viewGroup.getLayoutParams().width, viewGroup.getLayoutParams().height);
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewGroup);
            }
            frameLayout.addView(viewGroup, layoutParams);
            if (viewGroup2 != null) {
                viewGroup2.addView(frameLayout, layoutParams);
            }
            MediaView mediaView = (MediaView) viewGroup.findViewWithTag(VungleUtil.TAG_MEDIA_VIEW);
            ImageView imageView = (ImageView) viewGroup.findViewWithTag(VungleUtil.TAG_ICON_VIEW);
            NativeAd nativeAd = this.nativeAd;
            if (nativeAd != null) {
                Intrinsics.e(mediaView);
                nativeAd.registerViewForInteraction(frameLayout, mediaView, imageView, adContains);
            }
            setNativeCloseListener(viewGroup, nativeInfo);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        }
    }

    @Override // com.hisavana.common.interfacz.IadNative
    public void unregisterView(AdNativeInfo nativeInfo) {
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            nativeAd.unregisterView();
        }
    }
}
