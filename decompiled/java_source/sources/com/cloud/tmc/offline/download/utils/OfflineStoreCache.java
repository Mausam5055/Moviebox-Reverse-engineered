package com.cloud.tmc.offline.download.utils;

import android.content.Context;
import android.util.Log;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflineZipDownloadInfo;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u0010\u0010\u0017\u001a\n \u0019*\u0004\u0018\u00010\u00180\u0018H\u0002J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u0014J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u00020\u0004J\u0016\u0010&\u001a\u00020'2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0004J\u0018\u0010&\u001a\u00020'2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0014J\u001a\u0010)\u001a\u00020*2\u0006\u0010)\u001a\u00020\u00042\b\b\u0002\u0010+\u001a\u00020 H\u0002J\u000e\u0010,\u001a\u00020*2\u0006\u0010%\u001a\u00020\u0004J\u0016\u0010-\u001a\u00020*2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010.\u001a\u00020\u0004J\u000e\u0010/\u001a\u00020*2\u0006\u0010\u001b\u001a\u00020\u0014J\u0016\u0010/\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004J\u0010\u00101\u001a\u00020*2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0014J\u000e\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020#J\u0016\u00104\u001a\u00020*2\u0006\u0010%\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0004J\u0016\u00106\u001a\u00020*2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u00107\u001a\u00020'J \u00106\u001a\u00020*2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00107\u001a\u00020'R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00100\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000fj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0014`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;", "", "()V", "KEY_DOWNLOAD_STATE", "", "KEY_ERROR_MSG_1", "KEY_ERROR_MSG_2", "KEY_LAST_MODIFY", "KEY_LAST_UPDATE_TIME", "KEY_OFFLINE_PKG_CONFIG", "KEY_PERSIST_FILE", "KEY_PERSIST_FILE_SIZE", "KEY_ZIP_UNCOMPRESS_DIR", "TAG", "lastGetOfflinePkgConfigTime", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "offlineAppId", "offlinePkgConfigMemoryCache", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "getContext", "Landroid/content/Context;", "getKvProxy", "Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;", "kotlin.jvm.PlatformType", "getLastModify", XLogUtil.TAG, "getOfflinePkgConfigCache", "group", "getOfflinePkgConfigCacheOrMemoryCache", "getOfflineZipDownloadStatus", "", "url", "getVUrlFileSize", "", "getVUrlKey2Value", "key", "getZipDownloadStatus", "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;", "lastUpdateTime", "log", "", "printStack", "removeVUrlKey2Value", "setLastModify", "lastModify", "setLastUpdateTime", "version", "setOfflinePkgConfigCache", "setVUrlFileSize", "size", "setVUrlKey2Value", AppMeasurementSdk.ConditionalUserProperty.VALUE, "setZipDownloadStatus", "info", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OfflineStoreCache {
    private static final String KEY_DOWNLOAD_STATE = "_download_state";
    private static final String KEY_ERROR_MSG_1 = "offPkgConfig group is null!";
    private static final String KEY_ERROR_MSG_2 = "offPkgConfig group cannot be null!";
    private static final String KEY_LAST_MODIFY = "_last_modify";
    private static final String KEY_LAST_UPDATE_TIME = "_last_update_time";
    private static final String KEY_OFFLINE_PKG_CONFIG = "offline_pkg_config";
    private static final String KEY_PERSIST_FILE = "vUrlFile_";
    private static final String KEY_PERSIST_FILE_SIZE = "vUrlFileSize";
    private static final String KEY_ZIP_UNCOMPRESS_DIR = "_zip_uncompress_dir";
    private static final String TAG = "TmcOfflineDownload: OfflineStoreCache";
    public static final OfflineStoreCache INSTANCE = new OfflineStoreCache();
    private static final HashMap<String, OffPkgConfig> offlinePkgConfigMemoryCache = new HashMap<>();
    private static final HashMap<String, Long> lastGetOfflinePkgConfigTime = new HashMap<>();
    private static final String offlineAppId = StringExtKt.toMd5(OfflineConstantsKt.OFFLINE);

    private OfflineStoreCache() {
    }

    private final Context getContext() {
        return OfflineManager.getContext$com_cloud_tmc_offline_download();
    }

    private final KVStorageProxy getKvProxy() {
        return (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
    }

    private final void log(String log, boolean printStack) {
        TmcLogger.d(TAG, log + " " + (printStack ? Log.getStackTraceString(new Throwable("Just Print")) : ""));
    }

    static /* synthetic */ void log$default(OfflineStoreCache offlineStoreCache, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        offlineStoreCache.log(str, z10);
    }

    public final String getLastModify(OffPkgConfig config) {
        Intrinsics.h(config, "config");
        String group = config.getGroup();
        if (group == null || group.length() == 0) {
            log(KEY_ERROR_MSG_1, true);
            return null;
        }
        String str = group + config.getVersion() + KEY_LAST_MODIFY;
        Context context = getContext();
        if (context != null) {
            return INSTANCE.getKvProxy().getString(context, group, StringExtKt.toMd5(str));
        }
        return null;
    }

    public final OffPkgConfig getOfflinePkgConfigCache(String group) {
        String string;
        if (group == null || group.length() == 0) {
            log(KEY_ERROR_MSG_1, true);
            return null;
        }
        String str = group + "offline_pkg_config";
        Context context = getContext();
        if (context == null || (string = INSTANCE.getKvProxy().getString(context, group, StringExtKt.toMd5(str))) == null || string.length() == 0) {
            return null;
        }
        Type type = new TypeToken<OffPkgConfig>() { // from class: com.cloud.tmc.offline.download.utils.OfflineStoreCache.getOfflinePkgConfigCache.1
        }.getType();
        Intrinsics.g(type, "object : TypeToken<OffPkgConfig>() {}.type");
        return (OffPkgConfig) TmcGsonUtils.fromJson(string, type);
    }

    public final OffPkgConfig getOfflinePkgConfigCacheOrMemoryCache(String group) {
        if (group == null || group.length() == 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashMap<String, OffPkgConfig> map = offlinePkgConfigMemoryCache;
        OffPkgConfig offPkgConfig = map.get(group);
        HashMap<String, Long> map2 = lastGetOfflinePkgConfigTime;
        Long l11 = map2.get(group);
        if (l11 == null) {
            l11 = 0L;
        }
        long jLongValue = l11.longValue();
        if (offPkgConfig != null && jCurrentTimeMillis - jLongValue <= OfflineManager.getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download()) {
            return offPkgConfig;
        }
        OffPkgConfig offlinePkgConfigCache = getOfflinePkgConfigCache(group);
        if (offlinePkgConfigCache != null) {
            map.put(group, offlinePkgConfigCache);
        }
        map2.put(group, Long.valueOf(jCurrentTimeMillis));
        TmcLogger.d(TAG, "offlinePkgConfigMemoryCache 内存失效，从缓存中读取，" + offlinePkgConfigCache);
        return offlinePkgConfigCache;
    }

    public final boolean getOfflineZipDownloadStatus(OffPkgConfig config, String url) {
        Intrinsics.h(config, "config");
        Intrinsics.h(url, "url");
        return getZipDownloadStatus(config, url).getStatus() >= 2;
    }

    public final int getVUrlFileSize() {
        Context context = getContext();
        if (context != null) {
            return INSTANCE.getKvProxy().getInt(context, offlineAppId, KEY_PERSIST_FILE_SIZE);
        }
        return 0;
    }

    public final String getVUrlKey2Value(String key) {
        Intrinsics.h(key, "key");
        Context context = getContext();
        if (context == null) {
            return null;
        }
        return INSTANCE.getKvProxy().getString(context, offlineAppId, KEY_PERSIST_FILE + key);
    }

    public final OfflineZipDownloadInfo getZipDownloadStatus(OffPkgConfig config, String url) {
        Intrinsics.h(config, "config");
        Intrinsics.h(url, "url");
        return getZipDownloadStatus(config.getGroup(), url);
    }

    public final OfflineZipDownloadInfo getZipDownloadStatus(String group, String url) {
        String string;
        Intrinsics.h(url, "url");
        if (group == null || group.length() == 0) {
            return new OfflineZipDownloadInfo(null, null, 0, null, 15, null);
        }
        String str = group + url + KEY_DOWNLOAD_STATE;
        Context context = getContext();
        if (context == null || (string = INSTANCE.getKvProxy().getString(context, group, StringExtKt.toMd5(str))) == null) {
            return new OfflineZipDownloadInfo(null, null, 0, null, 15, null);
        }
        try {
            Type type = new TypeToken<OfflineZipDownloadInfo>() { // from class: com.cloud.tmc.offline.download.utils.OfflineStoreCache.getZipDownloadStatus.1
            }.getType();
            Intrinsics.g(type, "object : TypeToken<Offli…ipDownloadInfo>() {}.type");
            return (OfflineZipDownloadInfo) TmcGsonUtils.fromJson(string, type);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Exception json parse error", th2);
            return new OfflineZipDownloadInfo(null, null, 0, null, 15, null);
        }
    }

    public final long lastUpdateTime(OffPkgConfig config) {
        Intrinsics.h(config, "config");
        String group = config.getGroup();
        if (group == null || group.length() == 0) {
            log(KEY_ERROR_MSG_1, true);
            return 0L;
        }
        String str = group + config.getVersion() + KEY_LAST_UPDATE_TIME;
        Context context = getContext();
        if (context != null) {
            return INSTANCE.getKvProxy().getLong(context, group, StringExtKt.toMd5(str));
        }
        return 0L;
    }

    public final void removeVUrlKey2Value(String key) {
        Intrinsics.h(key, "key");
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().remove(context, offlineAppId, KEY_PERSIST_FILE + key);
        }
    }

    public final void setLastModify(OffPkgConfig config, String lastModify) {
        Intrinsics.h(config, "config");
        Intrinsics.h(lastModify, "lastModify");
        String group = config.getGroup();
        if (group == null || group.length() == 0) {
            log(KEY_ERROR_MSG_1, true);
            return;
        }
        String str = group + config.getVersion() + KEY_LAST_MODIFY;
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().putString(context, group, StringExtKt.toMd5(str), lastModify);
        }
    }

    public final void setLastUpdateTime(OffPkgConfig config) {
        Intrinsics.h(config, "config");
        String group = config.getGroup();
        if (group == null) {
            group = "";
        }
        String version = config.getVersion();
        setLastUpdateTime(group, version != null ? version : "");
    }

    public final void setLastUpdateTime(String group, String version) {
        Intrinsics.h(group, "group");
        Intrinsics.h(version, "version");
        if (group.length() == 0) {
            log(KEY_ERROR_MSG_1, true);
            return;
        }
        String str = group + version + KEY_LAST_UPDATE_TIME;
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().putLong(context, group, StringExtKt.toMd5(str), System.currentTimeMillis());
        }
    }

    public final void setOfflinePkgConfigCache(OffPkgConfig config) {
        String group = config != null ? config.getGroup() : null;
        if (group == null || group.length() == 0) {
            log(KEY_ERROR_MSG_1, true);
            return;
        }
        String str = group + "offline_pkg_config";
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().putString(context, group, StringExtKt.toMd5(str), TmcGsonUtilsKt.toJson(config));
        }
    }

    public final void setVUrlFileSize(int size) {
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().putInt(context, offlineAppId, KEY_PERSIST_FILE_SIZE, size);
        }
    }

    public final void setVUrlKey2Value(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().putString(context, offlineAppId, KEY_PERSIST_FILE + key, value);
        }
    }

    public final void setZipDownloadStatus(OffPkgConfig config, OfflineZipDownloadInfo info) {
        Intrinsics.h(config, "config");
        Intrinsics.h(info, "info");
        String group = config.getGroup();
        String version = config.getVersion();
        if (version == null) {
            version = "";
        }
        setZipDownloadStatus(group, version, info);
    }

    public final void setZipDownloadStatus(String group, String version, OfflineZipDownloadInfo info) {
        Intrinsics.h(version, "version");
        Intrinsics.h(info, "info");
        String url = info.getUrl();
        if (group == null || group.length() == 0 || url == null || url.length() == 0) {
            log("offPkgConfig group or info url is null!", true);
            return;
        }
        OfflineZipDownloadInfo zipDownloadStatus = getZipDownloadStatus(group, url);
        zipDownloadStatus.setUrl(info.getUrl());
        zipDownloadStatus.setZipUnCompressPath(info.getZipUnCompressPath());
        zipDownloadStatus.setStatus(info.getStatus());
        zipDownloadStatus.setManifest(info.getManifest());
        String str = group + url + KEY_DOWNLOAD_STATE;
        Context context = getContext();
        if (context != null) {
            INSTANCE.getKvProxy().putString(context, group, StringExtKt.toMd5(str), TmcGsonUtilsKt.toJson(zipDownloadStatus));
        }
        if (zipDownloadStatus.getStatus() == 2) {
            setLastUpdateTime(group, version);
        }
    }
}
