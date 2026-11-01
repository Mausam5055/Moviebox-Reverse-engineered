package com.cloud.tmc.integration.defaultImpl;

import android.content.Context;
import com.cloud.config.s;
import com.cloud.tmc.fps.FpsManager;
import com.cloud.tmc.fps.data.ConfigData;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.LogEBean;
import com.cloud.tmc.integration.model.MiniAppInfoConfigBean;
import com.cloud.tmc.integration.model.WhiteScreen;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.utils.CloudConfigUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.LogEProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tmc.network.NetworkConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J*\u0010\u0007\u001a\u00020\u0006\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010\r\u001a\u00020\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u001c\u0010\u0016\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001cH\u0016J\u001c\u0010\u001e\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;", "Lcom/cloud/tmc/kernel/service/ConfigService;", "()V", "TAG", "", "clearProcessCache", "", "getConfig", "T", "key", "defaultValue", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/kernel/service/ConfigService$OnConfigChangeListener;", "getConfigBoolean", "", "getConfigInt", "", "getConfigJsonArray", "Lcom/google/gson/JsonArray;", "getConfigJsonObject", "Lcom/google/gson/JsonObject;", "getConfigString", "getConfigWithProcessCache", "loadPreService", "context", "Landroid/content/Context;", "queryKey", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "Lkotlin/Function1;", "loadService", "putConfigCache", AppMeasurementSdk.ConditionalUserProperty.VALUE, "updateConfigAppinfo", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ConfigServiceImpl implements ConfigService {
    private final String TAG = "ConfigServiceImpl";

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadPreService$lambda$0(final Context context, final String str, final Function1 function1, final ConfigServiceImpl this$0) {
        Intrinsics.h(context, "$context");
        Intrinsics.h(this$0, "this$0");
        try {
            if (!CloudConfigUtils.INSTANCE.checkEnableConfigRequest(context, str, function1)) {
                TmcLogger.d(this$0.TAG, "[loadPreService]:" + str + " -> Config is not enabled");
                return;
            }
            TmcLogger.d(this$0.TAG, "[loadPreService]:" + str + " -> Config is enabled");
            MiniAppConfigHelper.INSTANCE.getConfigStoreInstance(context).loadForService(str, new s(str, context, function1, this$0) { // from class: com.cloud.tmc.integration.defaultImpl.ConfigServiceImpl$loadPreService$1$1
                final /* synthetic */ Function1<Boolean, Unit> $complete;
                final /* synthetic */ Context $context;
                private String innerQueryKey;
                final /* synthetic */ ConfigServiceImpl this$0;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.$context = context;
                    this.$complete = function1;
                    this.this$0 = this$0;
                    this.innerQueryKey = (str == null || str.length() == 0) ? CloudConfigUtils.DEFAULT_QUERY_KEY : str;
                }

                public final String getInnerQueryKey() {
                    return this.innerQueryKey;
                }

                @Override // com.cloud.config.s
                public void onLoadDataFailure(int code, String message) {
                    Intrinsics.h(message, "message");
                    CloudConfigUtils.INSTANCE.updateCloudConfigRequestStatus(this.$context, this.innerQueryKey, false);
                    Function1<Boolean, Unit> function2 = this.$complete;
                    if (function2 != null) {
                        function2.invoke(Boolean.FALSE);
                    }
                }

                @Override // com.cloud.config.s
                public void onLoadDataSuccess() {
                    CloudConfigUtils.INSTANCE.updateCloudConfigRequestStatus(this.$context, this.innerQueryKey, true);
                    boolean configBoolean = this.this$0.getConfigBoolean(LauncherMiniAppConfigHelper.KEY_CLOSE_MINI_APP_SDK, false);
                    TmcLogger.e(this.this$0.TAG, "loadPreService closeSDK = " + configBoolean);
                    Function1<Boolean, Unit> function2 = this.$complete;
                    if (function2 != null) {
                        function2.invoke(Boolean.TRUE);
                    }
                    this.this$0.updateConfigAppinfo(this.$context);
                }

                public final void setInnerQueryKey(String str2) {
                    Intrinsics.h(str2, "<set-?>");
                    this.innerQueryKey = str2;
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this$0.TAG, "[ConfigService]: Failed to loadPreService config ", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadService$lambda$5(final Context context, final String str, final Function1 function1, final ConfigServiceImpl this$0) {
        Intrinsics.h(context, "$context");
        Intrinsics.h(this$0, "this$0");
        if (!CloudConfigUtils.INSTANCE.checkEnableConfigRequest(context, str, function1)) {
            TmcLogger.d(this$0.TAG, "[loadService]: " + str + " ->Config is not enabled");
            return;
        }
        TmcLogger.d(this$0.TAG, "[loadService]: " + str + " -> Config is enabled");
        try {
            MiniAppConfigHelper.INSTANCE.getConfigStoreInstance(context).loadForService(str, new s(str, context, function1, this$0) { // from class: com.cloud.tmc.integration.defaultImpl.ConfigServiceImpl$loadService$1$1
                final /* synthetic */ Function1<Boolean, Unit> $complete;
                final /* synthetic */ Context $context;
                private String innerQueryKey;
                final /* synthetic */ ConfigServiceImpl this$0;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.$context = context;
                    this.$complete = function1;
                    this.this$0 = this$0;
                    this.innerQueryKey = (str == null || str.length() == 0) ? CloudConfigUtils.DEFAULT_QUERY_KEY : str;
                }

                public final String getInnerQueryKey() {
                    return this.innerQueryKey;
                }

                @Override // com.cloud.config.s
                public void onLoadDataFailure(int code, String message) {
                    Intrinsics.h(message, "message");
                    CloudConfigUtils.INSTANCE.updateCloudConfigRequestStatus(this.$context, this.innerQueryKey, false);
                    Function1<Boolean, Unit> function2 = this.$complete;
                    if (function2 != null) {
                        function2.invoke(Boolean.FALSE);
                    }
                }

                @Override // com.cloud.config.s
                public void onLoadDataSuccess() {
                    CloudConfigUtils.INSTANCE.updateCloudConfigRequestStatus(this.$context, this.innerQueryKey, true);
                    MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
                    String configTargetStr = miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_WHITE_SCREEN, MiniAppConfigHelper.DEFAULT_WHITE_SCREEN);
                    String configTargetStr2 = miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_FPS, MiniAppConfigHelper.DEFAULT_FPS);
                    try {
                        WhiteScreen whiteScreen = (WhiteScreen) new Gson().fromJson(configTargetStr, WhiteScreen.class);
                        ((IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class)).initConfig(whiteScreen.getGrayScale(), Long.valueOf(whiteScreen.getCheckNowDelay()), whiteScreen.getCheckIntervalArray());
                        FpsManager fpsManager = FpsManager.INSTANCE;
                        Object objFromJson = new Gson().fromJson(configTargetStr2, (Class<Object>) ConfigData.class);
                        Intrinsics.g(objFromJson, "Gson().fromJson(\n       …                        )");
                        fpsManager.saveConfig((ConfigData) objFromJson);
                    } catch (Exception e11) {
                        TmcLogger.e(e11.getMessage());
                    }
                    MiniAppConfigHelper miniAppConfigHelper2 = MiniAppConfigHelper.INSTANCE;
                    ((LogEProxy) TmcProxy.get(LogEProxy.class)).saveConfig(((LogEBean) new Gson().fromJson(miniAppConfigHelper2.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_LOG_E_REPORT, MiniAppConfigHelper.DEFAULT_LOG_E_REPORT), LogEBean.class)).getGrayScale());
                    TmcLogger.e("ConfigService", "loadService closeSDK = " + this.this$0.getConfigBoolean(LauncherMiniAppConfigHelper.KEY_CLOSE_MINI_APP_SDK, false));
                    Function1<Boolean, Unit> function2 = this.$complete;
                    if (function2 != null) {
                        function2.invoke(Boolean.TRUE);
                    }
                    int configTargetInt = miniAppConfigHelper2.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_NETWORK_IMPROVE_NUM, 0);
                    int i11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(this.$context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.KEY_NETWORK_IMPROVE);
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(this.$context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.KEY_NETWORK_IMPROVE, configTargetInt);
                    if (i11 != configTargetInt) {
                        NetworkConfig.INSTANCE.setNetworkImproveEnable(System.currentTimeMillis() % ((long) 10) < ((long) configTargetInt));
                    }
                    this.this$0.updateConfigAppinfo(this.$context);
                }

                public final void setInnerQueryKey(String str2) {
                    Intrinsics.h(str2, "<set-?>");
                    this.innerQueryKey = str2;
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this$0.TAG, "[ConfigService]: Failed to loadPreService config ", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateConfigAppinfo(final Context context) {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.c
                @Override // java.lang.Runnable
                public final void run() {
                    ConfigServiceImpl.updateConfigAppinfo$lambda$4(this.f23319a, context);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.TAG, "updateConfigAppinfo", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateConfigAppinfo$lambda$4(ConfigServiceImpl this$0, Context context) {
        String json;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        try {
            Object objFromJson = GsonUtils.fromJson(this$0.getConfigString(LauncherMiniAppConfigHelper.KEY_MINIAPP_CONFIG_APPINFO, "[]"), new TypeToken<ArrayList<MiniAppInfoConfigBean>>() { // from class: com.cloud.tmc.integration.defaultImpl.ConfigServiceImpl$updateConfigAppinfo$1$list$1$1
            }.getType());
            List<MiniAppInfoConfigBean> arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            for (MiniAppInfoConfigBean miniAppInfoConfigBean : arrayList) {
                String appId = miniAppInfoConfigBean.getAppId();
                try {
                    AppInfoModel appInfo = miniAppInfoConfigBean.getAppInfo();
                    if (appInfo == null || (json = TmcGsonUtilsKt.toJson(appInfo)) == null) {
                        json = "";
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(this$0.TAG, "loadPreService", th2);
                }
                if (appId != null) {
                    TmcLogger.d(this$0.TAG, "appid->" + appId + ",appinfo->" + json);
                    KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(appId);
                    sb2.append("_config");
                    kVStorageProxy.putString(context, appId, sb2.toString(), json);
                }
            }
        } catch (Throwable th3) {
            TmcLogger.e(this$0.TAG, "Failed to parse config", th3);
        }
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void clearProcessCache() {
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public String getConfig(String key, String defaultValue) {
        return "";
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public <T> void getConfig(String key, String defaultValue, ConfigService.OnConfigChangeListener listener) {
        Intrinsics.h(key, "key");
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public boolean getConfigBoolean(String key, boolean defaultValue) {
        return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(key, defaultValue);
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public int getConfigInt(String key, int defaultValue) {
        return MiniAppConfigHelper.INSTANCE.getConfigTargetInt(key, defaultValue);
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public JsonArray getConfigJsonArray(String key) {
        JsonElement string;
        Intrinsics.h(key, "key");
        String configString = getConfigString(key, "");
        try {
            if (configString.length() == 0 || (string = JsonParser.parseString(configString)) == null) {
                return null;
            }
            return string.getAsJsonArray();
        } catch (Throwable th2) {
            TmcLogger.e(this.TAG, "[ConfigService]: Failed to parse config", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public JsonObject getConfigJsonObject(String key) {
        JsonElement string;
        Intrinsics.h(key, "key");
        String configString = getConfigString(key, "");
        try {
            if (configString.length() == 0 || (string = JsonParser.parseString(configString)) == null) {
                return null;
            }
            return string.getAsJsonObject();
        } catch (Throwable th2) {
            TmcLogger.e(this.TAG, "[ConfigService]: Failed to parse config", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public String getConfigString(String key, String defaultValue) {
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        return MiniAppConfigHelper.INSTANCE.getConfigTargetStr(key, defaultValue);
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public String getConfigWithProcessCache(String key, String defaultValue) {
        return "";
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void loadPreService(Context context) {
        Intrinsics.h(context, "context");
        loadPreService(context, "");
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void loadPreService(Context context, String queryKey) {
        Intrinsics.h(context, "context");
        loadPreService(context, queryKey, null);
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void loadPreService(final Context context, final String queryKey, final Function1<? super Boolean, Unit> complete) {
        Intrinsics.h(context, "context");
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.a
                @Override // java.lang.Runnable
                public final void run() {
                    ConfigServiceImpl.loadPreService$lambda$0(context, queryKey, complete, this);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.TAG, th2);
        }
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void loadService(Context context) {
        Intrinsics.h(context, "context");
        loadService(context, "");
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void loadService(Context context, String queryKey) {
        Intrinsics.h(context, "context");
        loadService(context, queryKey, null);
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void loadService(final Context context, final String queryKey, final Function1<? super Boolean, Unit> complete) {
        Intrinsics.h(context, "context");
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.b
                @Override // java.lang.Runnable
                public final void run() {
                    ConfigServiceImpl.loadService$lambda$5(context, queryKey, complete, this);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.TAG, "loadService", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.service.ConfigService
    public void putConfigCache(String key, String value) {
    }
}
