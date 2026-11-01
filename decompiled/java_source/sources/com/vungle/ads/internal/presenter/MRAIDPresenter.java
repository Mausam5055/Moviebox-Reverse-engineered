package com.vungle.ads.internal.presenter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.HeartbeatMissingError;
import com.vungle.ads.IndexHtmlError;
import com.vungle.ads.LinkError;
import com.vungle.ads.MraidJsError;
import com.vungle.ads.MraidTemplateError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.PrivacyUrlError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TpatError;
import com.vungle.ads.VungleError;
import com.vungle.ads.WebViewError;
import com.vungle.ads.WebViewRenderProcessUnresponsive;
import com.vungle.ads.WebViewRenderingProcessGone;
import com.vungle.ads.internal.ClickCoordinateTracker;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.SuspendableTimer;
import com.vungle.ads.internal.util.m;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.w;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
public final class MRAIDPresenter implements com.vungle.ads.internal.ui.view.b.a, com.vungle.ads.internal.ui.view.b.InterfaceC0718b {
    private static final String ACTION = "action";
    public static final String ACTION_WITH_VALUE = "actionWithValue";
    public static final String CLOSE = "close";
    public static final String CONSENT_ACTION = "consentAction";
    public static final String CREATIVE_HEARTBEAT = "creativeHeartbeat";
    public static final String ERROR = "error";
    public static final String GET_AVAILABLE_DISK_SPACE = "getAvailableDiskSpace";
    private static final double HEARTBEAT_INTERVAL = 6.0d;
    public static final String OPEN = "open";
    private static final String OPEN_NON_MRAID = "openNonMraid";
    public static final String OPEN_PRIVACY = "openPrivacy";
    public static final String PING_URL = "pingUrl";
    public static final String SET_ORIENTATION_PROPERTIES = "setOrientationProperties";
    public static final String SUCCESSFUL_VIEW = "successfulView";
    private static final String TAG = "MRAIDPresenter";
    public static final String TPAT = "tpat";
    public static final String UPDATE_SIGNALS = "updateSignals";
    private static final String USE_CUSTOM_CLOSE = "useCustomClose";
    private static final String USE_CUSTOM_PRIVACY = "useCustomPrivacy";
    public static final String VIDEO_LENGTH = "videoLength";
    public static final String VIDEO_VIEWED = "videoViewed";
    private Long adStartTime;
    private boolean adViewed;
    private final MRAIDAdWidget adWidget;
    private final AdPayload advertisement;
    private boolean backEnabled;
    private final BidPayload bidPayload;
    private com.vungle.ads.internal.presenter.a bus;
    private final Lazy clickCoordinateTracker$delegate;
    private boolean cp0Fired;
    private Executor executor;
    private boolean heartbeatEnabled;
    private final AtomicBoolean isDestroying;
    private long lastUserInteractionTimestamp;
    private final Lazy logEntry$delegate;
    private final com.vungle.ads.internal.omsdk.c omTracker;
    private final Lazy pathProvider$delegate;
    private final com.vungle.ads.internal.model.g placement;
    private final com.vungle.ads.internal.platform.d platform;
    private l presenterDelegate;
    private final Lazy scheduler$delegate;
    private final AtomicBoolean sendReportIncentivized;
    private final Lazy signalManager$delegate;
    private final Lazy suspendableTimer$delegate;
    private final Lazy tpatSender$delegate;
    private String userId;
    private long videoLength;
    private final Lazy vungleApiClient$delegate;
    private final com.vungle.ads.internal.ui.i vungleWebClient;
    public static final a Companion = new a(null);
    private static final Map<String, Sdk$SDKMetric.SDKMetricType> eventMap = MapsKt.l(TuplesKt.a(com.vungle.ads.internal.b.CHECKPOINT_0, Sdk$SDKMetric.SDKMetricType.AD_START_EVENT), TuplesKt.a(com.vungle.ads.internal.b.CLICK_URL, Sdk$SDKMetric.SDKMetricType.AD_CLICK_EVENT));

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getACTION_WITH_VALUE$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getCLOSE$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getCONSENT_ACTION$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getCREATIVE_HEARTBEAT$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getERROR$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getEventMap$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getGET_AVAILABLE_DISK_SPACE$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getOPEN$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getOPEN_PRIVACY$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getPING_URL$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getSUCCESSFUL_VIEW$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getTPAT$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getUPDATE_SIGNALS$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getVIDEO_LENGTH$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getVIDEO_VIEWED$vungle_ads_release$annotations() {
        }

