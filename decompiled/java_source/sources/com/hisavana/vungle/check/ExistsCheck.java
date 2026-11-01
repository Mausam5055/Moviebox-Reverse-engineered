package com.hisavana.vungle.check;

import android.content.Context;
import com.cloud.config.utils.XLogUtil;
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
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.interfacz.a;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.vungle.excuter.VungleInline;
import com.hisavana.vungle.excuter.VungleInterstitial;
import com.hisavana.vungle.excuter.VungleNative;
import com.hisavana.vungle.excuter.VungleRewarded;
import com.hisavana.vungle.holder.NativeAdViewHolder;
import com.vungle.ads.VungleError;
import com.vungle.ads.a0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.m;
import com.vungle.ads.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J,\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0016J\"\u0010\u001a\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016¨\u0006\u001f"}, d2 = {"Lcom/hisavana/vungle/check/ExistsCheck;", "Lcom/hisavana/common/interfacz/IBaseAdSummary;", "<init>", "()V", "init", "", "context", "Landroid/content/Context;", XLogUtil.TAG, "Lcom/hisavana/common/bean/AdSourceConfig;", "getBanner", "Lcom/hisavana/common/base/BaseBanner;", "network", "Lcom/hisavana/common/bean/Network;", "bannerSize", "", "bannerType", "getInterstitial", "Lcom/hisavana/common/base/BaseInterstitial;", "getNative", "Lcom/hisavana/common/base/BaseNative;", "adType", "getNativeViewHolder", "Lcom/hisavana/common/base/BaseNativeViewHolder;", "getVideo", "Lcom/hisavana/common/base/BaseVideo;", "getSplash", "Lcom/hisavana/common/base/BaseSplash;", "getQueryPrice", "Lcom/hisavana/common/base/BaseQueryPrice;", "Companion", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ExistsCheck implements IBaseAdSummary {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "Vungle_Log";

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052#\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/hisavana/vungle/check/ExistsCheck$Companion;", "", "<init>", "()V", "TAG", "", "initVungle", "", "vungleAppID", "initCallback", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "initSuccess", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void initVungle(String vungleAppID, final Function1<? super Boolean, Unit> initCallback) {
            Intrinsics.h(vungleAppID, "vungleAppID");
            z.a aVar = z.Companion;
            if (aVar.isInitialized()) {
                AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle SDK already init");
                if (initCallback != null) {
                    initCallback.invoke(Boolean.TRUE);
                    return;
                }
                return;
            }
            a0.setGDPRStatus(AppStartInfo.userConsent, null);
            a0.setCOPPAStatus(AppStartInfo.ageRestrictedUser);
            Context contextA = e.a();
            Intrinsics.g(contextA, "getContext(...)");
            aVar.init(contextA, vungleAppID, new m() { // from class: com.hisavana.vungle.check.ExistsCheck$Companion$initVungle$1
                @Override // com.vungle.ads.m
                public void onError(VungleError vungleError) {
                    Intrinsics.h(vungleError, "vungleError");
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle SDK init failed: " + vungleError.getLocalizedMessage());
                    Function1 function1 = initCallback;
                    if (function1 != null) {
                        function1.invoke(Boolean.FALSE);
                    }
                }

                @Override // com.vungle.ads.m
                public void onSuccess() {
                    AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle SDK init Success --> GDPR is " + a0.getGDPRStatus() + "--> COPPA is " + a0.getCOPPAStatus());
                    Function1 function1 = initCallback;
                    if (function1 != null) {
                        function1.invoke(Boolean.TRUE);
                    }
                }
            });
        }
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseBanner<?> getBanner(Context context, Network network, int bannerSize, int bannerType) {
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
        return new VungleInline(context, network, bannerSize);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseInterstitial getInterstitial(Context context, Network network) {
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
        return new VungleInterstitial(context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public /* synthetic */ BaseVideo getInterstitialRewarded(Context context, Network network) {
        return a.a(this, context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseNative getNative(Context context, Network network, int adType) {
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
        return new VungleNative(context, network, adType);
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
    public BaseSplash<?> getSplash(Context context, Network network) {
        return null;
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public BaseVideo getVideo(Context context, Network network) {
        Intrinsics.h(context, "context");
        Intrinsics.h(network, "network");
        return new VungleRewarded(context, network);
    }

    @Override // com.hisavana.common.interfacz.IBaseAdSummary
    public void init(Context context, AdSourceConfig config) {
        Intrinsics.h(context, "context");
    }
}
