package com.cloud.tmc.miniapp.prestrategy;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.ExtendModel;
import com.cloud.tmc.integration.model.LauncherPreDataModel;
import com.cloud.tmc.integration.model.LauncherPreStrategyBaseModel;
import com.cloud.tmc.integration.model.LauncherPreStrategyModel;
import com.cloud.tmc.integration.proxy.PreHtmStrategyProxy;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.MccMncUtils;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.KUrlUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.ipc.IpcMiniLauncherService;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class PreStrategyManager {
    public static long OooO0O0;
    public static HashMap<String, Boolean> OooO0Oo;
    public static long OooO0o0;
    public static final PreStrategyManager OooO00o = new PreStrategyManager();
    public static Map<String, String> OooO0OO = MapsKt.m(TuplesKt.a("keyZeroRecentData", "zeroRecent"), TuplesKt.a("keyZeroMinicardData", "zeroCard"), TuplesKt.a("keyZeroMinicardUpdate", "zeroCard"), TuplesKt.a("keyFullRecentMiniData", "fullSearchRecent"), TuplesKt.a("keyFullMinicardData", "fullSearchCard"), TuplesKt.a("keyAzRecentData", "azRecent"), TuplesKt.a("keyFullSearchAppData", "fullSearchApp"), TuplesKt.a("keyZeroBannerData", "zeroBanner"), TuplesKt.a("keyMiniAppStart", "miniappStart"), TuplesKt.a(TmcConstants.KEY_MC_RECOMMEND_START, "miniappCenterRecommend"));
    public static final long OooO0o = 3600000;

    public static final void OooO0OO(Context context, String type, String str, Function1 function1) {
        Intrinsics.h(type, "$type");
        OooO00o.OooO00o(context, type, str, (Function1<? super Boolean, Unit>) function1);
    }

    public final void OooO00o(Context context, String str, String str2, Function1<? super Boolean, Unit> function1) {
        LauncherPreStrategyModel launcherPreStrategyModel;
        JsonObject config;
        Object next;
        try {
            ArrayList<LauncherPreDataModel> arrayListOooO0O0 = OooO0O0(context, str, str2);
            if (arrayListOooO0O0.isEmpty()) {
                TmcLogger.e("Prefetch:PreStrategyManager", "getLauncherData is empty");
                return;
            }
            OooO0OO oooO0OO = OooO0OO.OooO00o;
            if (oooO0OO.OooO0O0()) {
                oooO0OO.OooO00o(context, str, arrayListOooO0O0);
                return;
            }
            LauncherPreStrategyBaseModel launcherPreStrategyBaseModelOooO0O0 = OooO00o.OooO00o.OooO0O0(context);
            if (launcherPreStrategyBaseModelOooO0O0 == null) {
                TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyConfig is null");
                return;
            }
            for (LauncherPreDataModel launcherPreDataModel : arrayListOooO0O0) {
                String appId = launcherPreDataModel.getAppId();
                Bundle bundle = new Bundle();
                if (appId == null || appId.length() == 0) {
                    String schemeUrl = launcherPreDataModel.getSchemeUrl();
                    if (schemeUrl == null || schemeUrl.length() == 0) {
                        TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyProcessing schemeUrl is null");
                    } else {
                        boolean configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_FIX_ENCODE_URL, true);
                        UrlUtil urlUtil = UrlUtil.INSTANCE;
                        Uri uri = Uri.parse(urlUtil.fixEncodeUrl(schemeUrl, configTargetBool));
                        String queryParameter = uri.getQueryParameter("appId");
                        if (queryParameter == null || queryParameter.length() == 0) {
                            TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyProcessing appId is null");
                        } else {
                            String it = uri.getQueryParameter("query");
                            if (it != null) {
                                Intrinsics.g(it, "it");
                                bundle.putString("query", urlUtil.getFixDecodeUrl(it, configTargetBool));
                            }
                            String it2 = uri.getQueryParameter("h5Path");
                            if (it2 != null) {
                                Intrinsics.g(it2, "it");
                                bundle.putString("h5Path", urlUtil.getFixDecodeUrl(it2, configTargetBool));
                            }
                            String queryParameter2 = uri.getQueryParameter("hybridPath");
                            if (queryParameter2 != null) {
                                String strDecode = UrlUtils.decode(queryParameter2);
                                if (strDecode == null) {
                                    strDecode = "";
                                }
                                Intrinsics.g(strDecode, "UrlUtils.decode(it) ?: \"\"");
                                bundle.putString("hybridPath", urlUtil.getFixDecodeUrl(strDecode, configTargetBool));
                            }
                            launcherPreDataModel.setAppId(queryParameter);
                            launcherPreDataModel.setBundle(bundle);
                            appId = queryParameter;
                        }
                    }
                }
                ArrayList<LauncherPreStrategyModel> configList = launcherPreStrategyBaseModelOooO0O0.getConfigList();
                if (configList != null) {
                    Iterator<T> it3 = configList.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it3.next();
                    } while (!Intrinsics.c(((LauncherPreStrategyModel) next).getAppId(), appId));
                    launcherPreStrategyModel = (LauncherPreStrategyModel) next;
                } else {
                    launcherPreStrategyModel = null;
                }
                if (launcherPreStrategyModel == null) {
                    PreHtmStrategyProxy preHtmStrategyProxy = (PreHtmStrategyProxy) TmcProxy.get(PreHtmStrategyProxy.class);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("failReason", "get configModel is null");
                    bundle2.putString("failAppId", String.valueOf(appId));
                    preHtmStrategyProxy.trackPreStrategyFailPoint(bundle2);
                }
                if (launcherPreStrategyModel == null || (config = launcherPreStrategyModel.getConfig()) == null) {
                    TmcLogger.e("Prefetch:PreStrategyManager", ((Object) appId) + " preStrategyConfig.configList.config is null");
                } else {
                    PreStrategyManager preStrategyManager = OooO00o;
                    if (preStrategyManager.OooO00o(context, launcherPreStrategyModel)) {
                        try {
                            String str3 = OooO0OO.get(str);
                            if (str3 == null || str3.length() == 0) {
                                str3 = str;
                            }
                            JsonElement jsonElement = config.get(str3);
                            String string = jsonElement != null ? jsonElement.toString() : null;
                            JsonElement jsonElement2 = config.get("preHtmlWhiteList");
                            String string2 = jsonElement2 != null ? jsonElement2.toString() : null;
                            Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.prestrategy.PreStrategyManager$preStrategyProcessing$1$setType$1
                            }.getType();
                            ArrayList<String> arrayList = (ArrayList) GsonUtils.fromJson(string, type);
                            if (arrayList == null) {
                                arrayList = null;
                            }
                            ArrayList<String> arrayList2 = (ArrayList) GsonUtils.fromJson(string2, type);
                            ArrayList<String> arrayList3 = arrayList2 != null ? arrayList2 : null;
                            if (arrayList == null || arrayList.isEmpty()) {
                                TmcLogger.e("Prefetch:PreStrategyManager", ((Object) appId) + "-> " + str3 + " config is null ");
                            } else {
                                TmcLogger.e("Prefetch:PreStrategyManager", ((Object) appId) + "-> " + str3 + " start fetch config");
                                try {
                                    preStrategyManager.OooO00o(launcherPreDataModel, arrayList, arrayList3, function1);
                                } catch (Throwable th2) {
                                    th = th2;
                                    TmcLogger.e("Prefetch:PreStrategyManager", th);
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        TmcLogger.e("Prefetch:PreStrategyManager", ((Object) appId) + " preStrategyConfig config is not suitable.");
                    }
                }
            }
        } catch (Throwable th4) {
            TmcLogger.e("Prefetch:PreStrategyManager", "perStrategyProcessing", th4);
        }
    }

    public final void OooO00o(Context context, List<String> list, String scene) {
        LauncherPreStrategyModel launcherPreStrategyModel;
        Object next;
        Intrinsics.h(context, "context");
        Intrinsics.h(scene, "scene");
        if (list == null || list.isEmpty()) {
            return;
        }
        OooO0OO oooO0OO = OooO0OO.OooO00o;
        if (oooO0OO.OooO0O0()) {
            oooO0OO.OooO00o(context, scene, list, null);
            return;
        }
        LauncherPreStrategyBaseModel launcherPreStrategyBaseModelOooO0O0 = OooO00o.OooO00o.OooO0O0(context);
        if (launcherPreStrategyBaseModelOooO0O0 == null) {
            TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyConfig is null");
            return;
        }
        for (String str : list) {
            ArrayList<LauncherPreStrategyModel> configList = launcherPreStrategyBaseModelOooO0O0.getConfigList();
            if (configList != null) {
                Iterator<T> it = configList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((LauncherPreStrategyModel) next).getAppId(), str));
                launcherPreStrategyModel = (LauncherPreStrategyModel) next;
            } else {
                launcherPreStrategyModel = null;
            }
            JsonObject config = launcherPreStrategyModel != null ? launcherPreStrategyModel.getConfig() : null;
            if (config == null) {
                TmcLogger.e("Prefetch:PreStrategyManager", str + " preStrategyConfig.configList.config is null");
            } else if (OooO00o(context, launcherPreStrategyModel)) {
                LauncherPreDataModel launcherPreDataModel = new LauncherPreDataModel(str, null, new Bundle());
                try {
                    String str2 = OooO0OO.get(scene);
                    if (str2 == null || str2.length() == 0) {
                        str2 = scene;
                    }
                    JsonElement jsonElement = config.get(str2);
                    String string = jsonElement != null ? jsonElement.toString() : null;
                    JsonElement jsonElement2 = config.get("preHtmlWhiteList");
                    String string2 = jsonElement2 != null ? jsonElement2.toString() : null;
                    Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.prestrategy.PreStrategyManager$preStrategy$setType$1
                    }.getType();
                    ArrayList<String> arrayList = (ArrayList) GsonUtils.fromJson(string, type);
                    if (arrayList == null) {
                        arrayList = null;
                    }
                    ArrayList<String> arrayList2 = (ArrayList) GsonUtils.fromJson(string2, type);
                    if (arrayList2 == null) {
                        arrayList2 = null;
                    }
                    if (arrayList == null || arrayList.isEmpty()) {
                        TmcLogger.e("Prefetch:PreStrategyManager", str + "-> " + str2 + " config is null ");
                    } else {
                        TmcLogger.e("Prefetch:PreStrategyManager", str + "-> " + str2 + " start fetch config");
                        OooO00o(launcherPreDataModel, arrayList, arrayList2, (Function1<? super Boolean, Unit>) null);
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("Prefetch:PreStrategyManager", th2);
                }
            } else {
                TmcLogger.e("Prefetch:PreStrategyManager", str + " preStrategyConfig config is not suitable.");
            }
        }
    }

    public final void OooO00o(LauncherPreDataModel launcherPreDataModel, ArrayList<String> arrayList, ArrayList<String> arrayList2, Function1<? super Boolean, Unit> function1) {
        Unit unit;
        String h5Url;
        ExtendModel extend;
        Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
        if (application$com_cloud_tmc_miniapp_sdk == null) {
            TmcLogger.e("Prefetch:PreStrategyManager", "executePrefetchConfig application is null");
            return;
        }
        String appId = launcherPreDataModel.getAppId();
        if (appId == null || appId.length() == 0) {
            TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyProcessing appId is null");
            return;
        }
        TmcLogger.e("Prefetch:PreStrategyManager", appId + " start pre strategy.");
        if (arrayList != null) {
            for (String str : arrayList) {
                if (Intrinsics.c(str, "preHtml")) {
                    if (OooO00o.OooO0Oo()) {
                        AppModel appModel = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModel(application$com_cloud_tmc_miniapp_sdk, AppInfoQuery.INSTANCE.make(appId));
                        if (appModel == null) {
                            PreHtmStrategyProxy preHtmStrategyProxy = (PreHtmStrategyProxy) TmcProxy.get(PreHtmStrategyProxy.class);
                            Bundle bundle = new Bundle();
                            bundle.putString("failReason", "get appModel is null");
                            bundle.putString("failAppId", String.valueOf(appId));
                            preHtmStrategyProxy.trackPreStrategyFailPoint(bundle);
                        }
                        if (appModel == null || (extend = appModel.getExtend()) == null || (h5Url = extend.getH5Url()) == null) {
                            h5Url = "";
                        }
                        if (h5Url.length() == 0) {
                            TmcLogger.d("Prefetch:PreStrategyManager", appId + " ->h5Url is empty ,return!");
                        } else {
                            String strGenerateShellUrl = KUrlUtils.generateShellUrl(h5Url, launcherPreDataModel.getBundle());
                            TmcLogger.d("Prefetch:PreStrategyManager", "CONFIG_PREHTML ->" + appId + "  ->" + strGenerateShellUrl);
                            if (arrayList2 == null || arrayList2.isEmpty()) {
                                TmcLogger.d("Prefetch:PreStrategyManager", appId + " ->preWhiteList is null or empty");
                                Object obj = TmcProxy.get(PreHtmStrategyProxy.class);
                                Intrinsics.g(obj, "get(PreHtmStrategyProxy::class.java)");
                                PreHtmStrategyProxy.DefaultImpls.requestHtml$default((PreHtmStrategyProxy) obj, application$com_cloud_tmc_miniapp_sdk, strGenerateShellUrl, null, 4, null);
                            } else if (arrayList2.contains(UrlUtils.getHost(strGenerateShellUrl))) {
                                TmcLogger.d("Prefetch:PreStrategyManager", appId + " ->host is preWhiteList ->" + strGenerateShellUrl);
                                Object obj2 = TmcProxy.get(PreHtmStrategyProxy.class);
                                Intrinsics.g(obj2, "get(PreHtmStrategyProxy::class.java)");
                                PreHtmStrategyProxy.DefaultImpls.requestHtml$default((PreHtmStrategyProxy) obj2, application$com_cloud_tmc_miniapp_sdk, strGenerateShellUrl, null, 4, null);
                            } else {
                                TmcLogger.d("Prefetch:PreStrategyManager", appId + " ->host is not preWhiteList ->" + strGenerateShellUrl + " ");
                            }
                        }
                    } else {
                        TmcLogger.e("Prefetch:PreStrategyManager", appId + " ->checkEnablePreHtmlConfig enable status is false");
                    }
                } else if (Intrinsics.c(str, "preAppInfo")) {
                    if (OooO00o.OooO0O0()) {
                        TmcLogger.d("Prefetch:PreStrategyManager", "CONFIG_PREAPPINFO ->" + appId + " ");
                        com.cloud.tmc.miniapp.prestrategy.strategy.OooO00o.OooO00o.OooO00o(application$com_cloud_tmc_miniapp_sdk, appId);
                    } else {
                        TmcLogger.e("Prefetch:PreStrategyManager", "CONFIG_PREAPPINFO enable status is false");
                    }
                } else if (Intrinsics.c(str, "rendering")) {
                    TmcLogger.d("Prefetch:PreStrategyManager", "CONFIG_RENDERING ->" + appId);
                } else if (Intrinsics.c(str, "preOfflinePackage")) {
                    if (OooO00o.OooO0o0()) {
                        TmcLogger.d("Prefetch:PreStrategyManager", "CONFIG_OFFLINEPACKAGE ->" + appId + " ");
                        com.cloud.tmc.miniapp.prestrategy.strategy.OooO0O0.OooO00o.OooO00o(application$com_cloud_tmc_miniapp_sdk, appId);
                    } else {
                        TmcLogger.e("Prefetch:PreStrategyManager", "CONFIG_OFFLINEPACKAGE enable status is false");
                    }
                } else if (Intrinsics.c(str, LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER)) {
                    TmcLogger.d("Prefetch:PreStrategyManager", "CONFIG_OFF_SCREEN_RENDER ->" + appId);
                    if (function1 != null) {
                        function1.invoke(Boolean.TRUE);
                    }
                }
            }
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            TmcLogger.e("Prefetch:PreStrategyManager", "executePrefetchConfig list is null");
        }
    }

    public final boolean OooO00o() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_OPEN_BROWSER_CONFIG, false);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
    
        if (r2 == false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean OooO00o(Context context, LauncherPreStrategyModel launcherPreStrategyModel) {
        String str;
        String str2;
        Object next;
        ArrayList<String> whiteModelList;
        Object next2;
        if (context == null) {
            return false;
        }
        try {
            Long validTime = launcherPreStrategyModel.getValidTime();
            long jLongValue = validTime != null ? validTime.longValue() : -1L;
            if (jLongValue > 0 && System.currentTimeMillis() > jLongValue) {
                TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " config is already expired.");
                return false;
            }
            if (!NetworkUtils.isConnected()) {
                TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " current network is not connected.");
                return false;
            }
            boolean zIsMobileData = NetworkUtils.isMobileData();
            Integer netType = launcherPreStrategyModel.getNetType();
            if (netType == null || netType.intValue() != 1 || zIsMobileData) {
                Integer netType2 = launcherPreStrategyModel.getNetType();
                if (netType2 != null) {
                    if (netType2.intValue() == 2) {
                    }
                }
                String str3 = Build.MODEL;
                ArrayList<String> blackModelList = launcherPreStrategyModel.getBlackModelList();
                String str4 = null;
                Object obj = null;
                if (blackModelList != null) {
                    Iterator<T> it = blackModelList.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                    } while (!StringsKt.H((String) next2, str3, true));
                    str = (String) next2;
                } else {
                    str = null;
                }
                if (str != null && str.length() != 0) {
                    TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " " + str3 + " in blackModelList. ");
                    return false;
                }
                ArrayList<String> whiteModelList2 = launcherPreStrategyModel.getWhiteModelList();
                if (whiteModelList2 != null && !whiteModelList2.isEmpty() && (whiteModelList = launcherPreStrategyModel.getWhiteModelList()) != null && !whiteModelList.contains(str3)) {
                    TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " " + str3 + " not in whiteModelList. ");
                    return false;
                }
                String countryCode = MccMncUtils.getCountryCode(context);
                ArrayList<String> blackCountryList = launcherPreStrategyModel.getBlackCountryList();
                if (blackCountryList != null) {
                    Iterator<T> it2 = blackCountryList.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!StringsKt.H((String) next, countryCode, true));
                    str2 = (String) next;
                } else {
                    str2 = null;
                }
                if (str2 != null && str2.length() != 0) {
                    TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " " + countryCode + " in blackCountryList. ");
                    return false;
                }
                ArrayList<String> whiteCountryList = launcherPreStrategyModel.getWhiteCountryList();
                if (whiteCountryList != null && !whiteCountryList.isEmpty()) {
                    ArrayList<String> whiteCountryList2 = launcherPreStrategyModel.getWhiteCountryList();
                    if (whiteCountryList2 != null) {
                        for (Object obj2 : whiteCountryList2) {
                            if (StringsKt.H((String) obj2, countryCode, true)) {
                                obj = obj2;
                                break;
                            }
                        }
                        str4 = (String) obj;
                    }
                    if (str4 == null || str4.length() == 0) {
                        TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " " + countryCode + " not in whiteCountryList. ");
                        return false;
                    }
                }
                AppModel appModel = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModel(context, new AppInfoQuery("100000"));
                if (appModel == null) {
                    return false;
                }
                String deployVersion = appModel.getDeployVersion();
                if (deployVersion == null) {
                    deployVersion = "";
                }
                String lowestFrameworkVersion = launcherPreStrategyModel.getLowestFrameworkVersion();
                String highestFrameworkVersion = launcherPreStrategyModel.getHighestFrameworkVersion();
                if (lowestFrameworkVersion != null && lowestFrameworkVersion.length() != 0 && MiniAppLaunch.INSTANCE.compareVersion(lowestFrameworkVersion, deployVersion)) {
                    TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " cur framework:" + deployVersion + " < " + lowestFrameworkVersion);
                    return false;
                }
                if (highestFrameworkVersion != null && highestFrameworkVersion.length() != 0 && MiniAppLaunch.INSTANCE.compareVersion(deployVersion, highestFrameworkVersion)) {
                    TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " cur framework:" + deployVersion + " > " + highestFrameworkVersion);
                    return false;
                }
                String curSDKVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getDevSDKVersion();
                String lowestSDKVersion = launcherPreStrategyModel.getLowestSDKVersion();
                String highestSDKVersion = launcherPreStrategyModel.getHighestSDKVersion();
                if (lowestSDKVersion != null && lowestSDKVersion.length() != 0) {
                    MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                    Intrinsics.g(curSDKVersion, "curSDKVersion");
                    if (miniAppLaunch.compareVersion(lowestSDKVersion, curSDKVersion)) {
                        TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " cur sdk:" + curSDKVersion + " < " + lowestSDKVersion);
                        return false;
                    }
                }
                if (highestSDKVersion != null && highestSDKVersion.length() != 0) {
                    MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
                    Intrinsics.g(curSDKVersion, "curSDKVersion");
                    if (miniAppLaunch2.compareVersion(curSDKVersion, highestSDKVersion)) {
                        TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " cur sdk:" + curSDKVersion + " > " + highestSDKVersion);
                        return false;
                    }
                }
                return true;
            }
            TmcLogger.e("Prefetch:PreStrategyManager", launcherPreStrategyModel.getAppId() + " netType disallow, config.netType = " + launcherPreStrategyModel.getNetType());
            return false;
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:PreStrategyManager", th2);
            return false;
        }
    }

    public final boolean OooO00o(Context context, String appId, String str) {
        LauncherPreStrategyModel launcherPreStrategyModel;
        JsonArray asJsonArray;
        Object next;
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            if (OooO0OO.OooO00o.OooO0O0()) {
                TmcLogger.e("Prefetch:PreStrategyManager", "new prefetch config. not open browser.");
                return false;
            }
            if (!OooO00o()) {
                TmcLogger.e("Prefetch:PreStrategyManager", "checkEnableOpenBrowserConfig is false");
                return false;
            }
            String strOooO0O0 = OooO0O0(str);
            if (strOooO0O0 != null && strOooO0O0.length() != 0) {
                LauncherPreStrategyBaseModel launcherPreStrategyBaseModelOooO0O0 = OooO00o.OooO00o.OooO0O0(context);
                if (launcherPreStrategyBaseModelOooO0O0 == null) {
                    TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyConfig is null");
                    return false;
                }
                ArrayList<LauncherPreStrategyModel> configList = launcherPreStrategyBaseModelOooO0O0.getConfigList();
                JsonElement jsonElement = null;
                if (configList != null) {
                    Iterator<T> it = configList.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((LauncherPreStrategyModel) next).getAppId(), appId));
                    launcherPreStrategyModel = (LauncherPreStrategyModel) next;
                } else {
                    launcherPreStrategyModel = null;
                }
                JsonObject commonConfig = launcherPreStrategyModel != null ? launcherPreStrategyModel.getCommonConfig() : null;
                if (commonConfig == null) {
                    TmcLogger.e("Prefetch:PreStrategyManager", appId + " preStrategyConfig.commonConfig is null");
                    return false;
                }
                Long openBrowserTime = launcherPreStrategyModel.getOpenBrowserTime();
                long jLongValue = openBrowserTime != null ? openBrowserTime.longValue() : -1L;
                if (jLongValue >= 0 && jLongValue <= System.currentTimeMillis()) {
                    JsonElement jsonElement2 = commonConfig.get(strOooO0O0);
                    if (jsonElement2 != null && (asJsonArray = jsonElement2.getAsJsonArray()) != null) {
                        for (JsonElement jsonElement3 : asJsonArray) {
                            if (Intrinsics.c(jsonElement3.getAsString(), "allowOpenBrowser")) {
                                jsonElement = jsonElement3;
                                break;
                            }
                        }
                        if (jsonElement != null) {
                            return true;
                        }
                    }
                    return false;
                }
                TmcLogger.e("Prefetch:PreStrategyManager", appId + " preStrategyConfig.openBrowserTime = " + jLongValue + " is not suitable.");
                return false;
            }
            TmcLogger.e("Prefetch:PreStrategyManager", "openScene is null");
            return false;
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:PreStrategyManager", th2);
            return false;
        }
    }

    public final boolean OooO00o(String str) {
        try {
            if (OooO0Oo == null || System.currentTimeMillis() - OooO0o0 > OooO0o) {
                OooO0o0 = System.currentTimeMillis();
                OooO0Oo = (HashMap) GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRE_MANAGER_ENABLE_CONFIG, LauncherMiniAppConfigHelper.DEFAULT_PRE_MANAGER_ENABLE_CONFIG), (Type) HashMap.class);
            }
            HashMap<String, Boolean> map = OooO0Oo;
            Boolean bool = map != null ? map.get(str) : null;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0065 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String OooO0O0(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case 1448635040:
                    if (str.equals(TmcConstants.KEY_PREFETCH_ZERO_CARD)) {
                        return "fullSearchApp";
                    }
                    break;
                case 1448635042:
                    if (str.equals(TmcConstants.KEY_PREFETCH_ZERO_BANNER)) {
                        return "zeroCard";
                    }
                    break;
                case 1448635048:
                    if (str.equals(TmcConstants.KEY_PREFETCH_PIN)) {
                        return "miniappCenterRecommend";
                    }
                    break;
                case 1449558561:
                    if (str.equals("110001")) {
                        return "fullSearchApp";
                    }
                    break;
                case 1449558562:
                    if (str.equals("110002")) {
                        return "fullSearchRecent";
                    }
                    break;
                case 1449558564:
                    if (str.equals("110004")) {
                        return "azRecent";
                    }
                    break;
                case 1449558565:
                    if (str.equals("110005")) {
                        return "zeroRecent";
                    }
                    break;
                case 1449558594:
                    if (str.equals("110013")) {
                        return "fullSearchCard";
                    }
                    break;
            }
        }
        return null;
    }

    public final ArrayList<LauncherPreDataModel> OooO0O0(Context context, String key, String str) {
        ArrayList<LauncherPreDataModel> arrayList;
        Intrinsics.h(key, "key");
        if (context == null || str == null) {
            arrayList = null;
        } else {
            try {
                TmcLogger.d("Prefetch:PreStrategyManager", "preStrategyProcessing -> " + key + " -> " + str);
                arrayList = (ArrayList) GsonUtils.fromJson(str, new TypeToken<List<LauncherPreDataModel>>() { // from class: com.cloud.tmc.miniapp.prestrategy.PreStrategyManager$getLauncherData$1$1$1
                }.getType());
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:PreStrategyManager", "getLauncherData", th2);
                return new ArrayList<>();
            }
        }
        return arrayList == null ? new ArrayList<>() : arrayList;
    }

    public final void OooO0O0(final Context context, final String type, final String str, final Function1<? super Boolean, Unit> function1) {
        Intrinsics.h(type, "type");
        if (ProcessUtils.isMiniProcess()) {
            try {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.prestrategy.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreStrategyManager.OooO0OO(context, type, str, function1);
                    }
                });
                return;
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:PreStrategyManager", th2);
                return;
            }
        }
        Intrinsics.h(type, "type");
        IpcMiniLauncherService.OooO00o oooO00o = IpcMiniLauncherService.OooO00o;
        OooO0O0 oooO0O0 = new OooO0O0(type, str, context, function1);
        Intrinsics.h(type, "type");
        try {
            TmcLogger.d(":IpcTaskManagerService", "preLauncherData");
            if (ProcessUtils.isMiniProcess()) {
                TmcLogger.d(":IpcTaskManagerService", "preLauncherData isMiniProcess");
                Context applicationContext = context != null ? context.getApplicationContext() : null;
                Utils.setAppIfNecessary(applicationContext instanceof Application ? (Application) applicationContext : null);
                oooO0O0.OooO00o(false);
                return;
            }
            Intent intent = new Intent(context, (Class<?>) IpcMiniLauncherService.class);
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
            if (context != null) {
                context.bindService(intent, new com.cloud.tmc.miniapp.ipc.OooO0OO(type, context, oooO0O0, str), 1);
            }
        } catch (Throwable th3) {
            TmcLogger.e(":IpcTaskManagerService", th3);
            oooO0O0.OooO00o(0, th3);
        }
    }

    public final boolean OooO0O0() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_APPINFO_CONFIG, true);
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean OooO0OO() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_MANAGER_CONFIG, true);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x009f A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0009, B:6:0x0011, B:10:0x001a, B:12:0x0022, B:14:0x0028, B:16:0x004a, B:18:0x005f, B:42:0x00b7, B:27:0x0078, B:35:0x0092, B:37:0x009f, B:39:0x00a5, B:30:0x0081, B:33:0x008a, B:40:0x00af, B:43:0x00bb, B:45:0x00c8, B:47:0x00ce), top: B:51:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0009, B:6:0x0011, B:10:0x001a, B:12:0x0022, B:14:0x0028, B:16:0x004a, B:18:0x005f, B:42:0x00b7, B:27:0x0078, B:35:0x0092, B:37:0x009f, B:39:0x00a5, B:30:0x0081, B:33:0x008a, B:40:0x00af, B:43:0x00bb, B:45:0x00c8, B:47:0x00ce), top: B:51:0x0009 }] */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0090, code lost:
    
        if (r8.equals("keyFullRecentMiniData") != false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void OooO0Oo(Context context, String key, String str, Function1<? super Boolean, Unit> function1) {
        Intrinsics.h(key, "key");
        if (context != null) {
            try {
                if (!ByteAppManager.INSTANCE.checkPreInitConfig(context)) {
                    TmcLogger.e("Prefetch:PreStrategyManager", "close pre init subprocess");
                    return;
                }
                PreStrategyManager preStrategyManager = OooO00o;
                if (!preStrategyManager.OooO0OO()) {
                    TmcLogger.e("Prefetch:PreStrategyManager", "checkEnablePreConfig enable status is false  return");
                    return;
                }
                TmcLogger.d("Prefetch:PreStrategyManager", "updateLauncherData " + key + " -> " + str);
                if (!preStrategyManager.OooO00o(key)) {
                    TmcLogger.e("Prefetch:PreStrategyManager", key + " is not allow execute");
                    return;
                }
                int iHashCode = key.hashCode();
                if (iHashCode != -2066930763) {
                    if (iHashCode != -1879995062) {
                        if (iHashCode == -605809219) {
                            if (!key.equals("keyAzRecentData")) {
                            }
                            if (System.currentTimeMillis() - OooO0O0 < 500) {
                                TmcLogger.e("Prefetch:PreStrategyManager", "recent update diff < 500ms");
                                return;
                            } else {
                                OooO0O0 = System.currentTimeMillis();
                                preStrategyManager.OooO0O0(context, key, str, function1);
                                return;
                            }
                        }
                        if (iHashCode != 936969644 || !key.equals("keyZeroRecentData")) {
                        }
                        if (System.currentTimeMillis() - OooO0O0 < 500) {
                            TmcLogger.e("Prefetch:PreStrategyManager", "recent update diff < 500ms");
                            return;
                        } else {
                            OooO0O0 = System.currentTimeMillis();
                            preStrategyManager.OooO0O0(context, key, str, function1);
                            return;
                        }
                    }
                } else if (key.equals("keyFullSearchAppData")) {
                    if (System.currentTimeMillis() - OooO0O0 < 300) {
                        TmcLogger.e("Prefetch:PreStrategyManager", "KEY_FULL_SEARCH_APP_DATA diff < 500ms");
                        return;
                    } else {
                        OooO0O0 = System.currentTimeMillis();
                        preStrategyManager.OooO0O0(context, key, str, function1);
                        return;
                    }
                }
                preStrategyManager.OooO0O0(context, key, str, function1);
            } catch (Throwable th2) {
                TmcLogger.e("Prefetch:PreStrategyManager", "updateLauncherData", th2);
            }
        }
    }

    public final boolean OooO0Oo() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_HTML_CONFIG, false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean OooO0o0() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_OFFLINE_CONFIG, true);
        } catch (Throwable unused) {
            return false;
        }
    }
}
