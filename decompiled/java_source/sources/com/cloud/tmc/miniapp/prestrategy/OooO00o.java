package com.cloud.tmc.miniapp.prestrategy;

import android.app.Application;
import android.content.Context;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.FocusUpdatePreConfig;
import com.cloud.tmc.integration.model.LauncherPreStrategyBaseModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.IResponseCallback;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.ResourceUtils;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public static final OooO00o OooO00o = new OooO00o();
    public static final AtomicBoolean OooO0O0 = new AtomicBoolean(false);
    public static LauncherPreStrategyBaseModel OooO0OO;

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.prestrategy.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0341OooO00o implements IResponseCallback {
        public final /* synthetic */ Context OooO00o;

        public C0341OooO00o(Context context) {
            this.OooO00o = context;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
        public void onFailure(String str, String str2, String str3) {
            OooO00o.OooO0O0.set(false);
            TmcLogger.e("PreStrategyConfigManager", "errorcode ->" + str + " , errMsg -> " + str2);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
        public void onSuccess(int i11, String str, Map<String, String> map, List<Cookie> list, String str2) {
            OooO00o.OooO0O0.set(false);
            TmcLogger.d("PreStrategyConfigManager", "requestStrategyConfig -> " + str);
            if (i11 == 200) {
                try {
                    Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
                    if (application$com_cloud_tmc_miniapp_sdk != null) {
                        Context context = this.OooO00o;
                        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                        if (str == null) {
                            str = "";
                        }
                        kVStorageProxy.putString(application$com_cloud_tmc_miniapp_sdk, "miniPreStrategyConfig", "miniPreCdnConfig", str);
                        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, "miniPreStrategyConfig", "miniRequestConfigDiff", System.currentTimeMillis());
                        OooO00o.OooO0OO = OooO00o.OooO00o.OooO00o(application$com_cloud_tmc_miniapp_sdk);
                    }
                } catch (Throwable th2) {
                    OooO00o oooO00o = OooO00o.OooO00o;
                    TmcLogger.e("PreStrategyConfigManager", th2);
                }
            }
        }
    }

    public final LauncherPreStrategyBaseModel OooO00o(Context context) {
        LauncherPreStrategyBaseModel launcherPreStrategyBaseModel = null;
        try {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "miniPreStrategyConfig", "miniPreCdnConfig");
            String str = "";
            if (string == null) {
                string = "";
            }
            if (string.length() != 0 || (string = ResourceUtils.readAssets2String("preStrategyConfig.json")) != null) {
                str = string;
            }
            if (str.length() <= 0) {
                return null;
            }
            LauncherPreStrategyBaseModel launcherPreStrategyBaseModel2 = (LauncherPreStrategyBaseModel) GsonUtils.fromJson(str, LauncherPreStrategyBaseModel.class);
            try {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, "miniPreStrategyConfig", "miniRefreshConfigDiff", System.currentTimeMillis());
                return launcherPreStrategyBaseModel2;
            } catch (Throwable th2) {
                th = th2;
                launcherPreStrategyBaseModel = launcherPreStrategyBaseModel2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        TmcLogger.e("PreStrategyConfigManager", th);
        return launcherPreStrategyBaseModel;
    }

    public final LauncherPreStrategyBaseModel OooO0O0(Context context) {
        if (context == null) {
            TmcLogger.e("PreStrategyConfigManager", "getPreStrategyConfig context is null ");
            return null;
        }
        if (OooO0OO == null) {
            OooO0OO = OooO00o(context);
        } else {
            if (System.currentTimeMillis() - ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, "miniPreStrategyConfig", "miniRefreshConfigDiff") > TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL) {
                OooO0OO = OooO00o(context);
            }
        }
        try {
            if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_ZERO_SCREEN_UPDATE, false)) {
                OooO0OO(context);
                TmcLogger.d("PreStrategyConfigManager", "getPreStrategyConfig enableStatus is true");
            }
        } catch (Throwable th2) {
            TmcLogger.e("PreStrategyConfigManager", th2);
        }
        return OooO0OO;
    }

    public final void OooO0OO(Context context) {
        int configTargetInt;
        String configVerion;
        Intrinsics.h(context, "context");
        if (OooO0OO.OooO00o.OooO0O0()) {
            TmcLogger.e("PreStrategyConfigManager", "execute new prefetch strategy.");
            return;
        }
        AtomicBoolean atomicBoolean = OooO0O0;
        if (atomicBoolean.get()) {
            TmcLogger.d("PreStrategyConfigManager", "requestStrategyConfig is refreshing");
            return;
        }
        boolean zCompareVersion = true;
        atomicBoolean.set(true);
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, "miniPreStrategyConfig", "miniRequestConfigDiff");
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_UPDATE_PRE_CONFIG_INTERVAL, 24) * 3600;
        } catch (Throwable unused) {
            configTargetInt = 86400;
        }
        long j12 = ((long) configTargetInt) * 1000;
        try {
            if (OooO0OO != null) {
                FocusUpdatePreConfig focusUpdatePreConfig = (FocusUpdatePreConfig) GsonUtils.getGson().fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_FORCE_UPDATE_PRE_CONFIG, LauncherMiniAppConfigHelper.DEFAULT_FORCE_UPDATE_PRE_CONFIG), FocusUpdatePreConfig.class);
                if (focusUpdatePreConfig == null) {
                    focusUpdatePreConfig = new FocusUpdatePreConfig(false, "0.0.0");
                }
                if (focusUpdatePreConfig.getEnable()) {
                    MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                    String version = focusUpdatePreConfig.getVersion();
                    LauncherPreStrategyBaseModel launcherPreStrategyBaseModel = OooO0OO;
                    if (launcherPreStrategyBaseModel == null || (configVerion = launcherPreStrategyBaseModel.getConfigVerion()) == null) {
                        configVerion = "";
                    }
                    zCompareVersion = miniAppLaunch.compareVersion(version, configVerion);
                } else {
                    zCompareVersion = false;
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("PreStrategyConfigManager", th2);
        }
        if (zCompareVersion || System.currentTimeMillis() - j11 >= j12) {
            String preStrategyCdnUrl = ((IConfigStrategyProxy) TmcProxy.get(IConfigStrategyProxy.class)).getPreStrategyCdnUrl();
            TmcLogger.e("PreStrategyConfigManager", preStrategyCdnUrl);
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(preStrategyCdnUrl, null, null, Boolean.FALSE, new C0341OooO00o(context));
            return;
        }
        OooO0O0.set(false);
        TmcLogger.e("PreStrategyConfigManager", "requestStrategyConfig diff < " + j12 + ",latestRequest ->" + j11);
    }
}
