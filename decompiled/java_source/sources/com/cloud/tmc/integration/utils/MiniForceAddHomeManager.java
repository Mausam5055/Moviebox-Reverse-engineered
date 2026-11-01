package com.cloud.tmc.integration.utils;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.callback.IAllowMFAHListener;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\tJ\u0010\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u0015\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u0007J\u0010\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001b\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001c\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001d\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010!\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\"\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\tJ\u0010\u0010#\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u000e\u0010$\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004J\u0018\u0010%\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010&\u001a\u00020\u000bJ\u0010\u0010'\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0010\u0010(\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006)"}, d2 = {"Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;", "", "()V", "TAG", "", "allMFAHMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;", "hideLoaingMap", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "interceptMFAHMap", "", "interceptPrivacyMap", "interceptRealMFAHMap", "getInterceptRealMFAHMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "addHideLoadingCallback", "", "appId", "callback", "addInterectMFAH", "addMFAHListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "checkForceAddHome", "startParam", "Landroid/os/Bundle;", "checkInterect", "checkInterectMFAH", "checkInterectMFAHWithBookPrivacy", "checkPrivacyIntercept", "injectStartSpecialParam", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel;", "miniAppConfigModel", "noticeClickAllowBtn", "notifyHideLoading", "removeAllMfahListener", "removeHideLoadingCallback", "removeInterectMFAH", "reportCacheData", "removeMFAHListener", "reportAthenaData", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniForceAddHomeManager {
    public static final MiniForceAddHomeManager INSTANCE = new MiniForceAddHomeManager();
    private static final String TAG = "MiniForceAddHomeManager";
    private static final ConcurrentHashMap<String, Boolean> interceptRealMFAHMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Boolean> interceptMFAHMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Boolean> interceptPrivacyMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, IAllowMFAHListener> allMFAHMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, BridgeCallback> hideLoaingMap = new ConcurrentHashMap<>();

    private MiniForceAddHomeManager() {
    }

    public static /* synthetic */ void notifyHideLoading$default(MiniForceAddHomeManager miniForceAddHomeManager, String str, BridgeCallback bridgeCallback, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bridgeCallback = null;
        }
        miniForceAddHomeManager.notifyHideLoading(str, bridgeCallback);
    }

    public final void addHideLoadingCallback(String appId, BridgeCallback callback) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        try {
            ConcurrentHashMap<String, BridgeCallback> concurrentHashMap = hideLoaingMap;
            if (concurrentHashMap.get(appId) != null) {
                TmcLogger.d(TAG, "autoRemoveHideLoadingCallback " + appId);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("autoClose", Boolean.TRUE);
                callback.sendFailResponse(jsonObject);
                callback.close();
            }
            TmcLogger.d(TAG, "addHideLoadingCallback " + appId);
            concurrentHashMap.put(appId, callback);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "addHideLoadingCallback", th2);
        }
    }

    public final void addInterectMFAH(String appId) {
        try {
            TmcLogger.d(TAG, "addInterectMFAH");
            if (appId != null && appId.length() != 0) {
                interceptMFAHMap.put(appId, Boolean.TRUE);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void addMFAHListener(String appId, IAllowMFAHListener listener) {
        Intrinsics.h(listener, "listener");
        if (appId != null) {
            try {
                if (appId.length() == 0) {
                    return;
                }
                allMFAHMap.put(appId, listener);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "addMFAHListener", th2);
            }
        }
    }

    public final boolean checkForceAddHome(Bundle startParam) {
        String string;
        List arrayList;
        String string2;
        try {
            MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
            boolean configTargetBool = miniAppConfigHelper.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_FORCE_ADD_HOME, true);
            String str = "";
            if (startParam == null || (string = startParam.getString("mfah")) == null) {
                string = "";
            }
            if (startParam != null && (string2 = startParam.getString("appId")) != null) {
                str = string2;
            }
            if (string.length() > 0 && Intrinsics.c(string, "1")) {
                TmcLogger.d(TAG, "checkForceAddHome mfah -> true");
                if (configTargetBool) {
                    addInterectMFAH(str);
                    interceptRealMFAHMap.put(str, Boolean.TRUE);
                }
                return true;
            }
            if (str.length() > 0) {
                try {
                    Object objFromJson = GsonUtils.fromJson(miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRIVACY_FORCE_ADD_HOME_LIST, "[]"), (Class<Object>) List.class);
                    arrayList = objFromJson instanceof List ? (List) objFromJson : null;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(TAG, th2);
                    arrayList = new ArrayList();
                }
                if (arrayList.contains(str)) {
                    TmcLogger.d(TAG, "checkForceAddHome appId in mfahList");
                    if (configTargetBool) {
                        addInterectMFAH(str);
                        interceptRealMFAHMap.put(str, Boolean.TRUE);
                    }
                    return true;
                }
                if (checkPrivacyIntercept(str)) {
                    interceptPrivacyMap.put(str, Boolean.TRUE);
                }
            }
            TmcLogger.d(TAG, "checkForceAddHome mfah -> false");
            return false;
        } catch (Throwable th3) {
            TmcLogger.e(TAG, "checkForceAddHome", th3);
            return false;
        }
    }

    public final boolean checkInterect(String appId) {
        try {
            Boolean bool = interceptMFAHMap.get(appId);
            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
            Boolean bool2 = interceptPrivacyMap.get(appId);
            boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
            boolean z10 = zBooleanValue || zBooleanValue2;
            TmcLogger.d(TAG, "checkInterectmfah: " + appId + " -> mfahStatus -> " + zBooleanValue + ",privacyStatus ->" + zBooleanValue2);
            return z10;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean checkInterectMFAH(String appId) {
        try {
            Boolean bool = interceptMFAHMap.get(appId);
            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
            TmcLogger.d(TAG, "checkInterectmfah: " + appId + " -> mfahStatus -> " + zBooleanValue);
            return zBooleanValue;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean checkInterectMFAHWithBookPrivacy(String appId) {
        try {
            Boolean bool = interceptMFAHMap.get(appId);
            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
            if (zBooleanValue && !DeviceUtil.INSTANCE.getIsNewUserStatus()) {
                Boolean bool2 = interceptRealMFAHMap.get(appId);
                if (!(bool2 != null ? bool2.booleanValue() : false)) {
                    zBooleanValue = false;
                }
            }
            TmcLogger.d(TAG, "checkInterectmfah: " + appId + " -> mfahStatus -> " + zBooleanValue);
            return zBooleanValue;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean checkPrivacyIntercept(String appId) {
        try {
            Boolean first = ((ReportProxy) TmcProxy.get(ReportProxy.class)).checkReportIntercept(appId, Boolean.FALSE).getFirst();
            Intrinsics.g(first, "checkReportIntercept.first");
            return first.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public final ConcurrentHashMap<String, Boolean> getInterceptRealMFAHMap() {
        return interceptRealMFAHMap;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001a A[Catch: all -> 0x0010, TRY_LEAVE, TryCatch #0 {all -> 0x0010, blocks: (B:4:0x0007, B:10:0x0014, B:12:0x001a), top: B:16:0x0007 }] */
    public final MiniAppConfigModel injectStartSpecialParam(MiniAppConfigModel miniAppConfigModel, Bundle startParam) {
        String string;
        Intrinsics.h(miniAppConfigModel, "miniAppConfigModel");
        if (startParam != null) {
            try {
                string = startParam.getString("appId");
                if (string == null) {
                    string = "";
                    if (checkInterect(string)) {
                        miniAppConfigModel.setMfah("1");
                    }
                } else if (checkInterect(string)) {
                    miniAppConfigModel.setMfah("1");
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "injectStartSpecialParam", th2);
            }
        } else {
            string = "";
            if (checkInterect(string)) {
                miniAppConfigModel.setMfah("1");
            }
        }
        return miniAppConfigModel;
    }

    public final void noticeClickAllowBtn(String appId) {
        try {
            TmcLogger.d(TAG, "noticeClickAllowBtn " + appId);
            IAllowMFAHListener iAllowMFAHListener = allMFAHMap.get(appId);
            if (iAllowMFAHListener != null) {
                iAllowMFAHListener.mfahAllow(appId);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void notifyHideLoading(String appId, BridgeCallback callback) {
        Intrinsics.h(appId, "appId");
        if (callback == null) {
            try {
                callback = hideLoaingMap.get(appId);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "notifyHideLoading", th2);
                return;
            }
        }
        if (callback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("isHideLoding", Boolean.TRUE);
            callback.sendSuccessResponse(jsonObject);
            callback.close();
            removeHideLoadingCallback(appId);
            return;
        }
        TmcLogger.d(TAG, "notifyHideLoading " + appId + " not found");
    }

    public final void removeAllMfahListener(String appId) {
        try {
            TmcLogger.d(TAG, "removeAllMfahListener -> appId: ->" + appId);
            if (appId != null && appId.length() != 0) {
                allMFAHMap.remove(appId);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void removeHideLoadingCallback(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            hideLoaingMap.remove(appId);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "removeHideLoadingCallback", th2);
        }
    }

    public final void removeInterectMFAH(String appId, boolean reportCacheData) {
        try {
            TmcLogger.d(TAG, "removeInterectMFAH " + appId);
            TypeIntrinsics.d(interceptMFAHMap).remove(appId);
            TypeIntrinsics.d(interceptPrivacyMap).remove(appId);
            TypeIntrinsics.d(interceptRealMFAHMap).remove(appId);
            removeHideLoadingCallback(appId == null ? "" : appId);
            if (reportCacheData) {
                reportAthenaData(appId);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void removeMFAHListener(String appId) {
        try {
            TmcLogger.d(TAG, "removeMFAHListener -> appId: ->" + appId);
            if (appId != null && appId.length() != 0) {
                removeAllMfahListener(appId);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void reportAthenaData(String appId) {
        try {
            ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
            if (appId == null) {
                appId = "";
            }
            reportProxy.mfahCacheDataReport(appId);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "reportAthenaData", th2);
        }
    }
}
