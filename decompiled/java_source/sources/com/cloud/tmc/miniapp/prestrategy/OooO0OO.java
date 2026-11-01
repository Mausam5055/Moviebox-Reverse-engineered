package com.cloud.tmc.miniapp.prestrategy;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.LruCache;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.LauncherPreDataModel;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.offline.download.utils.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0OO {
    public static final OooO0OO OooO00o = new OooO0OO();
    public static final LruCache<String, PrefetchData> OooO0O0 = new LruCache<>(1);
    public static final long OooO0OO = TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL;
    public static final int OooO0Oo = 1;
    public static final AtomicInteger OooO0o0 = new AtomicInteger(0);
    public static final Map<String, String> OooO0o = MapsKt.m(TuplesKt.a("keyZeroRecentData", TmcConstants.KEY_PREFETCH_ZERO_RECENT), TuplesKt.a("keyZeroMinicardData", TmcConstants.KEY_PREFETCH_ZERO_CARD), TuplesKt.a("keyZeroMinicardUpdate", TmcConstants.KEY_PREFETCH_ZERO_CARD), TuplesKt.a("keyFullRecentMiniData", TmcConstants.KEY_PREFETCH_FULL_RECENT), TuplesKt.a("keyFullMinicardData", TmcConstants.KEY_PREFETCH_FULL_CARD), TuplesKt.a("keyAzRecentData", "100007"), TuplesKt.a("keyFullSearchAppData", TmcConstants.KEY_PREFETCH_FULL_MINIAPP), TuplesKt.a("keyZeroBannerData", TmcConstants.KEY_PREFETCH_ZERO_BANNER));

    public final String OooO00o() {
        return MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PREFETCH_CONFIG_URL, AppDynamicBuildConfig.getMINI_APP_STATIC_URL() + "miniapp/platform/consumer-not-login/commonPrefetch/query/getPrefetchStrategyByCdn");
    }

    public final void OooO00o(Context context, String str, ArrayList<LauncherPreDataModel> arrayList) {
        if (arrayList.isEmpty() || str == null || str.length() == 0 || context == null) {
            TmcLogger.e("Prefetch:PrefetchConfigManager", "requestStrategyConfig failed: param is invalid.");
            return;
        }
        Map<String, Bundle> linkedHashMap = new LinkedHashMap<>();
        ArrayList arrayList2 = new ArrayList();
        for (LauncherPreDataModel launcherPreDataModel : arrayList) {
            String appId = launcherPreDataModel.getAppId();
            Bundle bundle = new Bundle();
            if (appId == null || appId.length() == 0) {
                String schemeUrl = launcherPreDataModel.getSchemeUrl();
                if (schemeUrl == null || schemeUrl.length() == 0) {
                    PreStrategyManager preStrategyManager = PreStrategyManager.OooO00o;
                    TmcLogger.e("Prefetch:PreStrategyManager", "preStrategyProcessing schemeUrl is null");
                } else {
                    boolean configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_FIX_ENCODE_URL, true);
                    UrlUtil urlUtil = UrlUtil.INSTANCE;
                    Uri uri = Uri.parse(urlUtil.fixEncodeUrl(schemeUrl, configTargetBool));
                    String queryParameter = uri.getQueryParameter("appId");
                    if (queryParameter == null || queryParameter.length() == 0) {
                        PreStrategyManager preStrategyManager2 = PreStrategyManager.OooO00o;
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
                        if (queryParameter != null && queryParameter.length() != 0) {
                            linkedHashMap.put(queryParameter, bundle);
                            appId = queryParameter;
                        }
                    }
                }
            }
            if (appId != null && appId.length() != 0 && !arrayList2.contains(appId)) {
                arrayList2.add(appId);
            }
        }
        OooO00o(context, str, arrayList2, linkedHashMap);
    }

    public final void OooO00o(Context context, String scene, List<String> appIdList, Map<String, Bundle> map) {
        Intrinsics.h(context, "context");
        Intrinsics.h(scene, "scene");
        Intrinsics.h(appIdList, "appIdList");
        try {
            if (OooO0o0.get() == 1) {
                TmcLogger.e("Prefetch:PrefetchConfigManager", "last request is executing. " + scene + " skip.");
                return;
            }
            String str = OooO0o.get(scene);
            String str2 = str == null ? scene : str;
            if (StringsKt.W(scene, "key", false, 2, null)) {
                TmcLogger.e("Prefetch:PrefetchConfigManager", "sceneId:" + scene + " is invalid. skip.");
                return;
            }
            Collections.sort(appIdList);
            String str3 = "";
            Iterator<T> it = appIdList.iterator();
            while (it.hasNext()) {
                str3 = ((Object) str3) + ((String) it.next()) + ",";
            }
            if (str3.length() == 0) {
                TmcLogger.e("Prefetch:PrefetchConfigManager", scene + " requestStrategyConfig failed: appId is invalid.");
                return;
            }
            int i11 = -1;
            int length = str3.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i12 = length - 1;
                    if (str3.charAt(length) == ',') {
                        i11 = length;
                        break;
                    } else if (i12 < 0) {
                        break;
                    } else {
                        length = i12;
                    }
                }
            }
            Intrinsics.g(str3.substring(i11), "this as java.lang.String).substring(startIndex)");
            long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, "mini_PrefetchData", str2);
            long jCurrentTimeMillis = System.currentTimeMillis();
            PrefetchData prefetchData = new PrefetchData(str2, str3, map);
            if (!NetworkUtils.isConnected()) {
                OooO0O0.put(str2, prefetchData);
                TmcLogger.e("Prefetch:PrefetchConfigManager", str2 + " network is not connected. push wait queue.");
                return;
            }
            long configTargetLong = MiniAppConfigHelper.INSTANCE.getConfigTargetLong(LauncherMiniAppConfigHelper.KEY_PREFETCH_FRESH_TIME, OooO0OO);
            if (jCurrentTimeMillis - j11 >= configTargetLong) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, "mini_PrefetchData", str2, jCurrentTimeMillis);
                OooO00o(prefetchData);
                return;
            }
            TmcLogger.e("Prefetch:PrefetchConfigManager", "sceneId:" + str2 + " fetch time < " + configTargetLong);
        } catch (Throwable th2) {
            TmcLogger.e("Prefetch:PrefetchConfigManager", th2);
        }
    }

    public final void OooO00o(PrefetchData prefetchData) {
        String appIds;
        String sceneId = prefetchData.getSceneId();
        if (sceneId == null || sceneId.length() == 0 || (appIds = prefetchData.getAppIds()) == null || appIds.length() == 0) {
            TmcLogger.e("Prefetch:PrefetchConfigManager", "request abort. " + prefetchData.getSceneId() + " or " + prefetchData.getAppIds() + " is invalid.");
            return;
        }
        if (!OooO0o0.compareAndSet(0, OooO0Oo)) {
            TmcLogger.e("Prefetch:PrefetchConfigManager", "(sceneId=" + prefetchData.getSceneId() + ") request abort. last request not finish.");
            return;
        }
        TmcLogger.e("Prefetch:PrefetchConfigManager", "requestStrategyConfig start. sceneId:" + prefetchData.getSceneId() + ", appIds=" + prefetchData.getAppIds());
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(OooO00o(), new LinkedHashMap(), MapsKt.m(TuplesKt.a("sceneId", prefetchData.getSceneId()), TuplesKt.a("miniappIds", prefetchData.getAppIds()), TuplesKt.a("cacheCDNKey", AppPrepareUtils.INSTANCE.urlToSHA256(Utils.INSTANCE.getMcc() + prefetchData.getSceneId() + prefetchData.getAppIds()))), Boolean.TRUE, new PrefetchConfigManager$requestStrategyConfig$4(prefetchData));
    }

    public final boolean OooO0O0() {
        return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_PREFETCH_ENABLE, true);
    }
}
