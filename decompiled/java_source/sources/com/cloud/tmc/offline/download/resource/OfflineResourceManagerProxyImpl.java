package com.cloud.tmc.offline.download.resource;

import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.utils.OfflineStoreCache;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u001c\u0010\u0015\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002J\u001a\u0010\u0016\u001a\u00020\u00142\b\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0017\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001c\u0010\u0018\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;", "Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;", "()V", "filePath2VUrl", "Ljava/util/concurrent/ConcurrentHashMap;", "", "vUrl2FilePath", "vUrlFileSize", "Ljava/util/concurrent/atomic/AtomicInteger;", "generateVUrl", NativeRequestBridge.KEY_FILE_PATH, "appId", "fileName", "path", "needPersistence", "", "getFilePath", "vUrl", "getVhost", "init", "", "put", "removeByFilePath", "removeByVUrl", "removePersistence", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OfflineResourceManagerProxyImpl implements IOfflineResourceManagerProxy {
    private static final String MAP_SYMBOL = "->";
    private static final String TAG = "TmcOfflineDownload: OfflineResourceManagerProxyImpl";
    private final ConcurrentHashMap<String, String> vUrl2FilePath = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, String> filePath2VUrl = new ConcurrentHashMap<>();
    private final AtomicInteger vUrlFileSize = new AtomicInteger(0);

    public OfflineResourceManagerProxyImpl() {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.offline.download.resource.a
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineResourceManagerProxyImpl._init_$lambda$0(this.f23919a);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(OfflineResourceManagerProxyImpl this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.init();
    }

    private final void init() {
        try {
            int vUrlFileSize = OfflineStoreCache.INSTANCE.getVUrlFileSize();
            this.vUrlFileSize.set(vUrlFileSize);
            if (1 <= vUrlFileSize) {
                int i11 = 1;
                while (true) {
                    String vUrlKey2Value = OfflineStoreCache.INSTANCE.getVUrlKey2Value(String.valueOf(i11));
                    if (vUrlKey2Value != null && vUrlKey2Value.length() != 0) {
                        String[] strArr = (String[]) StringsKt.S0(vUrlKey2Value, new String[]{MAP_SYMBOL}, false, 0, 6, null).toArray(new String[0]);
                        if (strArr.length == 2) {
                            this.vUrl2FilePath.put(strArr[0], strArr[1]);
                            this.filePath2VUrl.put(strArr[1], strArr[0]);
                        }
                    }
                    if (i11 == vUrlFileSize) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            TmcLogger.d(TAG, "init file vUrl finished, size: " + vUrlFileSize);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    private final void put(String vUrl, String filePath) {
        if (vUrl == null || vUrl.length() == 0 || filePath == null || filePath.length() == 0) {
            return;
        }
        this.vUrl2FilePath.put(vUrl, filePath);
        this.filePath2VUrl.put(filePath, vUrl);
    }

    private final void removePersistence(String vUrl, String filePath) {
        int i11 = this.vUrlFileSize.get();
        if (1 > i11) {
            return;
        }
        int i12 = 1;
        while (true) {
            OfflineStoreCache offlineStoreCache = OfflineStoreCache.INSTANCE;
            String vUrlKey2Value = offlineStoreCache.getVUrlKey2Value(String.valueOf(i12));
            if (vUrlKey2Value != null && vUrlKey2Value.length() != 0) {
                String[] strArr = (String[]) StringsKt.S0(vUrlKey2Value, new String[]{MAP_SYMBOL}, false, 0, 6, null).toArray(new String[0]);
                if (strArr.length == 2 && Intrinsics.c(vUrl, strArr[0]) && Intrinsics.c(filePath, strArr[1])) {
                    offlineStoreCache.removeVUrlKey2Value(String.valueOf(i12));
                    return;
                }
            }
            if (i12 == i11) {
                return;
            } else {
                i12++;
            }
        }
    }

    @Override // com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy
    public String generateVUrl(String filePath, String appId, String fileName, String path, boolean needPersistence) {
        Intrinsics.h(filePath, "filePath");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(path, "path");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(FileUtil.getVhost(appId));
        if (path.length() > 0) {
            if (!StringsKt.W(path, "/", false, 2, null)) {
                sb2.append("/");
            }
            sb2.append(path);
        }
        sb2.append("/");
        sb2.append(fileName);
        String string = sb2.toString();
        Intrinsics.g(string, "builder.toString()");
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault()");
        String lowerCase = string.toLowerCase(locale);
        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        put(lowerCase, filePath);
        if (needPersistence) {
            synchronized (this) {
                int iAddAndGet = this.vUrlFileSize.addAndGet(1);
                String str = lowerCase + MAP_SYMBOL + filePath;
                OfflineStoreCache offlineStoreCache = OfflineStoreCache.INSTANCE;
                offlineStoreCache.setVUrlFileSize(iAddAndGet);
                offlineStoreCache.setVUrlKey2Value(String.valueOf(iAddAndGet), str);
                Unit unit = Unit.f67061a;
            }
        }
        return lowerCase;
    }

    @Override // com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy
    public String getFilePath(String vUrl) {
        String str;
        if (vUrl == null) {
            return null;
        }
        ConcurrentHashMap<String, String> concurrentHashMap = this.vUrl2FilePath;
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault()");
        String lowerCase = vUrl.toLowerCase(locale);
        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        String str2 = concurrentHashMap.get(lowerCase);
        if (str2 != null && str2.length() != 0) {
            return str2;
        }
        Locale locale2 = Locale.getDefault();
        Intrinsics.g(locale2, "getDefault()");
        String lowerCase2 = vUrl.toLowerCase(locale2);
        Intrinsics.g(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
        String strDecode = UrlUtils.decode(lowerCase2);
        if (strDecode == null || strDecode.length() == 0 || (str = this.vUrl2FilePath.get(strDecode)) == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    @Override // com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy
    public String getVhost(String appId) {
        Intrinsics.h(appId, "appId");
        return FileUtil.getVhost(appId);
    }

    @Override // com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy
    public void removeByFilePath(String filePath, boolean needPersistence) {
        if (filePath == null || filePath.length() == 0 || !this.filePath2VUrl.containsKey(filePath)) {
            return;
        }
        String strRemove = this.filePath2VUrl.remove(filePath);
        TypeIntrinsics.d(this.vUrl2FilePath).remove(strRemove);
        if (needPersistence) {
            removePersistence(strRemove, filePath);
        }
    }

    @Override // com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy
    public void removeByVUrl(String vUrl, boolean needPersistence) {
        if (vUrl == null || vUrl.length() == 0 || !this.vUrl2FilePath.containsKey(vUrl)) {
            return;
        }
        String strRemove = this.vUrl2FilePath.remove(vUrl);
        TypeIntrinsics.d(this.filePath2VUrl).remove(strRemove);
        if (needPersistence) {
            removePersistence(vUrl, strRemove);
        }
    }
}