        public final Map<String, Sdk$SDKMetric.SDKMetricType> getEventMap$vungle_ads_release() {
            return MRAIDPresenter.eventMap;
        }
    }

    public static final class b implements com.vungle.ads.internal.network.b {
        b() {
        }

        @Override // com.vungle.ads.internal.network.b
        public void onFailure(com.vungle.ads.internal.network.a aVar, Throwable th2) {
            o.Companion.d(MRAIDPresenter.TAG, "send RI Failure");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error RI API calls: ");
            sb2.append(th2 != null ? th2.getLocalizedMessage() : null);
            new NetworkUnreachable(sb2.toString()).setLogEntry$vungle_ads_release(MRAIDPresenter.this.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        }

        @Override // com.vungle.ads.internal.network.b
        public void onResponse(com.vungle.ads.internal.network.a aVar, com.vungle.ads.internal.network.e eVar) {
            o.Companion.d(MRAIDPresenter.TAG, "send RI success");
        }
    }

    public static final class c implements com.vungle.ads.internal.ui.b {
        final /* synthetic */ String $deeplinkUrl;
        final /* synthetic */ MRAIDPresenter this$0;

        c(String str, MRAIDPresenter mRAIDPresenter) {
            this.$deeplinkUrl = str;
            this.this$0 = mRAIDPresenter;
        }

        @Override // com.vungle.ads.internal.ui.b
        public void onDeeplinkClick(boolean z10) {
            if (!z10) {
                new LinkError(Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED, "Fail to open " + this.$deeplinkUrl).setLogEntry$vungle_ads_release(this.this$0.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            }
            List tpatUrls$default = AdPayload.getTpatUrls$default(this.this$0.advertisement, com.vungle.ads.internal.b.DEEPLINK_CLICK, String.valueOf(z10), null, 4, null);
            if (tpatUrls$default != null) {
                MRAIDPresenter mRAIDPresenter = this.this$0;
                Iterator it = tpatUrls$default.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.h.sendTpat$default(mRAIDPresenter.getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.DEEPLINK_CLICK).withLogEntry(mRAIDPresenter.getLogEntry()).build(), false, 2, null);
                }
            }
        }
    }

    public MRAIDPresenter(MRAIDAdWidget adWidget, AdPayload advertisement, com.vungle.ads.internal.model.g placement, com.vungle.ads.internal.ui.i vungleWebClient, Executor executor, com.vungle.ads.internal.omsdk.c omTracker, BidPayload bidPayload, com.vungle.ads.internal.platform.d platform) {
        Intrinsics.h(adWidget, "adWidget");
        Intrinsics.h(advertisement, "advertisement");
        Intrinsics.h(placement, "placement");
        Intrinsics.h(vungleWebClient, "vungleWebClient");
        Intrinsics.h(executor, "executor");
        Intrinsics.h(omTracker, "omTracker");
        Intrinsics.h(platform, "platform");
        this.adWidget = adWidget;
        this.advertisement = advertisement;
        this.placement = placement;
        this.vungleWebClient = vungleWebClient;
        this.executor = executor;
        this.omTracker = omTracker;
        this.bidPayload = bidPayload;
        this.platform = platform;
        this.isDestroying = new AtomicBoolean(false);
        this.sendReportIncentivized = new AtomicBoolean(false);
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = adWidget.getContext();
        Intrinsics.g(context, "adWidget.context");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.vungleApiClient$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$1
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
        final Context context2 = adWidget.getContext();
        Intrinsics.g(context2, "adWidget.context");
        this.pathProvider$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<p>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.p, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final p invoke() {
                return ServiceLocator.Companion.getInstance(context2).getService(p.class);
            }
        });
        final Context context3 = adWidget.getContext();
        Intrinsics.g(context3, "adWidget.context");
        this.signalManager$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context3).getService(SignalManager.class);
            }
        });
        final Context context4 = adWidget.getContext();
        Intrinsics.g(context4, "adWidget.context");
        this.tpatSender$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.network.h>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.h, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.network.h invoke() {
                return ServiceLocator.Companion.getInstance(context4).getService(com.vungle.ads.internal.network.h.class);
            }
        });
        this.scheduler$delegate = LazyKt.b(new Function0<com.vungle.ads.internal.util.h>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$scheduler$2
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.util.h invoke() {
                return new com.vungle.ads.internal.util.h();
            }
        });
        this.logEntry$delegate = LazyKt.b(new Function0<n>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$logEntry$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final n invoke() {
                return this.this$0.advertisement.getLogEntry$vungle_ads_release();
            }
        });
        this.suspendableTimer$delegate = LazyKt.b(new Function0<SuspendableTimer>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$suspendableTimer$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SuspendableTimer invoke() {
                final MRAIDPresenter mRAIDPresenter = this.this$0;
                return new SuspendableTimer(6.0d, true, null, new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$suspendableTimer$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m424invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m424invoke() {
                        mRAIDPresenter.reportErrorAndCloseAd(new HeartbeatMissingError());
                    }
                }, 4, null);
            }
        });
        this.clickCoordinateTracker$delegate = LazyKt.b(new Function0<ClickCoordinateTracker>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$clickCoordinateTracker$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ClickCoordinateTracker invoke() {
                Context context5 = this.this$0.adWidget.getContext();
                Intrinsics.g(context5, "adWidget.context");
                return new ClickCoordinateTracker(context5, this.this$0.advertisement);
            }
        });
    }

    private final void closeView() {
        Long l11 = this.adStartTime;
        if (l11 != null) {
            List<String> tpatUrls = this.advertisement.getTpatUrls(com.vungle.ads.internal.b.AD_CLOSE, String.valueOf(System.currentTimeMillis() - l11.longValue()), String.valueOf(this.platform.getVolumeLevel()));
            if (tpatUrls != null) {
                Iterator<T> it = tpatUrls.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.AD_CLOSE).withLogEntry(getLogEntry()).build(), false, 2, null);
                }
            }
        }
        u.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter.closeView.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m422invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m422invoke() {
                MRAIDPresenter.this.adWidget.close();
            }
        });
    }

    public static /* synthetic */ void getAdStartTime$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getBackEnabled$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getBus$annotations() {
    }

    public static /* synthetic */ void getClickCoordinateTracker$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getHeartbeatEnabled$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getLastUserInteractionTimestamp$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n getLogEntry() {
        return (n) this.logEntry$delegate.getValue();
    }

    private final p getPathProvider() {
        return (p) this.pathProvider$delegate.getValue();
    }

    private final com.vungle.ads.internal.util.h getScheduler() {
        return (com.vungle.ads.internal.util.h) this.scheduler$delegate.getValue();
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    public static /* synthetic */ void getSuspendableTimer$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.vungle.ads.internal.network.h getTpatSender() {
        return (com.vungle.ads.internal.network.h) this.tpatSender$delegate.getValue();
    }

    public static /* synthetic */ void getUserId$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getVideoLength$vungle_ads_release$annotations() {
    }

    private final VungleApiClient getVungleApiClient() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleWebViewException(VungleError vungleError, boolean z10, String str) {
        o.Companion.e(TAG, "handleWebViewException: " + vungleError.getLocalizedMessage() + ", fatal: " + z10 + ", errorMsg: " + str);
        vungleError.setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        if (z10) {
            makeBusError(vungleError);
            closeView();
        }
    }

    static /* synthetic */ void handleWebViewException$default(MRAIDPresenter mRAIDPresenter, VungleError vungleError, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str = null;
        }
        mRAIDPresenter.handleWebViewException(vungleError, z10, str);
    }

    public static /* synthetic */ void isDestroying$vungle_ads_release$annotations() {
    }

    private final VungleError loadMraidAd(File file) {
        File file2 = new File(file.getPath(), com.vungle.ads.internal.b.AD_INDEX_FILE_NAME);
        if (!file2.exists()) {
            return new IndexHtmlError(Sdk$SDKError.Reason.AD_HTML_FAILED_TO_LOAD, "Fail to load html " + file2.getPath());
        }
        this.adWidget.showWebsite(AdPayload.FILE_SCHEME + file2.getPath());
        return null;
    }

    private final void makeBusError(VungleError vungleError) {
        com.vungle.ads.internal.presenter.a aVar = this.bus;
        if (aVar != null) {
            aVar.onError(vungleError, this.placement.getReferenceId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: prepare$lambda-14, reason: not valid java name */
    public static final void m417prepare$lambda14(MRAIDPresenter this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.backEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-10, reason: not valid java name */
    public static final void m418processCommand$lambda10(MRAIDPresenter this$0) {
        Intrinsics.h(this$0, "this$0");
        List list = null;
        com.vungle.ads.internal.model.c.b bVar = null;
        com.vungle.ads.internal.network.a aVarRi = this$0.getVungleApiClient().ri(new com.vungle.ads.internal.model.c.i(list, bVar, this$0.adStartTime, this$0.advertisement.advAppId(), this$0.placement.getReferenceId(), this$0.userId, 3, (DefaultConstructorMarker) null));
        if (aVarRi != null) {
            aVarRi.enqueue(this$0.new b());
            return;
        }
        o.Companion.e(TAG, "Invalid ri call.");
        new NetworkUnreachable("Error RI API for placement: " + this$0.placement.getReferenceId()).setLogEntry$vungle_ads_release(this$0.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-11, reason: not valid java name */
    public static final void m419processCommand$lambda11(MRAIDPresenter this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.getSuspendableTimer$vungle_ads_release().reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-12, reason: not valid java name */
    public static final void m420processCommand$lambda12(MRAIDPresenter this$0, long j11) {
        Intrinsics.h(this$0, "this$0");
        this$0.vungleWebClient.notifyDiskAvailableSize(j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-5, reason: not valid java name */
    public static final void m421processCommand$lambda5(MRAIDPresenter this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.adWidget.setVisibility(0);
    }

    private final void recordPlayAssetMetric() {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new w(this.advertisement.getAssetsFullyDownloaded() ? Sdk$SDKMetric.SDKMetricType.LOCAL_ASSETS_USED : Sdk$SDKMetric.SDKMetricType.REMOTE_ASSETS_USED), getLogEntry(), (String) null, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reportErrorAndCloseAd(VungleError vungleError) {
        vungleError.setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        makeBusError(vungleError);
        closeView();
    }

    private final void triggerEventMetricForTpat(String str) {
        Sdk$SDKMetric.SDKMetricType sDKMetricType = eventMap.get(str);
        if (sDKMetricType != null) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new w(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
        }
    }

    public final void detach(int i11) {
        com.vungle.ads.internal.presenter.a aVar;
        o.Companion.d(TAG, "detach()");
        boolean z10 = (i11 & 1) != 0;
        boolean z11 = (i11 & 2) != 0;
        this.vungleWebClient.setWebViewObserver(null);
        this.vungleWebClient.setMraidDelegate(null);
        if (!z10 && z11 && !this.isDestroying.getAndSet(true) && (aVar = this.bus) != null) {
            aVar.onNext(TtmlNode.END, null, this.placement.getReferenceId());
        }
        this.adWidget.destroyWebView(this.omTracker.stop());
        if (this.heartbeatEnabled) {
            getSuspendableTimer$vungle_ads_release().cancel();
        }
    }

    public final Long getAdStartTime$vungle_ads_release() {
        return this.adStartTime;
    }

    public final boolean getBackEnabled$vungle_ads_release() {
        return this.backEnabled;
    }

    public final com.vungle.ads.internal.presenter.a getBus() {
        return this.bus;
    }

    public final ClickCoordinateTracker getClickCoordinateTracker$vungle_ads_release() {
        return (ClickCoordinateTracker) this.clickCoordinateTracker$delegate.getValue();
    }

    public final boolean getHeartbeatEnabled$vungle_ads_release() {
        return this.heartbeatEnabled;
    }

    public final long getLastUserInteractionTimestamp$vungle_ads_release() {
        return this.lastUserInteractionTimestamp;
    }

    public final SuspendableTimer getSuspendableTimer$vungle_ads_release() {
        return (SuspendableTimer) this.suspendableTimer$delegate.getValue();
    }

    public final String getUserId$vungle_ads_release() {
        return this.userId;
    }

    public final long getVideoLength$vungle_ads_release() {
        return this.videoLength;
    }

    public final Long getViewStatus() {
        boolean z10 = this.adViewed;
        if (!z10 && !this.cp0Fired) {
            return 3L;
        }
        if (this.cp0Fired) {
            return !z10 ? 2L : null;
        }
        return 1L;
    }

    public final void handleExit() {
        if (this.backEnabled) {
            this.adWidget.showWebsite("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        }
    }

    public final AtomicBoolean isDestroying$vungle_ads_release() {
        return this.isDestroying;
    }

    @Override // com.vungle.ads.internal.ui.view.b.InterfaceC0718b
    public void onReceivedError(String errorDesc, boolean z10) {
        Intrinsics.h(errorDesc, "errorDesc");
        if (z10) {
            reportErrorAndCloseAd(new WebViewError(errorDesc));
        }
    }

    @Override // com.vungle.ads.internal.ui.view.b.InterfaceC0718b
    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        handleWebViewException$default(this, new WebViewRenderProcessUnresponsive("fatal=true"), true, null, 4, null);
    }

    public final void onViewConfigurationChanged() {
        this.vungleWebClient.notifyPropertiesChange(true);
    }

    public final void onViewTouched(MotionEvent motionEvent) {
        if (motionEvent != null) {
            o.Companion.d(TAG, "user interaction");
            this.lastUserInteractionTimestamp = System.currentTimeMillis();
            getClickCoordinateTracker$vungle_ads_release().trackCoordinate(motionEvent);
        }
    }

    @Override // com.vungle.ads.internal.ui.view.b.InterfaceC0718b
    public boolean onWebRenderingProcessGone(WebView webView, Boolean bool) {
        boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
        handleWebViewException$default(this, new WebViewRenderingProcessGone("didCrash=" + zBooleanValue), zBooleanValue, null, 4, null);
        return true;
    }

    public final void prepare() {
        int i11;
        String alertTitleText;
        String alertBodyText;
        String alertContinueButtonText;
        String alertCloseButtonText;
        int settings;
        boolean z10 = false;
        this.isDestroying.set(false);
        this.adWidget.linkWebView(this.vungleWebClient, this.advertisement.getWebViewSettings());
        com.vungle.ads.b adConfig = this.advertisement.getAdConfig();
        if (adConfig != null && (settings = adConfig.getSettings()) > 0) {
            this.backEnabled = (settings & 2) == 2;
        }
        this.heartbeatEnabled = this.advertisement.heartbeatEnabled();
        com.vungle.ads.b adConfig2 = this.advertisement.getAdConfig();
        Integer numValueOf = adConfig2 != null ? Integer.valueOf(adConfig2.getAdOrientation()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            i11 = 7;
        } else {
            i11 = (numValueOf != null && numValueOf.intValue() == 1) ? 6 : 4;
        }
        this.adWidget.setOrientation(i11);
        this.omTracker.start();
        this.vungleWebClient.setMraidDelegate(this);
        this.vungleWebClient.setErrorHandler(this);
        File assetDirectory = this.advertisement.getAssetDirectory();
        if (assetDirectory == null || !assetDirectory.exists()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("adv dir not exists: ");
            sb2.append(assetDirectory != null ? assetDirectory.getPath() : null);
            reportErrorAndCloseAd(new AdNotLoadedCantPlay(sb2.toString()));
            return;
        }
        VungleError vungleErrorLoadMraidAd = loadMraidAd(assetDirectory);
        if (vungleErrorLoadMraidAd != null) {
            reportErrorAndCloseAd(vungleErrorLoadMraidAd);
            return;
        }
        this.adStartTime = Long.valueOf(System.currentTimeMillis());
        l lVar = this.presenterDelegate;
        this.userId = lVar != null ? lVar.getUserId() : null;
        l lVar2 = this.presenterDelegate;
        if (lVar2 == null || (alertTitleText = lVar2.getAlertTitleText()) == null) {
            alertTitleText = "";
        }
        l lVar3 = this.presenterDelegate;
        if (lVar3 == null || (alertBodyText = lVar3.getAlertBodyText()) == null) {
            alertBodyText = "";
        }
        l lVar4 = this.presenterDelegate;
        if (lVar4 == null || (alertContinueButtonText = lVar4.getAlertContinueButtonText()) == null) {
            alertContinueButtonText = "";
        }
        l lVar5 = this.presenterDelegate;
        if (lVar5 == null || (alertCloseButtonText = lVar5.getAlertCloseButtonText()) == null) {
            alertCloseButtonText = "";
        }
        this.advertisement.setIncentivizedText(alertTitleText, alertBodyText, alertContinueButtonText, alertCloseButtonText);
        ConfigManager configManager = ConfigManager.INSTANCE;
        if (configManager.getGDPRIsCountryDataProtected() && Intrinsics.c(TmcConstants.ROUTE_UNKNOWN, PrivacyManager.INSTANCE.getConsentStatus())) {
            z10 = true;
        }
        this.vungleWebClient.setConsentStatus(z10, configManager.getGDPRConsentTitle(), configManager.getGDPRConsentMessage(), configManager.getGDPRButtonAccept(), configManager.getGDPRButtonDeny());
        if (z10) {
            PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", "");
        }
        int showCloseDelay = this.advertisement.getShowCloseDelay(Boolean.valueOf(this.placement.isRewardedVideo()));
        if (showCloseDelay > 0) {
            getScheduler().schedule(new Runnable() { // from class: com.vungle.ads.internal.presenter.h
                @Override // java.lang.Runnable
                public final void run() {
                    MRAIDPresenter.m417prepare$lambda14(this.f60656a);
                }
            }, showCloseDelay);
        } else {
            this.backEnabled = true;
        }
        com.vungle.ads.internal.presenter.a aVar = this.bus;
        if (aVar != null) {
            aVar.onNext("start", null, this.placement.getReferenceId());
        }
        if (this.heartbeatEnabled) {
            getSuspendableTimer$vungle_ads_release().start();
        }
        if (this.advertisement.adLoadOptimizationEnabled()) {
            recordPlayAssetMetric();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0227, code lost:
    
        if (r0 == null) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0229, code lost:
    
        r8 = r0.getDeeplinkUrl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x022d, code lost:
    
        r0 = com.vungle.ads.internal.util.m.INSTANCE.getContentStringValue(r25, "url");
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0239, code lost:
    
        if (com.vungle.ads.internal.util.g.INSTANCE.isValidUrl(r0) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x023b, code lost:
    
        new com.vungle.ads.InvalidCTAUrl("Unable to open CTA Url (" + r0 + ')').setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0265, code lost:
    
        if (shouldBlockAutoRedirect$vungle_ads_release() == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0267, code lost:
    
        r23.lastUserInteractionTimestamp = 0;
        com.vungle.ads.AnalyticsClient.logMetric$vungle_ads_release$default(com.vungle.ads.AnalyticsClient.INSTANCE, new com.vungle.ads.w(com.vungle.ads.internal.protos.Sdk$SDKMetric.SDKMetricType.BANNER_AUTO_REDIRECT), getLogEntry(), (java.lang.String) null, 4, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0284, code lost:
    
        r23.lastUserInteractionTimestamp = 0;
        r2 = r23.adWidget.getContext();
        kotlin.jvm.internal.Intrinsics.g(r2, "adWidget.context");
        r0 = com.vungle.ads.internal.util.d.launch(r8, r0, r2, getLogEntry(), new com.vungle.ads.internal.presenter.MRAIDPresenter.c(r8, r23));
        r2 = r23.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02a0, code lost:
    
        if (r2 == null) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02a2, code lost:
    
        r2.onNext(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN, "adClick", r23.placement.getReferenceId());
        r2 = kotlin.Unit.f67061a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02af, code lost:
    
        if (r0 == false) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02b1, code lost:
    
        r0 = r23.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02b3, code lost:
    
        if (r0 == null) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02b5, code lost:
    
        r0.onNext(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN, "adLeftApplication", r23.placement.getReferenceId());
        r0 = kotlin.Unit.f67061a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0208, code lost:
    
        if (r24.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN) == false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x021d, code lost:
    
        if (r24.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN_NON_MRAID) == false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0221, code lost:
    
        r0 = r23.advertisement.adUnit();
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.vungle.ads.internal.ui.view.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean processCommand(String command, JsonObject arguments) {
        Object objM454constructorimpl;
        float f11;
        List<String> impression;
        String upperCase;
        Map<String, String> map;
        Intrinsics.h(command, "command");
        Intrinsics.h(arguments, "arguments");
        Handler handler = new Handler(Looper.getMainLooper());
        String deeplinkUrl = null;
        switch (command.hashCode()) {
            case -1912374177:
                if (command.equals(SUCCESSFUL_VIEW)) {
                    com.vungle.ads.internal.presenter.a aVar = this.bus;
                    if (aVar != null) {
                        aVar.onNext(SUCCESSFUL_VIEW, null, this.placement.getReferenceId());
                        Unit unit = Unit.f67061a;
                    }
                    if (this.placement.isRewardedVideo() && ConfigManager.INSTANCE.isReportIncentivizedEnabled() && !this.sendReportIncentivized.getAndSet(true)) {
                        this.executor.execute(new Runnable() { // from class: com.vungle.ads.internal.presenter.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                MRAIDPresenter.m418processCommand$lambda10(this.f60652a);
                            }
                        });
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case -1422950858:
                if (command.equals("action")) {
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case -735200587:
                if (command.equals(ACTION_WITH_VALUE)) {
                    m mVar = m.INSTANCE;
                    String contentStringValue = mVar.getContentStringValue(arguments, NotificationCompat.CATEGORY_EVENT);
                    String contentStringValue2 = mVar.getContentStringValue(arguments, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    if (StringsKt.H(VIDEO_LENGTH, contentStringValue, true)) {
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            objM454constructorimpl = Result.m454constructorimpl(contentStringValue2 != null ? Long.valueOf(Long.parseLong(contentStringValue2)) : null);
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                        }
                        if (Result.m460isFailureimpl(objM454constructorimpl)) {
                            objM454constructorimpl = null;
                        }
                        Long l11 = (Long) objM454constructorimpl;
                        this.videoLength = l11 != null ? l11.longValue() : 0L;
                    }
                    if (StringsKt.H("videoViewed", contentStringValue, true)) {
                        if (contentStringValue2 != null) {
                            try {
                                f11 = Float.parseFloat(contentStringValue2);
                            } catch (NumberFormatException unused) {
                                o.Companion.e(TAG, "value for videoViewed is null !");
                                f11 = 0.0f;
                            }
                        } else {
                            f11 = 0.0f;
                        }
                        com.vungle.ads.internal.presenter.a aVar2 = this.bus;
                        if (aVar2 != null && f11 > 0.0f && !this.adViewed) {
                            this.adViewed = true;
                            if (aVar2 != null) {
                                aVar2.onNext("adViewed", null, this.placement.getReferenceId());
                                Unit unit2 = Unit.f67061a;
                            }
                            BidPayload bidPayload = this.bidPayload;
                            if (bidPayload != null && (impression = bidPayload.getImpression()) != null) {
                                Iterator<T> it = impression.iterator();
                                while (it.hasNext()) {
                                    com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey("impression").withLogEntry(getLogEntry()).build(), false, 2, null);
                                }
                                Unit unit3 = Unit.f67061a;
                            }
                        }
                    }
                    handler.post(new Runnable() { // from class: com.vungle.ads.internal.presenter.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            MRAIDPresenter.m421processCommand$lambda5(this.f60651a);
                        }
                    });
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case -660787472:
                if (command.equals(CONSENT_ACTION)) {
                    String contentStringValue3 = m.INSTANCE.getContentStringValue(arguments, NotificationCompat.CATEGORY_EVENT);
                    PrivacyConsent privacyConsent = PrivacyConsent.OPT_OUT;
                    PrivacyManager.INSTANCE.updateGdprConsent(Intrinsics.c(contentStringValue3, privacyConsent.getValue()) ? privacyConsent.getValue() : PrivacyConsent.OPT_IN.getValue(), "vungle_modal", null);
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case -568000867:
                if (command.equals(PING_URL)) {
                    m mVar2 = m.INSTANCE;
                    String contentStringValue4 = mVar2.getContentStringValue(arguments, "requestType");
                    if (contentStringValue4 != null) {
                        upperCase = contentStringValue4.toUpperCase(Locale.ROOT);
                        Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    } else {
                        upperCase = null;
                    }
                    if (!CollectionsKt.b0(CollectionsKt.o("GET", "POST"), upperCase)) {
                        new TpatError(Sdk$SDKError.Reason.TPAT_ERROR, "Invalid request type: " + upperCase + ". Only 'GET' and 'POST' are supported").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                    } else {
                        String contentStringValue5 = mVar2.getContentStringValue(arguments, "url");
                        String contentStringValue6 = mVar2.getContentStringValue(arguments, "requestData");
                        boolean z10 = Boolean.parseBoolean(mVar2.getContentStringValue(arguments, "retry"));
                        String contentStringValue7 = mVar2.getContentStringValue(arguments, "headers");
                        if (contentStringValue7 != null) {
                            try {
                                kotlinx.serialization.json.a.C0816a c0816a = kotlinx.serialization.json.a.f68231d;
                                f00.c cVarA = c0816a.a();
                                KTypeProjection.Companion companion3 = KTypeProjection.INSTANCE;
                                kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(cVarA, Reflection.o(Map.class, companion3.a(Reflection.m(String.class)), companion3.a(Reflection.m(String.class))));
                                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                                map = (Map) c0816a.b(bVarB, contentStringValue7);
                            } catch (Exception unused2) {
                                new TpatError(Sdk$SDKError.Reason.TPAT_ERROR, "Failed to decode header: " + contentStringValue7).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                                return true;
                            }
                        } else {
                            map = null;
                        }
                        if (!v.INSTANCE.isUrlValid(contentStringValue5)) {
                            new TpatError(Sdk$SDKError.Reason.EMPTY_TPAT_ERROR, "URL is missing in params from a template for generic tpat").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                        } else if (contentStringValue5 != null) {
                            com.vungle.ads.internal.network.f.a aVarWithLogEntry = new com.vungle.ads.internal.network.f.a(contentStringValue5).headers(map).body(contentStringValue6).regularRetry(z10).tpatKey(PING_URL).withLogEntry(getLogEntry());
                            if (Intrinsics.c(upperCase, "GET")) {
                                aVarWithLogEntry.get();
                            } else {
                                aVarWithLogEntry.post();
                            }
                            Unit unit4 = Unit.f67061a;
                            com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), aVarWithLogEntry.build(), false, 2, null);
                        }
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case -511324706:
                if (command.equals("openPrivacy")) {
                    AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new w(Sdk$SDKMetric.SDKMetricType.PRIVACY_URL_OPENED), getLogEntry(), (String) null, 4, (Object) null);
                    String contentStringValue8 = m.INSTANCE.getContentStringValue(arguments, "url");
                    if (contentStringValue8 == null || contentStringValue8.length() == 0 || !com.vungle.ads.internal.util.g.INSTANCE.isValidUrl(contentStringValue8)) {
                        if (contentStringValue8 == null) {
                            contentStringValue8 = "nonePrivacyUrl";
                        }
                        new PrivacyUrlError(contentStringValue8).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                    } else {
                        Context context = this.adWidget.getContext();
                        Intrinsics.g(context, "adWidget.context");
                        if (!com.vungle.ads.internal.util.d.launch$default(null, contentStringValue8, context, getLogEntry(), null, 16, null)) {
                            new PrivacyUrlError(contentStringValue8).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                        } else {
                            com.vungle.ads.internal.presenter.a aVar3 = this.bus;
                            if (aVar3 != null) {
                                aVar3.onNext(OPEN, "adLeftApplication", this.placement.getReferenceId());
                                Unit unit5 = Unit.f67061a;
                            }
                        }
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case -418575596:
                break;
            case -348095344:
                if (command.equals(USE_CUSTOM_PRIVACY)) {
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 3417674:
                break;
            case 3566511:
                if (command.equals("tpat")) {
                    String contentStringValue9 = m.INSTANCE.getContentStringValue(arguments, NotificationCompat.CATEGORY_EVENT);
                    if (contentStringValue9 == null || contentStringValue9.length() == 0) {
                        new TpatError(Sdk$SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                    } else {
                        triggerEventMetricForTpat(contentStringValue9);
                        List<String> tpatUrls = Intrinsics.c(contentStringValue9, com.vungle.ads.internal.b.CHECKPOINT_0) ? this.advertisement.getTpatUrls(contentStringValue9, this.platform.getCarrierName(), String.valueOf(this.platform.getVolumeLevel())) : Intrinsics.c(contentStringValue9, com.vungle.ads.internal.b.VIDEO_LENGTH_TPAT) ? AdPayload.getTpatUrls$default(this.advertisement, contentStringValue9, String.valueOf(this.videoLength), null, 4, null) : AdPayload.getTpatUrls$default(this.advertisement, contentStringValue9, null, null, 6, null);
                        if (tpatUrls != null) {
                            Iterator<T> it2 = tpatUrls.iterator();
                            while (it2.hasNext()) {
                                com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it2.next()).tpatKey(contentStringValue9).withLogEntry(getLogEntry()).build(), false, 2, null);
                            }
                            Unit unit6 = Unit.f67061a;
                        }
                        if (Intrinsics.c(contentStringValue9, com.vungle.ads.internal.b.CHECKPOINT_0)) {
                            this.cp0Fired = true;
                        }
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 94756344:
                if (command.equals("close")) {
                    closeView();
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 96784904:
                if (command.equals("error")) {
                    m mVar3 = m.INSTANCE;
                    String contentStringValue10 = mVar3.getContentStringValue(arguments, "code");
                    final boolean z11 = Boolean.parseBoolean(mVar3.getContentStringValue(arguments, "fatal"));
                    final String str = contentStringValue10 + " : " + mVar3.getContentStringValue(arguments, "errorMessage");
                    final MraidTemplateError mraidTemplateError = new MraidTemplateError(z11 ? Sdk$SDKError.Reason.AD_CLOSED_TEMPLATE_ERROR : Sdk$SDKError.Reason.MRAID_ERROR, str);
                    u.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter.processCommand.8
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m423invoke();
                            return Unit.f67061a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m423invoke() {
                            MRAIDPresenter.this.handleWebViewException(mraidTemplateError, z11, str);
                        }
                    });
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 133423073:
                if (command.equals(SET_ORIENTATION_PROPERTIES)) {
                    String contentStringValue11 = m.INSTANCE.getContentStringValue(arguments, "forceOrientation");
                    if (contentStringValue11 != null && contentStringValue11.length() != 0) {
                        Locale ENGLISH = Locale.ENGLISH;
                        Intrinsics.g(ENGLISH, "ENGLISH");
                        String lowerCase = contentStringValue11.toLowerCase(ENGLISH);
                        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                        if (Intrinsics.c(lowerCase, TmcStartParams.KEY_LANDSCAPE)) {
                            this.adWidget.setOrientation(6);
                        } else if (Intrinsics.c(lowerCase, "portrait")) {
                            this.adWidget.setOrientation(7);
                        }
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 592314818:
                if (command.equals(UPDATE_SIGNALS)) {
                    String contentStringValue12 = m.INSTANCE.getContentStringValue(arguments, "signals");
                    if (contentStringValue12 != null && contentStringValue12.length() != 0) {
                        getSignalManager().updateTemplateSignals(contentStringValue12);
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 1496446614:
                if (command.equals(GET_AVAILABLE_DISK_SPACE)) {
                    try {
                        File noBackupFilesDir = this.adWidget.getContext().getNoBackupFilesDir();
                        p pathProvider = getPathProvider();
                        String path = noBackupFilesDir.getPath();
                        Intrinsics.g(path, "dir.path");
                        final long availableBytes = pathProvider.getAvailableBytes(path);
                        handler.post(new Runnable() { // from class: com.vungle.ads.internal.presenter.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                MRAIDPresenter.m420processCommand$lambda12(this.f60654a, availableBytes);
                            }
                        });
                    } catch (Exception unused3) {
                        o.Companion.e(TAG, "Failed to get available disk space");
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 1614272768:
                if (command.equals(USE_CUSTOM_CLOSE)) {
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            case 1850430989:
                if (command.equals(CREATIVE_HEARTBEAT)) {
                    if (this.heartbeatEnabled) {
                        handler.post(new Runnable() { // from class: com.vungle.ads.internal.presenter.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                MRAIDPresenter.m419processCommand$lambda11(this.f60653a);
                            }
                        });
                    }
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
            default:
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_CALL_EMPTY, "Unknown MRAID Command: " + command).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                o.Companion.w(TAG, "processCommand# Unknown MRAID Command: " + command);
                break;
        }
        return true;
        return true;
    }

    public final void setAdStartTime$vungle_ads_release(Long l11) {
        this.adStartTime = l11;
    }

    public final void setAdVisibility(boolean z10) {
        this.vungleWebClient.setAdVisibility(z10);
    }

    public final void setBackEnabled$vungle_ads_release(boolean z10) {
        this.backEnabled = z10;
    }

    public final void setBus(com.vungle.ads.internal.presenter.a aVar) {
        this.bus = aVar;
    }

    public final void setEventListener(com.vungle.ads.internal.presenter.a aVar) {
        this.bus = aVar;
    }

    public final void setHeartbeatEnabled$vungle_ads_release(boolean z10) {
        this.heartbeatEnabled = z10;
    }

    public final void setLastUserInteractionTimestamp$vungle_ads_release(long j11) {
        this.lastUserInteractionTimestamp = j11;
    }

    public final void setPresenterDelegate$vungle_ads_release(l lVar) {
        this.presenterDelegate = lVar;
    }

    public final void setUserId$vungle_ads_release(String str) {
        this.userId = str;
    }

    public final void setVideoLength$vungle_ads_release(long j11) {
        this.videoLength = j11;
    }

    public final boolean shouldBlockAutoRedirect$vungle_ads_release() {
        ConfigManager configManager = ConfigManager.INSTANCE;
        if (configManager.allowAutoRedirects()) {
            return false;
        }
        return this.lastUserInteractionTimestamp == 0 || System.currentTimeMillis() - this.lastUserInteractionTimestamp > configManager.afterClickDuration();
    }

    public final void start() {
        o.Companion.d(TAG, "start()");
        this.adWidget.resumeWeb();
        setAdVisibility(true);
    }

    public final void stop() {
        o.Companion.d(TAG, "stop()");
        this.adWidget.pauseWeb();
        setAdVisibility(false);
    }
}
