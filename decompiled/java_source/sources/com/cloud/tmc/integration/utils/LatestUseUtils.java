package com.cloud.tmc.integration.utils;

import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppStoreInfo;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class LatestUseUtils {
    private static final String CONSTANT_LOGO = "logo_";
    private static final int INSIDE_MARGIN = 10;
    private static final float INSIDE_RADIUS = 14.0f;
    private static final int LARGE_ICON_SIZE = 144;
    private static final String LATEST_APP_COUNT_KEY = "latest_app_count";
    private static final String LATEST_APP_ICON_KEY = "latest_app_icon";
    private static final String LATEST_APP_ICON_MSG_KEY = "latest_app_icon_msg";
    private static final String LATEST_APP_ICON_MSG_NIGHT_KEY = "latest_app_icon_msg_night";
    private static final String LATEST_APP_ICON_NIGHT_KEY = "latest_app_icon_night";
    private static final String LATEST_USE_APP_KEY = "latest_use_app";
    private static final int OUTSIDE_MARGIN = 16;
    private static final float OUTSIDE_RADIUS = 36.0f;
    private static final int SMALL_ICON_SIZE = 51;
    private static final String TAG = "LatestUseUtils";

    public static synchronized boolean addAppUse(String str, String str2, String str3, String str4, List<String> list, String str5, int i11) {
        TmcLogger.d(TAG, "addAppUse -> appId -> " + str + "appName " + str2);
        try {
            if (!AbilitiesUtils.INSTANCE.getAbilityEnableStatus(str, TmcConstants.MENU_KEY_LATEST_USE)) {
                TmcLogger.e(TAG, "config not add latest use.");
                return false;
            }
            HashMap<String, AppStoreInfo> latestUseApp = getLatestUseApp();
            AppStoreInfo appStoreInfo = new AppStoreInfo(str, str2, str3, str4, list, str5, i11);
            if (latestUseApp == null || latestUseApp.size() == 0) {
                latestUseApp = new HashMap<>();
            }
            Collections.sort(new ArrayList(latestUseApp.values()), new Comparator<AppStoreInfo>() { // from class: com.cloud.tmc.integration.utils.LatestUseUtils.1
                @Override // java.util.Comparator
                public int compare(AppStoreInfo appStoreInfo2, AppStoreInfo appStoreInfo3) {
                    return appStoreInfo2.getSaveTime() > appStoreInfo3.getSaveTime() ? -1 : 1;
                }
            });
            latestUseApp.put(str, appStoreInfo);
            updateLatestUseApp(latestUseApp);
            return true;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public static synchronized boolean deleteAppUse(String str) {
        try {
            HashMap<String, AppStoreInfo> latestUseApp = getLatestUseApp();
            if (latestUseApp != null && latestUseApp.size() != 0) {
                if (latestUseApp.get(str) != null) {
                    latestUseApp.remove(str);
                    updateLatestUseApp(latestUseApp);
                }
                return true;
            }
            return true;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    private static HashMap<String, AppStoreInfo> getLatestUseApp() {
        try {
            Type type = new TypeToken<HashMap<String, AppStoreInfo>>() { // from class: com.cloud.tmc.integration.utils.LatestUseUtils.3
            }.getType();
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(Utils.getApp(), TmcConstants.KEYS_MINI_LATEST_USE_APP, LATEST_USE_APP_KEY);
            if (string != null && !string.isEmpty()) {
                return (HashMap) GsonUtils.fromJson(string, type);
            }
            MMKV multiMMKVInstance = MiniAppConfigHelper.getMultiMMKVInstance();
            if (multiMMKVInstance == null) {
                return null;
            }
            String string2 = multiMMKVInstance.getString(LATEST_USE_APP_KEY, "{}");
            TmcLogger.d(TAG, "getLatestUseApp->" + string2);
            HashMap<String, AppStoreInfo> map = (HashMap) GsonUtils.fromJson(string2, type);
            updateLatestUseApp(map);
            return map;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return null;
        }
    }

    public static synchronized List<AppStoreInfo> getLatestUseApps() {
        ArrayList arrayList;
        Throwable th2;
        try {
            HashMap<String, AppStoreInfo> latestUseApp = getLatestUseApp();
            if (latestUseApp != null && latestUseApp.size() != 0) {
                arrayList = new ArrayList(latestUseApp.values());
                try {
                    Collections.sort(arrayList, new Comparator<AppStoreInfo>() { // from class: com.cloud.tmc.integration.utils.LatestUseUtils.2
                        @Override // java.util.Comparator
                        public int compare(AppStoreInfo appStoreInfo, AppStoreInfo appStoreInfo2) {
                            return appStoreInfo.getSaveTime() > appStoreInfo2.getSaveTime() ? -1 : 1;
                        }
                    });
                } catch (Throwable th3) {
                    th2 = th3;
                    TmcLogger.e(TAG, th2);
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                return arrayList;
            }
            return null;
        } catch (Throwable th4) {
            arrayList = null;
            th2 = th4;
        }
    }

    public static synchronized void removeList(List<String> list) {
        try {
            HashMap<String, AppStoreInfo> latestUseApp = getLatestUseApp();
            for (String str : list) {
                if (!TextUtils.isEmpty(str) && latestUseApp != null) {
                    latestUseApp.remove(str);
                }
            }
            updateLatestUseApp(latestUseApp);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private static void updateLatestUseApp(HashMap<String, AppStoreInfo> map) {
        if (map == null) {
            return;
        }
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(Utils.getApp(), TmcConstants.KEYS_MINI_LATEST_USE_APP, LATEST_USE_APP_KEY, GsonUtils.toJson(map));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }
}
