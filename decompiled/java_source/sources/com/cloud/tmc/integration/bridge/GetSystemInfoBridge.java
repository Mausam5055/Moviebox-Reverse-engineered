package com.cloud.tmc.integration.bridge;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.LauncherMMkvStorageHelper;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.UniqueIdBean;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.params.TmcParams;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.DisplayUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.MccMncUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.MiniRequestUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.ConvertUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.PathUtils;
import com.cloud.tmc.miniutils.util.SDCardUtils;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class GetSystemInfoBridge implements BridgeExtension {
    private static final String TAG = "GetSystemInfoBridge";
    private boolean mBatteryBroadcastRegistered = false;
    private int mCachedBatteryPercentage;

    private class BatteryBroadcastReceiver extends BroadcastReceiver {
        private BatteryBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int batteryPercentage = GetSystemInfoBridge.this.parseBatteryPercentage(intent);
            if (batteryPercentage > 0) {
                GetSystemInfoBridge.this.mCachedBatteryPercentage = batteryPercentage;
            }
            GetSystemInfoBridge.this.mBatteryBroadcastRegistered = false;
            context.unregisterReceiver(this);
            TmcLogger.d(GetSystemInfoBridge.TAG, "ACTION_BATTERY_CHANGED..." + GetSystemInfoBridge.this.mCachedBatteryPercentage);
        }
    }

    private int getCurrentBatteryPercentage(Context context) {
        if (this.mBatteryBroadcastRegistered) {
            return this.mCachedBatteryPercentage;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            Intent intentRegisterReceiver = context.registerReceiver(new BatteryBroadcastReceiver(), intentFilter);
            this.mBatteryBroadcastRegistered = true;
            int batteryPercentage = parseBatteryPercentage(intentRegisterReceiver);
            if (batteryPercentage > 0) {
                this.mCachedBatteryPercentage = batteryPercentage;
            }
            return this.mCachedBatteryPercentage;
        } catch (Exception e11) {
            TmcLogger.e("getCurrentBatteryPercentage...e=" + e11);
            return this.mCachedBatteryPercentage;
        }
    }

    private int getHeight(Page page, Activity activity, float f11, DisplayMetrics displayMetrics) {
        IRender render;
        int iRound = displayMetrics != null ? Math.round((displayMetrics.heightPixels - DisplayUtils.getTitleAndStatusBarHeight(activity)) / f11) : 0;
        if (page == null || (render = page.getRender()) == null || render.getView() == null) {
            return iRound;
        }
        int iRound2 = render.getView() != null ? Math.round(render.getView().getHeight() / f11) : 0;
        return iRound2 > 0 ? iRound2 : iRound;
    }

    private static String getInternalMemorySize() {
        return ConvertUtils.byte2FitMemorySize(SDCardUtils.getInternalTotalSize(), 2);
    }

    private JsonObject getSystemInfoInner(Context context, App app, Page page) {
        float f11;
        int iRound;
        JsonObject jsonObject = new JsonObject();
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Activity activity = (Activity) app.getAppContext().getContext();
        if (displayMetrics != null) {
            f11 = displayMetrics.density;
            iRound = Math.round(displayMetrics.widthPixels / f11);
            jsonObject.addProperty("screenWidth", Integer.valueOf(displayMetrics.widthPixels));
            jsonObject.addProperty("screenHeight", Integer.valueOf(displayMetrics.heightPixels));
        } else {
            f11 = 0.0f;
            iRound = 0;
        }
        jsonObject.addProperty(TmcConstants.KEY_LANGUAGE, Locale.getDefault().getLanguage());
        jsonObject.addProperty("model", Build.MANUFACTURER + " " + Build.MODEL);
        jsonObject.addProperty("pixelRatio", Float.valueOf(f11));
        jsonObject.addProperty("windowWidth", Integer.valueOf(iRound));
        jsonObject.addProperty("windowHeight", Integer.valueOf(getHeight(page, activity, f11, displayMetrics)));
        jsonObject.addProperty("system", Build.VERSION.RELEASE);
        jsonObject.addProperty(TrackingKey.PLATFORM, "Android");
        jsonObject.addProperty("apiLevel", Integer.valueOf(Build.VERSION.SDK_INT));
        jsonObject.addProperty(PlaceTypes.STORAGE, getInternalMemorySize());
        jsonObject.addProperty("currentBattery", getCurrentBatteryPercentage(context) + "%");
        jsonObject.addProperty("brand", Build.BRAND);
        String frameworkVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion();
        if (!TextUtils.isEmpty(frameworkVersion)) {
            jsonObject.addProperty("frameworkversion", frameworkVersion);
        }
        jsonObject.addProperty("packageName", context.getPackageName());
        jsonObject.addProperty("gaId", DeviceUtil.getGAId());
        jsonObject.addProperty("GAId", DeviceUtil.getGAId());
        jsonObject.addProperty("mcc", MccMncUtils.getMcc(context));
        jsonObject.addProperty(PlaceTypes.COUNTRY, Locale.getDefault().getCountry());
        jsonObject.addProperty("sdkVersion", ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion());
        jsonObject.addProperty("brandVersion", ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion());
        try {
            jsonObject.addProperty("statusBarHeight", Integer.valueOf(MiniBarUtils.getStatusHeight()));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        try {
            jsonObject.addProperty("isRtl", Boolean.valueOf(resources.getConfiguration().getLayoutDirection() == 1));
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
        jsonObject.addProperty(TmcParams.CAPSULE_HEIGHT, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_HEIGHT)));
        jsonObject.addProperty(TmcParams.CAPSULE_WIDTH, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_WIDTH)));
        jsonObject.addProperty(TmcParams.CAPSULE_TRANSLATION_X, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_TRANSLATION_X)));
        jsonObject.addProperty(TmcParams.CAPSULE_TRANSLATION_Y, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_TRANSLATION_Y)));
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int parseBatteryPercentage(Intent intent) {
        if (!"android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
            return -1;
        }
        return (intent.getIntExtra(PermissionConstant.level, 0) * 100) / intent.getIntExtra("scale", 100);
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void clearSharpNewsCommonData(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        try {
            if (app == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            Context context = appContext.getContext();
            if (context == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            } else {
                TmcLogger.d(TAG, "clearSharpNewsSyncData");
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(context, TmcConstants.SHARP_NEWS_SYNC_DATA_STORAGE);
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse();
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "clearSharpNewsSyncData error", th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getByteAppRecommendList(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("recommendList", "").build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getCountryByIso(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        String countryCodeBySim = MccMncUtils.getCountryCodeBySim(app.getAppContext().getContext());
        TmcLogger.d(TAG, "countryCode:  " + countryCodeBySim);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("countryCode", countryCodeBySim).build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getCountryInfo(@BindingNode(App.class) App app, @BindingParam({NativeComponentConstants.KEY_COMPONENT_TYPE}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        String countryCodeByLang;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Context context = app.getAppContext().getContext();
        String mcc = MccMncUtils.getMcc(context);
        String mnc = MccMncUtils.getMnc(context);
        String str2 = TmcConstants.KEY_SIM;
        if (TmcConstants.KEY_SIM.equalsIgnoreCase(str)) {
            countryCodeByLang = MccMncUtils.getCountryCodeBySim(context);
        } else {
            if (TmcConstants.KEY_LANGUAGE.equalsIgnoreCase(str)) {
                countryCodeByLang = MccMncUtils.getCountryCodeByLang(context);
            } else {
                String countryCodeBySim = MccMncUtils.getCountryCodeBySim(context);
                if (TextUtils.isEmpty(countryCodeBySim)) {
                    countryCodeByLang = MccMncUtils.getCountryCodeByLang(context);
                } else {
                    countryCodeByLang = countryCodeBySim;
                }
            }
            str2 = TmcConstants.KEY_LANGUAGE;
        }
        TmcLogger.d(TAG, "CountryCode: " + countryCodeByLang + " Mcc: " + mcc + " Mnc: " + mnc);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("countryCode", countryCodeByLang).addProperty("mcc", mcc).addProperty("mnc", mnc).addProperty(EventConstants.KEY_SOURCE, str2).build());
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0053 A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #0 {all -> 0x004b, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x0015, B:12:0x001d, B:15:0x004d, B:17:0x0053), top: B:22:0x0004 }] */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getMiniappResumedStatus(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app != null) {
            try {
                if (app.getAppContext() != null && app.getAppContext().getContext() != null) {
                    ICheckMiniAppLifecycleCallback appLifecycleCallback = app.getAppLifecycleCallback();
                    if (appLifecycleCallback == null) {
                        bridgeCallback.sendFailResponse();
                    } else if (bridgeCallback != null) {
                        boolean zCheckIsForeground = appLifecycleCallback.checkIsForeground();
                        TmcLogger.d(TAG, "isResumed -> " + zCheckIsForeground);
                        bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("isResumed", Boolean.valueOf(zCheckIsForeground)).build());
                    }
                } else if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                bridgeCallback.sendFailResponse();
            }
        } else if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getNewsOptionPopShow(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (appContext.getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        LauncherMMkvStorageHelper launcherMMkvStorageHelper = LauncherMMkvStorageHelper.INSTANCE;
        boolean newsOptionPopShow = launcherMMkvStorageHelper.getNewsOptionPopShow();
        TmcLogger.d(TAG, "getNewsOptionPopShow:" + newsOptionPopShow);
        String selectLanguage = launcherMMkvStorageHelper.getSelectLanguage();
        TmcLogger.d(TAG, "getSelectLanguage:" + selectLanguage);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("isShow", Boolean.valueOf(newsOptionPopShow));
        jsonObject.addProperty("selectLanguage", selectLanguage);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:12:0x0027 A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #0 {all -> 0x002b, blocks: (B:3:0x0002, B:5:0x0008, B:8:0x0013, B:10:0x0021, B:12:0x0027), top: B:18:0x0002 }] */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getOdId(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app != null) {
            try {
                if (app.getAppContext() != null && app.getAppContext().getContext() != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("odId", "");
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse(jsonObject);
                    }
                } else if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            } catch (Throwable unused) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            }
        } else if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getOneId(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(app.getAppContext().getContext(), LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.ATHENA_VAID);
        if (TextUtils.isEmpty(string)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("oneId", string);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getSdCardDownloadPath(@BindingCallback BridgeCallback bridgeCallback) {
        String externalDownloadsPath = PathUtils.getExternalDownloadsPath();
        TmcLogger.d(TAG, "getSdCardDownloadPath: " + externalDownloadsPath);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("sdCardPath", externalDownloadsPath).build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getSdCardPath(@BindingCallback BridgeCallback bridgeCallback) {
        String externalStoragePath = PathUtils.getExternalStoragePath();
        TmcLogger.d(TAG, "getSdCardPath: " + externalStoragePath);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("sdCardPath", externalStoragePath).build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getSelectLanguage(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (appContext.getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        String selectLanguage = LauncherMMkvStorageHelper.INSTANCE.getSelectLanguage();
        TmcLogger.d(TAG, "from selectLanguage:" + selectLanguage);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("selectLanguage", selectLanguage);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getSharpNewsCommonData(@BindingNode(App.class) App app, @BindingParam({"syncKey"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        try {
            if (app == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            Context context = appContext.getContext();
            if (context == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("syncData", ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, TmcConstants.SHARP_NEWS_SYNC_DATA_STORAGE, str)).build();
            TmcLogger.d(TAG, "getSharpNewsSyncData" + jsonObjectBuild.toString());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(jsonObjectBuild);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getSharpNewsSyncData error", th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getSharpNewsConfigToH5(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else if (appContext.getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            boolean configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_SHARP_NEWS_VIDEO, true);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(MBridgeConstans.NATIVE_VIDEO_SUPPORT, Boolean.valueOf(configTargetBool));
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void getSystemInfo(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback, @BindingParam(booleanDefault = true, value = {"needCache"}) boolean z10) {
        TmcLogger.d(TAG, "getSystemInfo");
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        JsonObject systemInfoInner = getSystemInfoInner(app.getAppContext().getContext(), app, page);
        TmcLogger.e(TAG, "getSystemInfo  " + GsonUtils.toJson(systemInfoInner));
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(systemInfoInner);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void getSystemInfoAsync(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback, @BindingParam(booleanDefault = true, value = {"needCache"}) boolean z10) {
        getSystemInfo(app, page, bridgeCallback, z10);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getUniqueId(@BindingNode(App.class) App app, @BindingCallback final BridgeCallback bridgeCallback) {
        if (app != null) {
            try {
                if (app.getAppContext() != null && app.getAppContext().getContext() != null) {
                    String gAId = DeviceUtil.getGAId();
                    if (!TextUtils.isEmpty(gAId)) {
                        MiniRequestUtils.getUniqueId(gAId, app.getAppId(), new TmcResponseCallback<UniqueIdBean>() { // from class: com.cloud.tmc.integration.bridge.GetSystemInfoBridge.1
                            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                            @NonNull
                            public Type getType() {
                                return new TypeToken<BaseResponse<UniqueIdBean>>() { // from class: com.cloud.tmc.integration.bridge.GetSystemInfoBridge.1.1
                                }.getType();
                            }

                            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                            public void onFail(@NonNull BaseResponse<?> baseResponse, @Nullable Map<String, String> map) {
                                BridgeCallback bridgeCallback2 = bridgeCallback;
                                if (bridgeCallback2 != null) {
                                    bridgeCallback2.sendFailResponse();
                                }
                            }

                            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                            public void onSuccess(@NonNull BaseResponse<? extends UniqueIdBean> baseResponse, @Nullable Map<String, String> map) {
                                String uniqueId = baseResponse.getData().getUniqueId();
                                if (TextUtils.isEmpty(uniqueId)) {
                                    BridgeCallback bridgeCallback2 = bridgeCallback;
                                    if (bridgeCallback2 != null) {
                                        bridgeCallback2.sendFailResponse();
                                        return;
                                    }
                                    return;
                                }
                                JsonObject jsonObject = new JsonObject();
                                jsonObject.addProperty("uniqueId", uniqueId);
                                TmcLogger.e(GetSystemInfoBridge.TAG, "bridiegAPI getUniqueId success: " + uniqueId);
                                BridgeCallback bridgeCallback3 = bridgeCallback;
                                if (bridgeCallback3 != null) {
                                    bridgeCallback3.sendSuccessResponse(jsonObject);
                                }
                            }
                        });
                        return;
                    }
                    TmcLogger.e(TAG, "bridiegAPI getUniqueId fail: gaid is empty");
                    if (bridgeCallback != null) {
                        bridgeCallback.sendFailResponse();
                        return;
                    }
                    return;
                }
            } catch (Throwable unused) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void putNewsOptionPopShow(@BindingNode(App.class) App app, @BindingParam(booleanDefault = true, value = {"showStatus"}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            if (appContext.getContext() == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            LauncherMMkvStorageHelper.INSTANCE.putNewsOptionPopShow(z10);
            TmcLogger.d(TAG, "putNewsOptionPopShow:" + z10);
            JsonObject jsonObject = new JsonObject();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void putSelectLanguage(@BindingNode(App.class) App app, @BindingParam(stringDefault = "", value = {"selectLanguage"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            if (appContext.getContext() == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            LauncherMMkvStorageHelper.INSTANCE.putSelectLanguage(str);
            TmcLogger.d(TAG, "from putSelectLanguage:" + str);
            JsonObject jsonObject = new JsonObject();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void removeSharpNewsCommonData(@BindingNode(App.class) App app, @BindingParam({"syncKey"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        try {
            if (app == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            Context context = appContext.getContext();
            if (context == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            TmcLogger.d(TAG, "removeSharpNewsSyncDatakey:-> " + str);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, TmcConstants.SHARP_NEWS_SYNC_DATA_STORAGE, str);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "removeSharpNewsSyncData error", th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void updateSharpNewsCommonData(@BindingNode(App.class) App app, @BindingParam({"syncKey"}) String str, @BindingParam({"syncData"}) String str2, @BindingCallback BridgeCallback bridgeCallback) {
        try {
            if (app == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            Context context = appContext.getContext();
            if (context == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            TmcLogger.d(TAG, "updateSharpNewsSyncDatakey:-> " + str + "syncData:-> " + str2);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, TmcConstants.SHARP_NEWS_SYNC_DATA_STORAGE, str, str2);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "updateSharpNewsSyncData error", th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }
}
