package com.vungle.ads.internal;

import android.content.Context;
import android.content.Intent;
import com.vungle.ads.AdExpiredError;
import com.vungle.ads.AdExpiredOnPlayError;
import com.vungle.ads.AdMarkupInvalidError;
import com.vungle.ads.AdMarkupJsonError;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InvalidAdStateError;
import com.vungle.ads.InvalidBannerSizeError;
import com.vungle.ads.InvalidWaterfallPlacementError;
import com.vungle.ads.PlacementAdTypeMismatchError;
import com.vungle.ads.PlacementNotFoundError;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.load.AdRequest;
import com.vungle.ads.internal.load.BaseAdLoader;
import com.vungle.ads.internal.load.RealtimeAdLoader;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.task.CleanupJob;
import com.vungle.ads.internal.ui.AdActivity;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import com.vungle.ads.w;
import com.vungle.ads.x;
import com.vungle.ads.y;
import com.vungle.ads.z;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AdInternal implements com.vungle.ads.internal.load.a {
    private static final String TAG = "AdInternal";
    private static final boolean THROW_ON_ILLEGAL_TRANSITION = false;
    private com.vungle.ads.internal.load.a adLoaderCallback;
    private AdState adState;
    private AdPayload advertisement;
    private BaseAdLoader baseAdLoader;
    private BidPayload bidPayload;
    private final Context context;
    private x loadMetric;
    private n logEntry;
    private com.vungle.ads.internal.model.g placement;
    private WeakReference<Context> playContext;
    private x requestMetric;
    private final x showToValidationMetric;
    private final Lazy signalManager$delegate;
    private final x validationToPresentMetric;
    private final Lazy vungleApiClient$delegate;
    public static final a Companion = new a(null);
    private static final kotlinx.serialization.json.a json = kotlinx.serialization.json.n.b(null, new Function1<kotlinx.serialization.json.d, Unit>() { // from class: com.vungle.ads.internal.AdInternal$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((kotlinx.serialization.json.d) obj);
            return Unit.f67061a;
        }

        public final void invoke(kotlinx.serialization.json.d Json) {
            Intrinsics.h(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }, 1, null);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000H&J\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState;", "", "(Ljava/lang/String;I)V", "canTransitionTo", "", "adState", "isTerminalState", "transitionTo", "NEW", "LOADING", "READY", "PLAYING", "FINISHED", "ERROR", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AdState {
        public static final AdState NEW = new NEW("NEW", 0);
        public static final AdState LOADING = new LOADING("LOADING", 1);
        public static final AdState READY = new READY("READY", 2);
        public static final AdState PLAYING = new PLAYING("PLAYING", 3);
        public static final AdState FINISHED = new FINISHED("FINISHED", 4);
        public static final AdState ERROR = new ERROR("ERROR", 5);
        private static final /* synthetic */ AdState[] $VALUES = $values();

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0016¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState$ERROR;", "Lcom/vungle/ads/internal/AdInternal$AdState;", "canTransitionTo", "", "adState", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        static final class ERROR extends AdState {
            ERROR(String str, int i11) {
                super(str, i11, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(AdState adState) {
                Intrinsics.h(adState, "adState");
                return adState == AdState.FINISHED;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0016¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState$FINISHED;", "Lcom/vungle/ads/internal/AdInternal$AdState;", "canTransitionTo", "", "adState", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        static final class FINISHED extends AdState {
            FINISHED(String str, int i11) {
                super(str, i11, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(AdState adState) {
                Intrinsics.h(adState, "adState");
                return false;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0016¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState$LOADING;", "Lcom/vungle/ads/internal/AdInternal$AdState;", "canTransitionTo", "", "adState", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        static final class LOADING extends AdState {
            LOADING(String str, int i11) {
                super(str, i11, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(AdState adState) {
                Intrinsics.h(adState, "adState");
                return adState == AdState.READY || adState == AdState.ERROR;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0016¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState$NEW;", "Lcom/vungle/ads/internal/AdInternal$AdState;", "canTransitionTo", "", "adState", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        static final class NEW extends AdState {
            NEW(String str, int i11) {
                super(str, i11, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(AdState adState) {
                Intrinsics.h(adState, "adState");
                return adState == AdState.LOADING || adState == AdState.READY || adState == AdState.ERROR;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0016¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState$PLAYING;", "Lcom/vungle/ads/internal/AdInternal$AdState;", "canTransitionTo", "", "adState", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        static final class PLAYING extends AdState {
            PLAYING(String str, int i11) {
                super(str, i11, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(AdState adState) {
                Intrinsics.h(adState, "adState");
                return adState == AdState.FINISHED || adState == AdState.ERROR;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0016¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/AdInternal$AdState$READY;", "Lcom/vungle/ads/internal/AdInternal$AdState;", "canTransitionTo", "", "adState", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        static final class READY extends AdState {
            READY(String str, int i11) {
                super(str, i11, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(AdState adState) {
                Intrinsics.h(adState, "adState");
                return adState == AdState.PLAYING || adState == AdState.FINISHED || adState == AdState.ERROR;
            }
        }

        private static final /* synthetic */ AdState[] $values() {
            return new AdState[]{NEW, LOADING, READY, PLAYING, FINISHED, ERROR};
        }

        private AdState(String str, int i11) {
            super(str, i11);
        }

        public /* synthetic */ AdState(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i11);
        }

        public static AdState valueOf(String str) {
            return (AdState) Enum.valueOf(AdState.class, str);
        }

        public static AdState[] values() {
            return (AdState[]) $VALUES.clone();
        }

        public abstract boolean canTransitionTo(AdState adState);

        public final boolean isTerminalState() {
            return CollectionsKt.o(FINISHED, ERROR).contains(this);
        }

        public final AdState transitionTo(AdState adState) {
            Intrinsics.h(adState, "adState");
            if (this != adState && !canTransitionTo(adState)) {
                String str = "Cannot transition from " + name() + " to " + adState.name();
                if (AdInternal.THROW_ON_ILLEGAL_TRANSITION) {
                    throw new IllegalStateException(str);
                }
                o.Companion.e(AdInternal.TAG, "Illegal state transition", new IllegalStateException(str));
            }
            return adState;
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static /* synthetic */ void getJson$annotations() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdState.values().length];
            iArr[AdState.NEW.ordinal()] = 1;
            iArr[AdState.LOADING.ordinal()] = 2;
            iArr[AdState.READY.ordinal()] = 3;
            iArr[AdState.PLAYING.ordinal()] = 4;
            iArr[AdState.FINISHED.ordinal()] = 5;
            iArr[AdState.ERROR.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class c extends com.vungle.ads.internal.presenter.c {
        final /* synthetic */ AdInternal this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(com.vungle.ads.internal.presenter.b bVar, AdInternal adInternal) {
            super(bVar);
            this.this$0 = adInternal;
        }

        @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
        public void onAdEnd(String str) {
            this.this$0.setAdState(AdState.FINISHED);
            super.onAdEnd(str);
        }

        @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
        public void onAdStart(String str) {
            this.this$0.setAdState(AdState.PLAYING);
            this.this$0.getValidationToPresentMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getValidationToPresentMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            super.onAdStart(str);
        }

        @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
        public void onFailure(VungleError error) {
            Intrinsics.h(error, "error");
            this.this$0.setAdState(AdState.ERROR);
            super.onFailure(error);
        }
    }

    public static final class d extends com.vungle.ads.internal.presenter.a {
        d(com.vungle.ads.internal.presenter.b bVar, com.vungle.ads.internal.model.g gVar) {
            super(bVar, gVar);
        }
    }

    public AdInternal(final Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.adState = AdState.NEW;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.vungleApiClient$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.AdInternal$special$$inlined$inject$1
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
        this.showToValidationMetric = new x(Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS);
        this.validationToPresentMetric = new x(Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS);
        this.signalManager$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.AdInternal$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SignalManager.class);
            }
        });
    }

    /* JADX INFO: renamed from: _set_adState_$lambda-1$lambda-0, reason: not valid java name */
    private static final com.vungle.ads.internal.task.d m354_set_adState_$lambda1$lambda0(Lazy<? extends com.vungle.ads.internal.task.d> lazy) {
        return (com.vungle.ads.internal.task.d) lazy.getValue();
    }

    public static /* synthetic */ VungleError canPlayAd$default(AdInternal adInternal, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: canPlayAd");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        return adInternal.canPlayAd(z10);
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    private final VungleApiClient getVungleApiClient() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    /* JADX INFO: renamed from: loadAd$lambda-2, reason: not valid java name */
    private static final com.vungle.ads.internal.omsdk.b m355loadAd$lambda2(Lazy<com.vungle.ads.internal.omsdk.b> lazy) {
        return (com.vungle.ads.internal.omsdk.b) lazy.getValue();
    }

    /* JADX INFO: renamed from: loadAd$lambda-3, reason: not valid java name */
    private static final com.vungle.ads.internal.executor.d m356loadAd$lambda3(Lazy<com.vungle.ads.internal.executor.d> lazy) {
        return (com.vungle.ads.internal.executor.d) lazy.getValue();
    }

    /* JADX INFO: renamed from: loadAd$lambda-4, reason: not valid java name */
    private static final p m357loadAd$lambda4(Lazy<p> lazy) {
        return (p) lazy.getValue();
    }

    /* JADX INFO: renamed from: loadAd$lambda-5, reason: not valid java name */
    private static final Downloader m358loadAd$lambda5(Lazy<? extends Downloader> lazy) {
        return (Downloader) lazy.getValue();
    }

    /* JADX INFO: renamed from: onSuccess$lambda-10$lambda-8, reason: not valid java name */
    private static final com.vungle.ads.internal.network.h m359onSuccess$lambda10$lambda8(Lazy<com.vungle.ads.internal.network.h> lazy) {
        return (com.vungle.ads.internal.network.h) lazy.getValue();
    }

    public void adLoadedAndUpdateConfigure$vungle_ads_release(AdPayload advertisement) {
        Intrinsics.h(advertisement, "advertisement");
    }

    public final VungleError canPlayAd(boolean z10) {
        VungleError adExpiredOnPlayError;
        AdPayload adPayload = this.advertisement;
        if (adPayload == null) {
            adExpiredOnPlayError = new AdNotLoadedCantPlay("adv is null on onPlay=" + z10);
        } else {
            AdState adState = this.adState;
            if (adState == AdState.PLAYING) {
                adExpiredOnPlayError = new InvalidAdStateError(Sdk$SDKError.Reason.AD_IS_PLAYING, "Current ad is playing");
            } else if (adState != AdState.READY) {
                adExpiredOnPlayError = new InvalidAdStateError(Sdk$SDKError.Reason.AD_NOT_LOADED, this.adState + " is not READY");
            } else {
                if (adPayload == null || !adPayload.hasExpired()) {
                    return null;
                }
                adExpiredOnPlayError = z10 ? new AdExpiredOnPlayError() : new AdExpiredError("adv has expired on canPlayAd()");
            }
        }
        if (z10) {
            adExpiredOnPlayError.setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
        }
        return adExpiredOnPlayError;
    }

    public final void cancelDownload$vungle_ads_release() {
        BaseAdLoader baseAdLoader = this.baseAdLoader;
        if (baseAdLoader != null) {
            baseAdLoader.cancel();
        }
    }

    public abstract y getAdSizeForAdRequest();

    public final AdState getAdState() {
        return this.adState;
    }

    public final AdPayload getAdvertisement() {
        return this.advertisement;
    }

    public final BidPayload getBidPayload() {
        return this.bidPayload;
    }

    public final Context getContext() {
        return this.context;
    }

    public final n getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    public final com.vungle.ads.internal.model.g getPlacement() {
        return this.placement;
    }

    public final x getShowToValidationMetric$vungle_ads_release() {
        return this.showToValidationMetric;
    }

    public final x getValidationToPresentMetric$vungle_ads_release() {
        return this.validationToPresentMetric;
    }

    public final boolean isErrorTerminal$vungle_ads_release(int i11) {
        return this.adState == AdState.READY && i11 == 304;
    }

    public abstract boolean isValidAdSize(y yVar);

    public abstract boolean isValidAdTypeForPlacement(com.vungle.ads.internal.model.g gVar);

    public final void loadAd(String placementId, String str, com.vungle.ads.internal.load.a adLoaderCallback) {
        Sdk$SDKError.Reason reason;
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adLoaderCallback, "adLoaderCallback");
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk$SDKMetric.SDKMetricType.LOAD_AD_API, 0L, this.logEntry, null, 10, null);
        x xVar = new x(Sdk$SDKMetric.SDKMetricType.AD_LOAD_TO_CALLBACK_ADO_DURATION_MS);
        this.loadMetric = xVar;
        xVar.markStart();
        this.adLoaderCallback = adLoaderCallback;
        if (!z.Companion.isInitialized()) {
            adLoaderCallback.onFailure(new SdkNotInitialized("SDK not initialized").setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        ConfigManager configManager = ConfigManager.INSTANCE;
        com.vungle.ads.internal.model.g placement = configManager.getPlacement(placementId);
        if (placement != null) {
            this.placement = placement;
            if (!isValidAdTypeForPlacement(placement)) {
                adLoaderCallback.onFailure(new PlacementAdTypeMismatchError(placement.getReferenceId()).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            }
            if ((placement.getHeaderBidding() && (str == null || str.length() == 0)) || (!placement.getHeaderBidding() && str != null && str.length() != 0)) {
                adLoaderCallback.onFailure(new InvalidWaterfallPlacementError(placementId).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            }
        } else if (configManager.configLastValidatedTimestamp() != -1) {
            adLoaderCallback.onFailure(new PlacementNotFoundError(placementId).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        } else {
            com.vungle.ads.internal.model.g gVar = new com.vungle.ads.internal.model.g(placementId, false, (String) null, 6, (DefaultConstructorMarker) null);
            this.placement = gVar;
            placement = gVar;
        }
        y adSizeForAdRequest = getAdSizeForAdRequest();
        if (!isValidAdSize(adSizeForAdRequest)) {
            adLoaderCallback.onFailure(new InvalidBannerSizeError(adSizeForAdRequest != null ? adSizeForAdRequest.toString() : null).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        AdState adState = this.adState;
        if (adState != AdState.NEW) {
            switch (b.$EnumSwitchMapping$0[adState.ordinal()]) {
                case 1:
                    throw new NotImplementedError(null, 1, null);
                case 2:
                    reason = Sdk$SDKError.Reason.AD_IS_LOADING;
                    break;
                case 3:
                    reason = Sdk$SDKError.Reason.AD_ALREADY_LOADED;
                    break;
                case 4:
                    reason = Sdk$SDKError.Reason.AD_IS_PLAYING;
                    break;
                case 5:
                    reason = Sdk$SDKError.Reason.AD_CONSUMED;
                    break;
                case 6:
                    reason = Sdk$SDKError.Reason.AD_ALREADY_FAILED;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            adLoaderCallback.onFailure(new InvalidAdStateError(reason, this.adState + " state is incorrect for load").setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        x xVar2 = new x(Sdk$SDKMetric.SDKMetricType.AD_REQUEST_TO_CALLBACK_ADO_DURATION_MS);
        this.requestMetric = xVar2;
        xVar2.markStart();
        if (str != null && str.length() != 0) {
            try {
                kotlinx.serialization.json.a aVar = json;
                kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(BidPayload.class));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                this.bidPayload = (BidPayload) aVar.b(bVarB, str);
            } catch (IllegalArgumentException e11) {
                adLoaderCallback.onFailure(new AdMarkupInvalidError("Unable to decode payload into BidPayload object. Error: " + e11.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            } catch (Throwable th2) {
                adLoaderCallback.onFailure(new AdMarkupJsonError(th2.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            }
        }
        setAdState(AdState.LOADING);
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.omsdk.b>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.b, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.omsdk.b invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.omsdk.b.class);
            }
        });
        final Context context2 = this.context;
        Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.d>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.d, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.executor.d invoke() {
                return ServiceLocator.Companion.getInstance(context2).getService(com.vungle.ads.internal.executor.d.class);
            }
        });
        final Context context3 = this.context;
        Lazy lazyA3 = LazyKt.a(lazyThreadSafetyMode, new Function0<p>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.p, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final p invoke() {
                return ServiceLocator.Companion.getInstance(context3).getService(p.class);
            }
        });
        final Context context4 = this.context;
        Lazy lazyA4 = LazyKt.a(lazyThreadSafetyMode, new Function0<Downloader>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.downloader.Downloader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Downloader invoke() {
                return ServiceLocator.Companion.getInstance(context4).getService(Downloader.class);
            }
        });
        if (str == null || str.length() == 0) {
            this.baseAdLoader = new com.vungle.ads.internal.load.g(this.context, getVungleApiClient(), m356loadAd$lambda3(lazyA2), m355loadAd$lambda2(lazyA), m358loadAd$lambda5(lazyA4), m357loadAd$lambda4(lazyA3), new AdRequest(placement, null, adSizeForAdRequest));
        } else {
            this.baseAdLoader = new RealtimeAdLoader(this.context, getVungleApiClient(), m356loadAd$lambda3(lazyA2), m355loadAd$lambda2(lazyA), m358loadAd$lambda5(lazyA4), m357loadAd$lambda4(lazyA3), new AdRequest(placement, this.bidPayload, adSizeForAdRequest));
        }
        BaseAdLoader baseAdLoader = this.baseAdLoader;
        if (baseAdLoader != null) {
            baseAdLoader.setLogEntry$vungle_ads_release(this.logEntry);
        }
        BaseAdLoader baseAdLoader2 = this.baseAdLoader;
        if (baseAdLoader2 != null) {
            baseAdLoader2.loadAd(this);
        }
    }

    @Override // com.vungle.ads.internal.load.a
    public void onFailure(VungleError error) {
        Intrinsics.h(error, "error");
        setAdState(AdState.ERROR);
        x xVar = this.loadMetric;
        if (xVar != null) {
            xVar.setMetricType(Sdk$SDKMetric.SDKMetricType.AD_LOAD_TO_FAIL_CALLBACK_DURATION_MS);
            xVar.markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(xVar, this.logEntry, String.valueOf(error.getCode()));
        }
        com.vungle.ads.internal.load.a aVar = this.adLoaderCallback;
        if (aVar != null) {
            aVar.onFailure(error);
        }
    }

    @Override // com.vungle.ads.internal.load.a
    public void onSuccess(AdPayload advertisement) {
        Intrinsics.h(advertisement, "advertisement");
        this.advertisement = advertisement;
        setAdState(AdState.READY);
        adLoadedAndUpdateConfigure$vungle_ads_release(advertisement);
        com.vungle.ads.internal.load.a aVar = this.adLoaderCallback;
        if (aVar != null) {
            aVar.onSuccess(advertisement);
        }
        x xVar = this.loadMetric;
        if (xVar != null) {
            if (!advertisement.adLoadOptimizationEnabled()) {
                xVar.setMetricType(Sdk$SDKMetric.SDKMetricType.AD_LOAD_TO_CALLBACK_DURATION_MS);
            }
            xVar.markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, xVar, this.logEntry, (String) null, 4, (Object) null);
        }
        x xVar2 = this.requestMetric;
        if (xVar2 != null) {
            if (!advertisement.adLoadOptimizationEnabled()) {
                xVar2.setMetricType(Sdk$SDKMetric.SDKMetricType.AD_REQUEST_TO_CALLBACK_DURATION_MS);
            }
            xVar2.markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, xVar2, this.logEntry, (String) null, 4, (Object) null);
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.network.h>() { // from class: com.vungle.ads.internal.AdInternal$onSuccess$lambda-10$$inlined$inject$1
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
            List tpatUrls$default = AdPayload.getTpatUrls$default(advertisement, com.vungle.ads.internal.b.AD_LOAD_DURATION, String.valueOf(xVar2.getValue()), null, 4, null);
            if (tpatUrls$default != null) {
                Iterator it = tpatUrls$default.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.h.sendTpat$default(m359onSuccess$lambda10$lambda8(lazyA), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.AD_LOAD_DURATION).withLogEntry(this.logEntry).build(), false, 2, null);
                }
            }
        }
    }

    public final void play(Context context, com.vungle.ads.internal.presenter.b adPlayCallback) {
        Intrinsics.h(adPlayCallback, "adPlayCallback");
        this.showToValidationMetric.markStart();
        this.playContext = context != null ? new WeakReference<>(context) : null;
        VungleError vungleErrorCanPlayAd = canPlayAd(true);
        if (vungleErrorCanPlayAd != null) {
            adPlayCallback.onFailure(vungleErrorCanPlayAd);
            if (isErrorTerminal$vungle_ads_release(vungleErrorCanPlayAd.getCode())) {
                setAdState(AdState.ERROR);
                return;
            }
            return;
        }
        AdPayload adPayload = this.advertisement;
        if (adPayload == null) {
            return;
        }
        c cVar = new c(adPlayCallback, this);
        cancelDownload$vungle_ads_release();
        renderAd$vungle_ads_release(cVar, adPayload);
    }

    public void renderAd$vungle_ads_release(com.vungle.ads.internal.presenter.b bVar, AdPayload advertisement) {
        Context context;
        Intrinsics.h(advertisement, "advertisement");
        AdActivity.Companion aVar = AdActivity.INSTANCE;
        aVar.setEventListener$vungle_ads_release(new d(bVar, this.placement));
        aVar.setAdvertisement$vungle_ads_release(advertisement);
        aVar.setBidPayload$vungle_ads_release(this.bidPayload);
        WeakReference<Context> weakReference = this.playContext;
        if (weakReference == null || (context = weakReference.get()) == null) {
            context = this.context;
        }
        Intrinsics.g(context, "playContext?.get() ?: context");
        com.vungle.ads.internal.model.g gVar = this.placement;
        if (gVar == null) {
            return;
        }
        Intent intentCreateIntent = aVar.createIntent(context, gVar.getReferenceId(), advertisement.eventId());
        com.vungle.ads.internal.util.a.C0719a c0719a = com.vungle.ads.internal.util.a.Companion;
        if (!c0719a.isForeground()) {
            o.Companion.d(TAG, "The ad activity is in background on play.");
            intentCreateIntent.putExtra(AdActivity.AD_INVISIBLE_LOGGED_KEY, true);
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), this.logEntry, "1");
        }
        this.showToValidationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.showToValidationMetric, this.logEntry, (String) null, 4, (Object) null);
        this.validationToPresentMetric.markStart();
        c0719a.startWhenForeground(context, null, intentCreateIntent, null);
    }

    public final void setAdState(AdState value) {
        AdPayload adPayload;
        String strEventId;
        Intrinsics.h(value, "value");
        if (value.isTerminalState() && (adPayload = this.advertisement) != null && (strEventId = adPayload.eventId()) != null) {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            m354_set_adState_$lambda1$lambda0(LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.task.d>() { // from class: com.vungle.ads.internal.AdInternal$_set_adState_$lambda-1$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.task.d, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.task.d invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.task.d.class);
                }
            })).execute(CleanupJob.Companion.makeJobInfo(strEventId));
        }
        this.adState = this.adState.transitionTo(value);
    }

    public final void setAdvertisement(AdPayload adPayload) {
        this.advertisement = adPayload;
    }

    public final void setBidPayload(BidPayload bidPayload) {
        this.bidPayload = bidPayload;
    }

    public final void setLogEntry$vungle_ads_release(n nVar) {
        this.logEntry = nVar;
    }

    public final void setPlacement(com.vungle.ads.internal.model.g gVar) {
        this.placement = gVar;
    }
}
