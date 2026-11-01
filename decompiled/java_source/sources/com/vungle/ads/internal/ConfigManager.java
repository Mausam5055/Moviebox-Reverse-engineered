package com.vungle.ads.internal;

import android.content.Context;
import android.net.Uri;
import com.vungle.ads.APIFailedStatusCodeError;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InvalidEndpointError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.w;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.n;

/* JADX INFO: loaded from: classes7.dex */
public final class ConfigManager {
    private static final int CONFIG_ALL_DATA = 2;
    private static final int CONFIG_LAST_VALIDATED_TIMESTAMP_ONLY = 1;
    public static final long CONFIG_LAST_VALIDATE_TS_DEFAULT = -1;
    private static final int CONFIG_NOT_AVAILABLE = 0;
    private static final int DEFAULT_SESSION_TIMEOUT_SECONDS = 900;
    private static final int DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS = 1800;
    public static final String TAG = "ConfigManager";
    private static String applicationId;
    private static ConfigPayload config;
    private static String configExt;
    private static ConfigPayload.f endpoints;
    private static List<com.vungle.ads.internal.model.g> placements;
    public static final ConfigManager INSTANCE = new ConfigManager();
    private static final kotlinx.serialization.json.a json = n.b(null, new Function1<kotlinx.serialization.json.d, Unit>() { // from class: com.vungle.ads.internal.ConfigManager$json$1
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

    public static final class a implements com.vungle.ads.internal.network.b {
        final /* synthetic */ Context $context;
        final /* synthetic */ Function1<Boolean, Unit> $onComplete;

        /* JADX WARN: Multi-variable type inference failed */
        a(Function1<? super Boolean, Unit> function1, Context context) {
            this.$onComplete = function1;
            this.$context = context;
        }

        @Override // com.vungle.ads.internal.network.b
        public void onFailure(com.vungle.ads.internal.network.a aVar, Throwable th2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error while fetching config: ");
            sb2.append(th2 != null ? th2.getMessage() : null);
            new NetworkUnreachable(sb2.toString()).logErrorNoReturnValue$vungle_ads_release();
            this.$onComplete.invoke(Boolean.FALSE);
        }

        @Override // com.vungle.ads.internal.network.b
        public void onResponse(com.vungle.ads.internal.network.a aVar, com.vungle.ads.internal.network.e eVar) {
            if (eVar != null && eVar.isSuccessful() && eVar.body() != null) {
                ConfigManager.INSTANCE.initWithConfig$vungle_ads_release(this.$context, (ConfigPayload) eVar.body(), false, new w(Sdk$SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_INIT));
                this.$onComplete.invoke(Boolean.TRUE);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("config API: ");
            sb2.append(eVar != null ? Integer.valueOf(eVar.code()) : null);
            new APIFailedStatusCodeError(sb2.toString()).logErrorNoReturnValue$vungle_ads_release();
            this.$onComplete.invoke(Boolean.FALSE);
        }
    }

    private ConfigManager() {
    }

    /* JADX INFO: renamed from: fetchConfigAsync$lambda-0, reason: not valid java name */
    private static final VungleApiClient m367fetchConfigAsync$lambda0(Lazy<VungleApiClient> lazy) {
        return (VungleApiClient) lazy.getValue();
    }

    /* JADX INFO: renamed from: initWithConfig$lambda-2, reason: not valid java name */
    private static final com.vungle.ads.internal.persistence.b m368initWithConfig$lambda2(Lazy<com.vungle.ads.internal.persistence.b> lazy) {
        return (com.vungle.ads.internal.persistence.b) lazy.getValue();
    }

    /* JADX INFO: renamed from: initWithConfig$lambda-4, reason: not valid java name */
    private static final VungleApiClient m369initWithConfig$lambda4(Lazy<VungleApiClient> lazy) {
        return (VungleApiClient) lazy.getValue();
    }

    /* JADX INFO: renamed from: initWithConfig$lambda-5, reason: not valid java name */
    private static final com.vungle.ads.internal.executor.a m370initWithConfig$lambda5(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    public static /* synthetic */ void initWithConfig$vungle_ads_release$default(ConfigManager configManager, Context context, ConfigPayload configPayload, boolean z10, w wVar, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            wVar = null;
        }
        configManager.initWithConfig$vungle_ads_release(context, configPayload, z10, wVar);
    }

    /* JADX INFO: renamed from: updateConfigExtension$lambda-1, reason: not valid java name */
    private static final com.vungle.ads.internal.persistence.b m371updateConfigExtension$lambda1(Lazy<com.vungle.ads.internal.persistence.b> lazy) {
        return (com.vungle.ads.internal.persistence.b) lazy.getValue();
    }

    public static /* synthetic */ boolean validateEndpoints$vungle_ads_release$default(ConfigManager configManager, ConfigPayload.f fVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            fVar = endpoints;
        }
        return configManager.validateEndpoints$vungle_ads_release(fVar);
    }

    public final long afterClickDuration() {
        ConfigPayload.b autoRedirect;
        Long afterClickDuration;
        ConfigPayload configPayload = config;
        if (configPayload == null || (autoRedirect = configPayload.getAutoRedirect()) == null || (afterClickDuration = autoRedirect.getAfterClickDuration()) == null) {
            return Long.MAX_VALUE;
        }
        return afterClickDuration.longValue();
    }

    public final boolean allowAutoRedirects() {
        ConfigPayload.b autoRedirect;
        Boolean allowAutoRedirect;
        ConfigPayload configPayload = config;
        if (configPayload == null || (autoRedirect = configPayload.getAutoRedirect()) == null || (allowAutoRedirect = autoRedirect.getAllowAutoRedirect()) == null) {
            return false;
        }
        return allowAutoRedirect.booleanValue();
    }

    public final int checkConfigPayload$vungle_ads_release(ConfigPayload configPayload) {
        if (configPayload == null || configPayload.getConfigLastValidatedTimestamp() == null) {
            return 0;
        }
        Long configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp();
        if (configLastValidatedTimestamp != null && configLastValidatedTimestamp.longValue() == -1) {
            return 0;
        }
        return configPayload.getEndpoints() == null ? 1 : 2;
    }

    public final void clearConfig$vungle_ads_release() {
        endpoints = null;
        placements = null;
        config = null;
    }

    public final long configLastValidatedTimestamp() {
        Long configLastValidatedTimestamp;
        ConfigPayload configPayload = config;
        if (configPayload == null || (configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp()) == null) {
            return -1L;
        }
        return configLastValidatedTimestamp.longValue();
    }

    public final void fetchConfigAsync$vungle_ads_release(final Context context, Function1<? super Boolean, Unit> onComplete) {
        Intrinsics.h(context, "context");
        Intrinsics.h(onComplete, "onComplete");
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        try {
            com.vungle.ads.internal.network.a aVarConfig = m367fetchConfigAsync$lambda0(LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.ConfigManager$fetchConfigAsync$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final VungleApiClient invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                }
            })).config();
            if (aVarConfig != null) {
                aVarConfig.enqueue(new a(onComplete, context));
            }
        } catch (Throwable th2) {
            if (th2 instanceof UnknownHostException ? true : th2 instanceof SecurityException) {
                new NetworkUnreachable("Config unknown: " + th2.getMessage()).logErrorNoReturnValue$vungle_ads_release();
            } else {
                new NetworkUnreachable("Config: " + th2.getMessage()).logErrorNoReturnValue$vungle_ads_release();
            }
            onComplete.invoke(Boolean.FALSE);
        }
    }

    public final boolean fpdEnabled() {
        Boolean fpdEnabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (fpdEnabled = configPayload.getFpdEnabled()) == null) {
            return true;
        }
        return fpdEnabled.booleanValue();
    }

    public final String getAdsEndpoint() {
        ConfigPayload.f fVar = endpoints;
        String str = null;
        String adsEndpoint = fVar != null ? fVar.getAdsEndpoint() : null;
        if (adsEndpoint != null && adsEndpoint.length() != 0) {
            str = adsEndpoint;
        }
        return str == null ? b.DEFAULT_ADS_ENDPOINT : str;
    }

    public final ConfigPayload getCachedConfig(com.vungle.ads.internal.persistence.b filePreferences, String appId) {
        Long refreshTime;
        Intrinsics.h(filePreferences, "filePreferences");
        Intrinsics.h(appId, "appId");
        try {
            String string = filePreferences.getString("config_app_id");
            if (string != null && string.length() != 0 && StringsKt.H(string, appId, true)) {
                String string2 = filePreferences.getString("config_response");
                if (string2 == null) {
                    return null;
                }
                long j11 = filePreferences.getLong("config_update_time", 0L);
                kotlinx.serialization.json.a aVar = json;
                kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(ConfigPayload.class));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                ConfigPayload configPayload = (ConfigPayload) aVar.b(bVarB, string2);
                ConfigPayload.e configSettings = configPayload.getConfigSettings();
                if (((configSettings == null || (refreshTime = configSettings.getRefreshTime()) == null) ? -1L : refreshTime.longValue()) + j11 < System.currentTimeMillis()) {
                    o.Companion.w(TAG, "cache config expired. re-config");
                    return null;
                }
                o.Companion.w(TAG, "use cache config.");
                return configPayload;
            }
            o.Companion.w(TAG, "app id mismatch, re-config");
            return null;
        } catch (Exception e11) {
            o.Companion.e(TAG, "Error while parsing cached config: " + e11.getMessage());
            return null;
        }
    }

    public final int getCleverCacheDiskPercentage() {
        ConfigPayload.c cleverCache;
        Integer diskPercentage;
        ConfigPayload configPayload = config;
        if (configPayload == null || (cleverCache = configPayload.getCleverCache()) == null || (diskPercentage = cleverCache.getDiskPercentage()) == null) {
            return 3;
        }
        return diskPercentage.intValue();
    }

    public final long getCleverCacheDiskSize() {
        ConfigPayload.c cleverCache;
        Long diskSize;
        ConfigPayload configPayload = config;
        if (configPayload == null || (cleverCache = configPayload.getCleverCache()) == null || (diskSize = cleverCache.getDiskSize()) == null) {
            return 1048576000L;
        }
        long j11 = 1024;
        return diskSize.longValue() * j11 * j11;
    }

    public final String getConfigExtension() {
        String str = configExt;
        return str == null ? "" : str;
    }

    public final String getErrorLoggingEndpoint() {
        ConfigPayload.f fVar = endpoints;
        String str = null;
        String errorLogsEndpoint = fVar != null ? fVar.getErrorLogsEndpoint() : null;
        if (errorLogsEndpoint != null && errorLogsEndpoint.length() != 0) {
            str = errorLogsEndpoint;
        }
        return str == null ? b.DEFAULT_ERROR_LOGS_ENDPOINT : str;
    }

    public final String getGDPRButtonAccept() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.g gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null) {
            return null;
        }
        return gdpr.getButtonAccept();
    }

    public final String getGDPRButtonDeny() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.g gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null) {
            return null;
        }
        return gdpr.getButtonDeny();
    }

    public final String getGDPRConsentMessage() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.g gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null) {
            return null;
        }
        return gdpr.getConsentMessage();
    }

    public final String getGDPRConsentMessageVersion() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.g gdpr;
        String consentMessageVersion;
        ConfigPayload configPayload = config;
        return (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null || (consentMessageVersion = gdpr.getConsentMessageVersion()) == null) ? "" : consentMessageVersion;
    }

    public final String getGDPRConsentTitle() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.g gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null) {
            return null;
        }
        return gdpr.getConsentTitle();
    }

    public final boolean getGDPRIsCountryDataProtected() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.g gdpr;
        Boolean boolIsCountryDataProtected;
        ConfigPayload configPayload = config;
        if (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null || (boolIsCountryDataProtected = gdpr.isCountryDataProtected()) == null) {
            return false;
        }
        return boolIsCountryDataProtected.booleanValue();
    }

    public final int getLogLevel() {
        ConfigPayload.h logMetricsSettings;
        Integer errorLogLevel;
        ConfigPayload configPayload = config;
        return (configPayload == null || (logMetricsSettings = configPayload.getLogMetricsSettings()) == null || (errorLogLevel = logMetricsSettings.getErrorLogLevel()) == null) ? AnalyticsClient.LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel() : errorLogLevel.intValue();
    }

    public final boolean getMetricsEnabled() {
        ConfigPayload.h logMetricsSettings;
        Boolean metricsEnabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (logMetricsSettings = configPayload.getLogMetricsSettings()) == null || (metricsEnabled = logMetricsSettings.getMetricsEnabled()) == null) {
            return false;
        }
        return metricsEnabled.booleanValue();
    }

    public final String getMetricsEndpoint() {
        ConfigPayload.f fVar = endpoints;
        String str = null;
        String metricsEndpoint = fVar != null ? fVar.getMetricsEndpoint() : null;
        if (metricsEndpoint != null && metricsEndpoint.length() != 0) {
            str = metricsEndpoint;
        }
        return str == null ? b.DEFAULT_METRICS_ENDPOINT : str;
    }

    public final String getMraidEndpoint() {
        ConfigPayload.f fVar = endpoints;
        if (fVar != null) {
            return fVar.getMraidEndpoint();
        }
        return null;
    }

    public final String getMraidJsVersion() {
        String mraidEndpoint = getMraidEndpoint();
        if (mraidEndpoint != null) {
            String str = "mraid_" + Uri.parse(mraidEndpoint).getLastPathSegment();
            if (str != null) {
                return str;
            }
        }
        return "mraid_1";
    }

    public final com.vungle.ads.internal.model.g getPlacement(String str) {
        List<com.vungle.ads.internal.model.g> list = placements;
        Object obj = null;
        if (list == null) {
            return null;
        }
        for (Object obj2 : list) {
            if (Intrinsics.c(((com.vungle.ads.internal.model.g) obj2).getReferenceId(), str)) {
                obj = obj2;
                break;
            }
        }
        return (com.vungle.ads.internal.model.g) obj;
    }

    public final String getRiEndpoint() {
        ConfigPayload.f fVar = endpoints;
        if (fVar != null) {
            return fVar.getRiEndpoint();
        }
        return null;
    }

    public final long getSessionTimeout() {
        Integer sessionTimeout;
        ConfigPayload configPayload = config;
        return ((long) ((configPayload == null || (sessionTimeout = configPayload.getSessionTimeout()) == null) ? 900 : sessionTimeout.intValue())) * 1000;
    }

    public final long getSignalsSessionTimeout() {
        Integer signalSessionTimeout;
        ConfigPayload configPayload = config;
        return ((long) ((configPayload == null || (signalSessionTimeout = configPayload.getSignalSessionTimeout()) == null) ? DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS : signalSessionTimeout.intValue())) * 1000;
    }

    public final ConfigPayload.IABSettings.TcfStatus getTcfStatus() {
        ConfigPayload.i userPrivacy;
        ConfigPayload.IABSettings iab;
        ConfigPayload.IABSettings.TcfStatus.Companion aVar = ConfigPayload.IABSettings.TcfStatus.INSTANCE;
        ConfigPayload configPayload = config;
        return aVar.fromRawValue((configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (iab = userPrivacy.getIab()) == null) ? null : iab.getTcfStatus());
    }

    public final synchronized void initWithConfig$vungle_ads_release(final Context context, ConfigPayload configPayload, boolean z10, w wVar) {
        try {
            Intrinsics.h(context, "context");
            try {
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.persistence.b>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.b, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final com.vungle.ads.internal.persistence.b invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.persistence.b.class);
                    }
                });
                int iCheckConfigPayload$vungle_ads_release = checkConfigPayload$vungle_ads_release(configPayload);
                if (iCheckConfigPayload$vungle_ads_release == 0) {
                    o.Companion.e(TAG, "Config is not available.");
                    return;
                }
                if (iCheckConfigPayload$vungle_ads_release == 1) {
                    if (!z10 && configPayload != null) {
                        Long configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp();
                        long jLongValue = configLastValidatedTimestamp != null ? configLastValidatedTimestamp.longValue() : -1L;
                        ConfigPayload configPayload2 = config;
                        if (configPayload2 != null) {
                            configPayload2.setConfigLastValidatedTimestamp(Long.valueOf(jLongValue));
                        }
                        ConfigPayload configPayload3 = config;
                        if (configPayload3 != null) {
                            INSTANCE.updateCachedConfig(configPayload3, m368initWithConfig$lambda2(lazyA));
                        }
                    }
                    return;
                }
                config = configPayload;
                endpoints = configPayload != null ? configPayload.getEndpoints() : null;
                placements = configPayload != null ? configPayload.getPlacements() : null;
                int logLevel = getLogLevel();
                boolean metricsEnabled = getMetricsEnabled();
                Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$2
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
                Lazy lazyA3 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final com.vungle.ads.internal.executor.a invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.a.class);
                    }
                });
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                analyticsClient.initOrUpdate$vungle_ads_release(m369initWithConfig$lambda4(lazyA2), m370initWithConfig$lambda5(lazyA3).getLoggerExecutor(), logLevel, metricsEnabled);
                if (!z10 && configPayload != null) {
                    updateCachedConfig(configPayload, m368initWithConfig$lambda2(lazyA));
                    String configExtension = configPayload.getConfigExtension();
                    if (configExtension != null) {
                        INSTANCE.updateConfigExtension$vungle_ads_release(context, configExtension);
                    }
                }
                if (wVar != null) {
                    AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, wVar, (com.vungle.ads.internal.util.n) null, (String) null, 6, (Object) null);
                }
                PrivacyManager.INSTANCE.updateDisableAdId(shouldDisableAdId());
            } catch (Exception e11) {
                o.Companion.e(TAG, "Error while validating config: " + e11.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final boolean isCleverCacheEnabled() {
        ConfigPayload.c cleverCache;
        Boolean enabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (cleverCache = configPayload.getCleverCache()) == null || (enabled = cleverCache.getEnabled()) == null) {
            return false;
        }
        return enabled.booleanValue();
    }

    public final boolean isReportIncentivizedEnabled() {
        Boolean boolIsReportIncentivizedEnabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (boolIsReportIncentivizedEnabled = configPayload.isReportIncentivizedEnabled()) == null) {
            return false;
        }
        return boolIsReportIncentivizedEnabled.booleanValue();
    }

    public final boolean otEnabled() {
        Boolean enableOT;
        ConfigPayload configPayload = config;
        if (configPayload == null || (enableOT = configPayload.getEnableOT()) == null) {
            return true;
        }
        return enableOT.booleanValue();
    }

    public final List<com.vungle.ads.internal.model.g> placements() {
        return placements;
    }

    public final boolean retryPriorityTPATs() {
        Boolean retryPriorityTPATs;
        ConfigPayload configPayload = config;
        if (configPayload == null || (retryPriorityTPATs = configPayload.getRetryPriorityTPATs()) == null) {
            return false;
        }
        return retryPriorityTPATs.booleanValue();
    }

    public final boolean rtaDebuggingEnabled() {
        Boolean rtaDebugging;
        ConfigPayload configPayload = config;
        if (configPayload == null || (rtaDebugging = configPayload.getRtaDebugging()) == null) {
            return false;
        }
        return rtaDebugging.booleanValue();
    }

    public final void setAppId$vungle_ads_release(String applicationId2) {
        Intrinsics.h(applicationId2, "applicationId");
        applicationId = applicationId2;
    }

    public final boolean shouldDisableAdId() {
        Boolean disableAdId;
        ConfigPayload configPayload = config;
        if (configPayload == null || (disableAdId = configPayload.getDisableAdId()) == null) {
            return true;
        }
        return disableAdId.booleanValue();
    }

    public final boolean signalsDisabled() {
        Boolean signalsDisabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (signalsDisabled = configPayload.getSignalsDisabled()) == null) {
            return false;
        }
        return signalsDisabled.booleanValue();
    }

    public final void updateCachedConfig(ConfigPayload config2, com.vungle.ads.internal.persistence.b filePreferences) {
        Intrinsics.h(config2, "config");
        Intrinsics.h(filePreferences, "filePreferences");
        try {
            String str = applicationId;
            if (str == null) {
                Intrinsics.z("applicationId");
                str = null;
            }
            filePreferences.put("config_app_id", str);
            filePreferences.put("config_update_time", System.currentTimeMillis());
            kotlinx.serialization.json.a aVar = json;
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(aVar.a(), Reflection.m(ConfigPayload.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            filePreferences.put("config_response", aVar.c(bVarB, config2));
            filePreferences.apply();
        } catch (Exception e11) {
            o.Companion.e(TAG, "Exception: " + e11.getMessage() + " for updating cached config");
        }
    }

    public final void updateConfigExtension$vungle_ads_release(final Context context, String ext) {
        Intrinsics.h(context, "context");
        Intrinsics.h(ext, "ext");
        configExt = ext;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        m371updateConfigExtension$lambda1(LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.persistence.b>() { // from class: com.vungle.ads.internal.ConfigManager$updateConfigExtension$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.b, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.persistence.b invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.persistence.b.class);
            }
        })).put("config_extension", ext).apply();
    }

    public final boolean validateConfig$vungle_ads_release(ConfigPayload configPayload) {
        return ((configPayload != null ? configPayload.getEndpoints() : null) == null || !validateEndpoints$vungle_ads_release(configPayload.getEndpoints()) || configPayload.getPlacements() == null) ? false : true;
    }

    public final boolean validateEndpoints$vungle_ads_release(ConfigPayload.f fVar) {
        boolean z10;
        String adsEndpoint = fVar != null ? fVar.getAdsEndpoint() : null;
        boolean z11 = false;
        if (adsEndpoint == null || adsEndpoint.length() == 0) {
            new InvalidEndpointError(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT, "The ads endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
            z10 = false;
        } else {
            z10 = true;
        }
        String riEndpoint = fVar != null ? fVar.getRiEndpoint() : null;
        if (riEndpoint == null || riEndpoint.length() == 0) {
            new InvalidEndpointError(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT, "The ri endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        String mraidEndpoint = fVar != null ? fVar.getMraidEndpoint() : null;
        if (mraidEndpoint == null || mraidEndpoint.length() == 0) {
            new InvalidEndpointError(Sdk$SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "The mraid endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        } else {
            z11 = z10;
        }
        String metricsEndpoint = fVar != null ? fVar.getMetricsEndpoint() : null;
        if (metricsEndpoint == null || metricsEndpoint.length() == 0) {
            new InvalidEndpointError(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT, "The metrics endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        String errorLogsEndpoint = fVar != null ? fVar.getErrorLogsEndpoint() : null;
        if (errorLogsEndpoint == null || errorLogsEndpoint.length() == 0) {
            o.Companion.e(TAG, "The error logging endpoint was not provided in the config.");
        }
        return z11;
    }
}
