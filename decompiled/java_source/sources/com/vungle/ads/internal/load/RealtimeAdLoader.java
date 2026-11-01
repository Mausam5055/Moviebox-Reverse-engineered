package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.AdMarkupInvalidError;
import com.vungle.ads.InvalidBidPayloadError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import com.vungle.ads.w;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class RealtimeAdLoader extends BaseAdLoader {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeAdLoader(Context context, VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.a sdkExecutors, com.vungle.ads.internal.omsdk.b omInjector, Downloader downloader, p pathProvider, AdRequest adRequest) {
        super(context, vungleApiClient, sdkExecutors, omInjector, downloader, pathProvider, adRequest);
        Intrinsics.h(context, "context");
        Intrinsics.h(vungleApiClient, "vungleApiClient");
        Intrinsics.h(sdkExecutors, "sdkExecutors");
        Intrinsics.h(omInjector, "omInjector");
        Intrinsics.h(downloader, "downloader");
        Intrinsics.h(pathProvider, "pathProvider");
        Intrinsics.h(adRequest, "adRequest");
    }

    /* JADX INFO: renamed from: requestAd$lambda-0, reason: not valid java name */
    private static final VungleApiClient m404requestAd$lambda0(Lazy<VungleApiClient> lazy) {
        return (VungleApiClient) lazy.getValue();
    }

    private final void sendWinNotification(List<String> list) {
        if (list == null || !list.isEmpty()) {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = getContext();
            Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.network.h>() { // from class: com.vungle.ads.internal.load.RealtimeAdLoader$sendWinNotification$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.h, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.network.h invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.network.h.class);
                }
            });
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.h.sendTpat$default(m405sendWinNotification$lambda2(lazyA), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.WIN_NOTIFICATION).withLogEntry(getLogEntry$vungle_ads_release()).build(), false, 2, null);
                }
            }
        }
    }

    /* JADX INFO: renamed from: sendWinNotification$lambda-2, reason: not valid java name */
    private static final com.vungle.ads.internal.network.h m405sendWinNotification$lambda2(Lazy<com.vungle.ads.internal.network.h> lazy) {
        return (com.vungle.ads.internal.network.h) lazy.getValue();
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    public void onAdLoadReady() {
        AdPayload advertisement$vungle_ads_release = getAdvertisement$vungle_ads_release();
        sendWinNotification(advertisement$vungle_ads_release != null ? advertisement$vungle_ads_release.getWinNotifications() : null);
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    protected void requestAd() {
        BidPayload adMarkup = getAdRequest().getAdMarkup();
        if (adMarkup == null) {
            onAdLoadFailed(new InvalidBidPayloadError().setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            return;
        }
        if (ConfigManager.INSTANCE.rtaDebuggingEnabled()) {
            try {
                String decodedAdsResponse = adMarkup.getDecodedAdsResponse();
                o.Companion.d("RTA_DEBUGGER", String.valueOf(decodedAdsResponse));
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                final Context context = getContext();
                Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.load.RealtimeAdLoader$requestAd$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final VungleApiClient invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                    }
                });
                if (decodedAdsResponse != null) {
                    new l(m404requestAd$lambda0(lazyA)).reportAdMarkup(decodedAdsResponse);
                }
            } catch (Throwable unused) {
            }
        }
        AdPayload adPayload = adMarkup.getAdPayload();
        Integer version = adMarkup.getVersion();
        if (version == null || version.intValue() != 2 || adPayload == null) {
            onAdLoadFailed(new AdMarkupInvalidError("The ad response did not contain valid ad markup").setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        } else {
            handleAdMetaData$vungle_ads_release(adPayload, new w(Sdk$SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_ADM_LOAD));
        }
    }
}
