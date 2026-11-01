package com.vungle.ads;

import android.os.Build;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class AnalyticsClient {
    private static final int MAX_BATCH_SIZE = 20;
    private static final long REFRESH_TIME_MILLIS = 5000;
    private static final String TAG = "AnalyticsClient";
    private static VungleThreadPoolExecutor executor;
    private static boolean metricsEnabled;
    private static VungleApiClient vungleApiClient;
    public static final AnalyticsClient INSTANCE = new AnalyticsClient();
    private static final BlockingQueue<Sdk$SDKError.a> errors = new LinkedBlockingQueue();
    private static final BlockingQueue<Sdk$SDKMetric.a> metrics = new LinkedBlockingQueue();
    private static final BlockingQueue<Sdk$SDKError.a> pendingErrors = new LinkedBlockingQueue();
    private static final BlockingQueue<Sdk$SDKMetric.a> pendingMetrics = new LinkedBlockingQueue();
    private static LogLevel logLevel = LogLevel.ERROR_LOG_LEVEL_ERROR;
    private static boolean refreshEnabled = true;
    private static final AtomicBoolean isInitialized = new AtomicBoolean(false);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$LogLevel;", "", "", PermissionConstant.level, "<init>", "(Ljava/lang/String;II)V", "I", "getLevel", "()I", "Companion", "a", "ERROR_LOG_LEVEL_OFF", "ERROR_LOG_LEVEL_ERROR", "ERROR_LOG_LEVEL_DEBUG", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum LogLevel {
        ERROR_LOG_LEVEL_OFF(0),
        ERROR_LOG_LEVEL_ERROR(1),
        ERROR_LOG_LEVEL_DEBUG(2);


        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int level;

        /* JADX INFO: renamed from: com.vungle.ads.AnalyticsClient$LogLevel$a, reason: from kotlin metadata */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final LogLevel fromValue(int i11) {
                LogLevel logLevel = LogLevel.ERROR_LOG_LEVEL_DEBUG;
                if (i11 == logLevel.getLevel()) {
                    return logLevel;
                }
                LogLevel logLevel2 = LogLevel.ERROR_LOG_LEVEL_ERROR;
                if (i11 == logLevel2.getLevel()) {
                    return logLevel2;
                }
                LogLevel logLevel3 = LogLevel.ERROR_LOG_LEVEL_OFF;
                return i11 == logLevel3.getLevel() ? logLevel3 : logLevel2;
            }
        }

        LogLevel(int i11) {
            this.level = i11;
        }

        public final int getLevel() {
            return this.level;
        }
    }

    public interface a {
        void onFailure();

        void onSuccess();
    }

    public static final class b implements a {
        final /* synthetic */ BlockingQueue<Sdk$SDKError.a> $currentSendingErrors;

        b(BlockingQueue<Sdk$SDKError.a> blockingQueue) {
            this.$currentSendingErrors = blockingQueue;
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onFailure() {
            com.vungle.ads.internal.util.o.Companion.d(AnalyticsClient.TAG, "Failed to send " + this.$currentSendingErrors.size() + " errors");
            AnalyticsClient.INSTANCE.getErrors$vungle_ads_release().addAll(this.$currentSendingErrors);
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onSuccess() {
            com.vungle.ads.internal.util.o.Companion.d(AnalyticsClient.TAG, "Sent " + this.$currentSendingErrors.size() + " errors");
        }
    }

    public static final class c implements a {
        final /* synthetic */ BlockingQueue<Sdk$SDKMetric.a> $currentSendingMetrics;

        c(BlockingQueue<Sdk$SDKMetric.a> blockingQueue) {
            this.$currentSendingMetrics = blockingQueue;
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onFailure() {
            com.vungle.ads.internal.util.o.Companion.d(AnalyticsClient.TAG, "Failed to send " + this.$currentSendingMetrics.size() + " metrics");
            AnalyticsClient.INSTANCE.getMetrics$vungle_ads_release().addAll(this.$currentSendingMetrics);
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onSuccess() {
            com.vungle.ads.internal.util.o.Companion.d(AnalyticsClient.TAG, "Sent " + this.$currentSendingMetrics.size() + " metrics");
        }
    }

    private AnalyticsClient() {
    }

    private final void flushErrors() {
        VungleApiClient vungleApiClient2;
        com.vungle.ads.internal.util.o.a aVar = com.vungle.ads.internal.util.o.Companion;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Sending ");
        BlockingQueue<Sdk$SDKError.a> blockingQueue = errors;
        sb2.append(blockingQueue.size());
        sb2.append(" errors");
        aVar.d(TAG, sb2.toString());
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (linkedBlockingQueue.isEmpty() || (vungleApiClient2 = vungleApiClient) == null) {
            return;
        }
        vungleApiClient2.reportErrors(linkedBlockingQueue, new b(linkedBlockingQueue));
    }

    private final void flushMetrics() {
        VungleApiClient vungleApiClient2;
        com.vungle.ads.internal.util.o.a aVar = com.vungle.ads.internal.util.o.Companion;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Sending ");
        BlockingQueue<Sdk$SDKMetric.a> blockingQueue = metrics;
        sb2.append(blockingQueue.size());
        sb2.append(" metrics");
        aVar.d(TAG, sb2.toString());
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (linkedBlockingQueue.isEmpty() || (vungleApiClient2 = vungleApiClient) == null) {
            return;
        }
        vungleApiClient2.reportMetrics(linkedBlockingQueue, new c(linkedBlockingQueue));
    }

    private final Sdk$SDKMetric.a genMetric(Sdk$SDKMetric.SDKMetricType sDKMetricType, long j11, com.vungle.ads.internal.util.n nVar, String str) {
        String placementRefId$vungle_ads_release;
        String creativeId$vungle_ads_release;
        String eventId$vungle_ads_release;
        String headerUa;
        String adSource$vungle_ads_release;
        String vmVersion$vungle_ads_release;
        Sdk$SDKMetric.a value = Sdk$SDKMetric.newBuilder().setType(sDKMetricType).setValue(j11);
        String str2 = Build.MANUFACTURER;
        Sdk$SDKMetric.a osVersion = value.setMake(str2).setModel(Build.MODEL).setOs(Intrinsics.c("Amazon", str2) ? "amazon" : "android").setOsVersion(String.valueOf(Build.VERSION.SDK_INT));
        String str3 = "";
        if (nVar == null || (placementRefId$vungle_ads_release = nVar.getPlacementRefId$vungle_ads_release()) == null) {
            placementRefId$vungle_ads_release = "";
        }
        Sdk$SDKMetric.a placementReferenceId = osVersion.setPlacementReferenceId(placementRefId$vungle_ads_release);
        if (nVar == null || (creativeId$vungle_ads_release = nVar.getCreativeId$vungle_ads_release()) == null) {
            creativeId$vungle_ads_release = "";
        }
        Sdk$SDKMetric.a creativeId = placementReferenceId.setCreativeId(creativeId$vungle_ads_release);
        if (nVar == null || (eventId$vungle_ads_release = nVar.getEventId$vungle_ads_release()) == null) {
            eventId$vungle_ads_release = "";
        }
        Sdk$SDKMetric.a eventId = creativeId.setEventId(eventId$vungle_ads_release);
        if (str == null) {
            str = "";
        }
        Sdk$SDKMetric.a meta = eventId.setMeta(str);
        if (nVar == null || (headerUa = nVar.getMediationName$vungle_ads_release()) == null) {
            headerUa = com.vungle.ads.internal.network.k.INSTANCE.getHeaderUa();
        }
        Sdk$SDKMetric.a mediationName = meta.setMediationName(headerUa);
        if (nVar == null || (adSource$vungle_ads_release = nVar.getAdSource$vungle_ads_release()) == null) {
            adSource$vungle_ads_release = "";
        }
        Sdk$SDKMetric.a adSource = mediationName.setAdSource(adSource$vungle_ads_release);
        if (nVar != null && (vmVersion$vungle_ads_release = nVar.getVmVersion$vungle_ads_release()) != null) {
            str3 = vmVersion$vungle_ads_release;
        }
        Sdk$SDKMetric.a appState = adSource.setVmVersion(str3).setAppState(com.vungle.ads.internal.util.a.Companion.isForeground() ? 0L : 2L);
        Intrinsics.g(appState, "newBuilder()\n           …isForeground()) 0 else 2)");
        return appState;
    }

    static /* synthetic */ Sdk$SDKMetric.a genMetric$default(AnalyticsClient analyticsClient, Sdk$SDKMetric.SDKMetricType sDKMetricType, long j11, com.vungle.ads.internal.util.n nVar, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 0;
        }
        return analyticsClient.genMetric(sDKMetricType, j11, (i11 & 4) != 0 ? null : nVar, (i11 & 8) != 0 ? null : str);
    }

    private final Sdk$SDKError.a genSDKError(Sdk$SDKError.Reason reason, String str, com.vungle.ads.internal.util.n nVar) {
        String placementRefId$vungle_ads_release;
        String creativeId$vungle_ads_release;
        String eventId$vungle_ads_release;
        String adSource$vungle_ads_release;
        String headerUa;
        String vmVersion$vungle_ads_release;
        Sdk$SDKError.a aVarNewBuilder = Sdk$SDKError.newBuilder();
        String str2 = Build.MANUFACTURER;
        Sdk$SDKError.a at2 = aVarNewBuilder.setOs(Intrinsics.c("Amazon", str2) ? "amazon" : "android").setOsVersion(String.valueOf(Build.VERSION.SDK_INT)).setMake(str2).setModel(Build.MODEL).setReason(reason).setMessage(str).setAt(System.currentTimeMillis());
        String str3 = "";
        if (nVar == null || (placementRefId$vungle_ads_release = nVar.getPlacementRefId$vungle_ads_release()) == null) {
            placementRefId$vungle_ads_release = "";
        }
        Sdk$SDKError.a placementReferenceId = at2.setPlacementReferenceId(placementRefId$vungle_ads_release);
        if (nVar == null || (creativeId$vungle_ads_release = nVar.getCreativeId$vungle_ads_release()) == null) {
            creativeId$vungle_ads_release = "";
        }
        Sdk$SDKError.a creativeId = placementReferenceId.setCreativeId(creativeId$vungle_ads_release);
        if (nVar == null || (eventId$vungle_ads_release = nVar.getEventId$vungle_ads_release()) == null) {
            eventId$vungle_ads_release = "";
        }
        Sdk$SDKError.a eventId = creativeId.setEventId(eventId$vungle_ads_release);
        if (nVar == null || (adSource$vungle_ads_release = nVar.getAdSource$vungle_ads_release()) == null) {
            adSource$vungle_ads_release = "";
        }
        Sdk$SDKError.a adSource = eventId.setAdSource(adSource$vungle_ads_release);
        if (nVar != null && (vmVersion$vungle_ads_release = nVar.getVmVersion$vungle_ads_release()) != null) {
            str3 = vmVersion$vungle_ads_release;
        }
        Sdk$SDKError.a vmVersion = adSource.setVmVersion(str3);
        if (nVar == null || (headerUa = nVar.getMediationName$vungle_ads_release()) == null) {
            headerUa = com.vungle.ads.internal.network.k.INSTANCE.getHeaderUa();
        }
        Sdk$SDKError.a appState = vmVersion.setMediationName(headerUa).setAppState(com.vungle.ads.internal.util.a.Companion.isForeground() ? 0L : 2L);
        Intrinsics.g(appState, "newBuilder()\n           …isForeground()) 0 else 2)");
        return appState;
    }

    static /* synthetic */ Sdk$SDKError.a genSDKError$default(AnalyticsClient analyticsClient, Sdk$SDKError.Reason reason, String str, com.vungle.ads.internal.util.n nVar, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            nVar = null;
        }
        return analyticsClient.genSDKError(reason, str, nVar);
    }

    public static /* synthetic */ void getErrors$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getExecutor$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getMetrics$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getMetricsEnabled$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getPendingErrors$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getPendingMetrics$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getRefreshEnabled$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getVungleApiClient$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initOrUpdate$lambda-1, reason: not valid java name */
    public static final void m324initOrUpdate$lambda1(VungleThreadPoolExecutor executor2) {
        Intrinsics.h(executor2, "$executor");
        executor2.execute(new Runnable() { // from class: com.vungle.ads.d
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsClient.m325initOrUpdate$lambda1$lambda0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initOrUpdate$lambda-1$lambda-0, reason: not valid java name */
    public static final void m325initOrUpdate$lambda1$lambda0() {
        INSTANCE.report();
    }

    public static /* synthetic */ void isInitialized$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logError$lambda-2, reason: not valid java name */
    public static final void m326logError$lambda2(Sdk$SDKError.Reason reason, String message, com.vungle.ads.internal.util.n nVar) {
        Intrinsics.h(reason, "$reason");
        Intrinsics.h(message, "$message");
        INSTANCE.logErrorInSameThread(reason, message, nVar);
    }

    public static /* synthetic */ void logError$vungle_ads_release$default(AnalyticsClient analyticsClient, Sdk$SDKError.Reason reason, String str, com.vungle.ads.internal.util.n nVar, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            nVar = null;
        }
        analyticsClient.logError$vungle_ads_release(reason, str, nVar);
    }

    private final synchronized void logErrorInSameThread(Sdk$SDKError.Reason reason, String str, com.vungle.ads.internal.util.n nVar) {
        if (logLevel == LogLevel.ERROR_LOG_LEVEL_OFF) {
            return;
        }
        try {
            Sdk$SDKError.a aVarGenSDKError = genSDKError(reason, str, nVar);
            BlockingQueue<Sdk$SDKError.a> blockingQueue = errors;
            blockingQueue.put(aVarGenSDKError);
            com.vungle.ads.internal.util.o.Companion.w(TAG, "Logging error: " + reason + " with message: " + str + ", mediation: " + aVarGenSDKError.getMediationName());
            if (blockingQueue.size() >= 20) {
                report();
            }
        } catch (Exception e11) {
            com.vungle.ads.internal.util.o.Companion.e(TAG, "Cannot logError", e11);
        }
    }

    static /* synthetic */ void logErrorInSameThread$default(AnalyticsClient analyticsClient, Sdk$SDKError.Reason reason, String str, com.vungle.ads.internal.util.n nVar, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            nVar = null;
        }
        analyticsClient.logErrorInSameThread(reason, str, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logMetric$lambda-3, reason: not valid java name */
    public static final void m327logMetric$lambda3(Sdk$SDKMetric.SDKMetricType metricType, long j11, com.vungle.ads.internal.util.n nVar, String str) {
        Intrinsics.h(metricType, "$metricType");
        INSTANCE.logMetricInSameThread(metricType, j11, nVar, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, Sdk$SDKMetric.SDKMetricType sDKMetricType, long j11, com.vungle.ads.internal.util.n nVar, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 0;
        }
        analyticsClient.logMetric$vungle_ads_release(sDKMetricType, j11, (i11 & 4) != 0 ? null : nVar, (i11 & 8) != 0 ? null : str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, t tVar, com.vungle.ads.internal.util.n nVar, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            nVar = null;
        }
        if ((i11 & 4) != 0) {
            str = tVar.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(tVar, nVar, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, w wVar, com.vungle.ads.internal.util.n nVar, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            nVar = null;
        }
        if ((i11 & 4) != 0) {
            str = wVar.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(wVar, nVar, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, x xVar, com.vungle.ads.internal.util.n nVar, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            nVar = null;
        }
        if ((i11 & 4) != 0) {
            str = xVar.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(xVar, nVar, str);
    }

    private final synchronized void logMetricInSameThread(Sdk$SDKMetric.SDKMetricType sDKMetricType, long j11, com.vungle.ads.internal.util.n nVar, String str) {
        try {
            if (metricsEnabled) {
                try {
                    Sdk$SDKMetric.a aVarGenMetric = genMetric(sDKMetricType, j11, nVar, str);
                    BlockingQueue<Sdk$SDKMetric.a> blockingQueue = metrics;
                    blockingQueue.put(aVarGenMetric);
                    com.vungle.ads.internal.util.o.a aVar = com.vungle.ads.internal.util.o.Companion;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Logging Metric ");
                    sb2.append(sDKMetricType);
                    sb2.append(" with value ");
                    sb2.append(j11);
                    sb2.append(" for placement ");
                    sb2.append(nVar != null ? nVar.getPlacementRefId$vungle_ads_release() : null);
                    sb2.append(" mediation:");
                    sb2.append(aVarGenMetric.getMediationName());
                    aVar.w(TAG, sb2.toString());
                    if (blockingQueue.size() >= 20) {
                        report();
                    }
                } catch (Exception e11) {
                    com.vungle.ads.internal.util.o.Companion.e(TAG, "Cannot logMetrics", e11);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    static /* synthetic */ void logMetricInSameThread$default(AnalyticsClient analyticsClient, Sdk$SDKMetric.SDKMetricType sDKMetricType, long j11, com.vungle.ads.internal.util.n nVar, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 0;
        }
        analyticsClient.logMetricInSameThread(sDKMetricType, j11, (i11 & 4) != 0 ? null : nVar, (i11 & 8) != 0 ? null : str);
    }

    private final synchronized void report() {
        try {
            if (logLevel != LogLevel.ERROR_LOG_LEVEL_OFF && errors.size() > 0) {
                flushErrors();
            }
            if (metricsEnabled && metrics.size() > 0) {
                flushMetrics();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final BlockingQueue<Sdk$SDKError.a> getErrors$vungle_ads_release() {
        return errors;
    }

    public final VungleThreadPoolExecutor getExecutor$vungle_ads_release() {
        return executor;
    }

    public final BlockingQueue<Sdk$SDKMetric.a> getMetrics$vungle_ads_release() {
        return metrics;
    }

    public final boolean getMetricsEnabled$vungle_ads_release() {
        return metricsEnabled;
    }

    public final BlockingQueue<Sdk$SDKError.a> getPendingErrors$vungle_ads_release() {
        return pendingErrors;
    }

    public final BlockingQueue<Sdk$SDKMetric.a> getPendingMetrics$vungle_ads_release() {
        return pendingMetrics;
    }

    public final boolean getRefreshEnabled$vungle_ads_release() {
        return refreshEnabled;
    }

    public final VungleApiClient getVungleApiClient$vungle_ads_release() {
        return vungleApiClient;
    }

    public final synchronized void initOrUpdate$vungle_ads_release(VungleApiClient vungleApiClient2, final VungleThreadPoolExecutor executor2, int i11, boolean z10) {
        try {
            Intrinsics.h(vungleApiClient2, "vungleApiClient");
            Intrinsics.h(executor2, "executor");
            logLevel = LogLevel.INSTANCE.fromValue(i11);
            metricsEnabled = z10;
            if (i11 == LogLevel.ERROR_LOG_LEVEL_DEBUG.getLevel()) {
                com.vungle.ads.internal.util.o.Companion.enable(true);
            } else if (i11 == LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel() || i11 == LogLevel.ERROR_LOG_LEVEL_OFF.getLevel()) {
                com.vungle.ads.internal.util.o.Companion.enable(false);
            }
            if (isInitialized.getAndSet(true)) {
                com.vungle.ads.internal.util.o.Companion.d(TAG, "AnalyticsClient already initialized");
                return;
            }
            executor = executor2;
            vungleApiClient = vungleApiClient2;
            try {
                BlockingQueue<Sdk$SDKError.a> blockingQueue = pendingErrors;
                if (!blockingQueue.isEmpty()) {
                    blockingQueue.drainTo(errors);
                }
            } catch (Exception e11) {
                com.vungle.ads.internal.util.o.Companion.e(TAG, "Failed to add pendingErrors to errors queue.", e11);
            }
            try {
                BlockingQueue<Sdk$SDKMetric.a> blockingQueue2 = pendingMetrics;
                if (!blockingQueue2.isEmpty()) {
                    blockingQueue2.drainTo(metrics);
                }
            } catch (Exception e12) {
                com.vungle.ads.internal.util.o.Companion.e(TAG, "Failed to add pendingMetrics to metrics queue.", e12);
            }
            if (refreshEnabled) {
                Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new Runnable() { // from class: com.vungle.ads.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.m324initOrUpdate$lambda1(executor2);
                    }
                }, 5000L, 5000L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final AtomicBoolean isInitialized$vungle_ads_release() {
        return isInitialized;
    }

    public final synchronized void logError$vungle_ads_release(final Sdk$SDKError.Reason reason, final String message, final com.vungle.ads.internal.util.n nVar) {
        Intrinsics.h(reason, "reason");
        Intrinsics.h(message, "message");
        try {
            VungleThreadPoolExecutor vungleThreadPoolExecutor = executor;
            if (vungleThreadPoolExecutor == null) {
                pendingErrors.put(genSDKError(reason, message, nVar));
            } else {
                if (vungleThreadPoolExecutor != null) {
                    vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnalyticsClient.m326logError$lambda2(reason, message, nVar);
                        }
                    });
                }
            }
        } catch (Exception e11) {
            com.vungle.ads.internal.util.o.Companion.e(TAG, "Cannot logError " + reason + ", " + message + ", " + nVar, e11);
        }
    }

    public final synchronized void logMetric$vungle_ads_release(final Sdk$SDKMetric.SDKMetricType metricType, final long j11, final com.vungle.ads.internal.util.n nVar, final String str) {
        Intrinsics.h(metricType, "metricType");
        try {
            VungleThreadPoolExecutor vungleThreadPoolExecutor = executor;
            if (vungleThreadPoolExecutor == null) {
                pendingMetrics.put(genMetric(metricType, j11, nVar, str));
            } else {
                if (vungleThreadPoolExecutor != null) {
                    vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnalyticsClient.m327logMetric$lambda3(metricType, j11, nVar, str);
                        }
                    });
                }
            }
        } catch (Exception e11) {
            com.vungle.ads.internal.util.o.Companion.e(TAG, "Cannot logMetric " + metricType + ", " + j11 + ", " + nVar + ", " + str, e11);
        }
    }

    public final synchronized void logMetric$vungle_ads_release(t oneShotTimeIntervalMetric, com.vungle.ads.internal.util.n nVar, String str) {
        Intrinsics.h(oneShotTimeIntervalMetric, "oneShotTimeIntervalMetric");
        if (!oneShotTimeIntervalMetric.isLogged()) {
            logMetric$vungle_ads_release((x) oneShotTimeIntervalMetric, nVar, str);
            oneShotTimeIntervalMetric.markLogged();
        }
    }

    public final synchronized void logMetric$vungle_ads_release(w singleValueMetric, com.vungle.ads.internal.util.n nVar, String str) {
        Intrinsics.h(singleValueMetric, "singleValueMetric");
        logMetric$vungle_ads_release(singleValueMetric.getMetricType(), singleValueMetric.getValue(), nVar, str);
    }

    public final synchronized void logMetric$vungle_ads_release(x timeIntervalMetric, com.vungle.ads.internal.util.n nVar, String str) {
        Intrinsics.h(timeIntervalMetric, "timeIntervalMetric");
        logMetric$vungle_ads_release(timeIntervalMetric.getMetricType(), timeIntervalMetric.getValue(), nVar, str);
    }

    public final void setExecutor$vungle_ads_release(VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        executor = vungleThreadPoolExecutor;
    }

    public final void setMetricsEnabled$vungle_ads_release(boolean z10) {
        metricsEnabled = z10;
    }

    public final void setRefreshEnabled$vungle_ads_release(boolean z10) {
        refreshEnabled = z10;
    }

    public final void setVungleApiClient$vungle_ads_release(VungleApiClient vungleApiClient2) {
        vungleApiClient = vungleApiClient2;
    }
}
