package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.APIFailedStatusCodeError;
import com.vungle.ads.AdResponseEmptyError;
import com.vungle.ads.AdRetryActiveError;
import com.vungle.ads.AdRetryError;
import com.vungle.ads.NetworkTimeoutError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.p;
import com.vungle.ads.w;
import com.vungle.ads.y;
import java.net.SocketTimeoutException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class g extends BaseAdLoader {

    public static final class a implements com.vungle.ads.internal.network.b {
        final /* synthetic */ com.vungle.ads.internal.model.g $placement;

        a(com.vungle.ads.internal.model.g gVar) {
            this.$placement = gVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onFailure$lambda-1, reason: not valid java name */
        public static final void m406onFailure$lambda1(g this$0, Throwable th2) {
            Intrinsics.h(this$0, "this$0");
            this$0.onAdLoadFailed(this$0.retrofitToVungleError(th2).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onResponse$lambda-0, reason: not valid java name */
        public static final void m407onResponse$lambda0(g this$0, com.vungle.ads.internal.model.g placement, com.vungle.ads.internal.network.e eVar) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(placement, "$placement");
            if (this$0.getVungleApiClient().getRetryAfterHeaderValue(placement.getReferenceId()) > 0) {
                this$0.onAdLoadFailed(new AdRetryError().setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                return;
            }
            if (eVar != null && !eVar.isSuccessful()) {
                this$0.onAdLoadFailed(new APIFailedStatusCodeError("ads API: " + eVar.code()).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                return;
            }
            AdPayload adPayload = eVar != null ? (AdPayload) eVar.body() : null;
            if ((adPayload != null ? adPayload.adUnit() : null) == null) {
                this$0.onAdLoadFailed(new AdResponseEmptyError("Ad response is empty").setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            } else {
                this$0.handleAdMetaData$vungle_ads_release(adPayload, new w(Sdk$SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_AD_LOAD));
            }
        }

        @Override // com.vungle.ads.internal.network.b
        public void onFailure(com.vungle.ads.internal.network.a aVar, final Throwable th2) {
            VungleThreadPoolExecutor backgroundExecutor = g.this.getSdkExecutors().getBackgroundExecutor();
            final g gVar = g.this;
            backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.a.m406onFailure$lambda1(gVar, th2);
                }
            });
        }

        @Override // com.vungle.ads.internal.network.b
        public void onResponse(com.vungle.ads.internal.network.a aVar, final com.vungle.ads.internal.network.e eVar) {
            VungleThreadPoolExecutor backgroundExecutor = g.this.getSdkExecutors().getBackgroundExecutor();
            final g gVar = g.this;
            final com.vungle.ads.internal.model.g gVar2 = this.$placement;
            backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.a.m407onResponse$lambda0(gVar, gVar2, eVar);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.a sdkExecutors, com.vungle.ads.internal.omsdk.b omInjector, Downloader downloader, p pathProvider, AdRequest adRequest) {
        super(context, vungleApiClient, sdkExecutors, omInjector, downloader, pathProvider, adRequest);
        Intrinsics.h(context, "context");
        Intrinsics.h(vungleApiClient, "vungleApiClient");
        Intrinsics.h(sdkExecutors, "sdkExecutors");
        Intrinsics.h(omInjector, "omInjector");
        Intrinsics.h(downloader, "downloader");
        Intrinsics.h(pathProvider, "pathProvider");
        Intrinsics.h(adRequest, "adRequest");
    }

    private final void fetchAdMetadata(y yVar, com.vungle.ads.internal.model.g gVar) {
        if (getVungleApiClient().checkIsRetryAfterActive(gVar.getReferenceId())) {
            onAdLoadFailed(new AdRetryActiveError().setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            return;
        }
        com.vungle.ads.internal.network.a aVarRequestAd = getVungleApiClient().requestAd(gVar.getReferenceId(), yVar);
        if (aVarRequestAd == null) {
            onAdLoadFailed(new NetworkUnreachable("adsCall is null").setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        } else {
            aVarRequestAd.enqueue(new a(gVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VungleError retrofitToVungleError(Throwable th2) {
        if (th2 instanceof SocketTimeoutException) {
            return new NetworkTimeoutError();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ads request fail: ");
        sb2.append(th2 != null ? th2.getMessage() : null);
        return new NetworkUnreachable(sb2.toString());
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    public void onAdLoadReady() {
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    protected void requestAd() {
        fetchAdMetadata(getAdRequest().getRequestAdSize(), getAdRequest().getPlacement());
    }
}
