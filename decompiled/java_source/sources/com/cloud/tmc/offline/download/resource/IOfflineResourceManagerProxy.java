package com.cloud.tmc.offline.download.resource;

import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.offline.download.resource.OfflineResourceManagerProxyImpl")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tH&J\u0014\u0010\n\u001a\u0004\u0018\u00010\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H&J\u001c\u0010\r\u001a\u00020\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\tH&J\u001c\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\tH&¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "generateVUrl", "", NativeRequestBridge.KEY_FILE_PATH, "appId", "fileName", "path", "needPersistence", "", "getFilePath", "vUrl", "getVhost", "removeByFilePath", "", "removeByVUrl", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IOfflineResourceManagerProxy extends Proxiable {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ String generateVUrl$default(IOfflineResourceManagerProxy iOfflineResourceManagerProxy, String str, String str2, String str3, String str4, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generateVUrl");
            }
            if ((i11 & 16) != 0) {
                z10 = false;
            }
            return iOfflineResourceManagerProxy.generateVUrl(str, str2, str3, str4, z10);
        }

        public static /* synthetic */ void removeByFilePath$default(IOfflineResourceManagerProxy iOfflineResourceManagerProxy, String str, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeByFilePath");
            }
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            iOfflineResourceManagerProxy.removeByFilePath(str, z10);
        }

        public static /* synthetic */ void removeByVUrl$default(IOfflineResourceManagerProxy iOfflineResourceManagerProxy, String str, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeByVUrl");
            }
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            iOfflineResourceManagerProxy.removeByVUrl(str, z10);
        }
    }

    String generateVUrl(String filePath, String appId, String fileName, String path, boolean needPersistence);

    String getFilePath(String vUrl);

    String getVhost(String appId);

    void removeByFilePath(String filePath, boolean needPersistence);

    void removeByVUrl(String vUrl, boolean needPersistence);
}
