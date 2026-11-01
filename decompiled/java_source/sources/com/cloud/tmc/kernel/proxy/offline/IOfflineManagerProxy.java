package com.cloud.tmc.kernel.proxy.offline;

import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.TmcOfflineManagerProxyImpl")
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001JR\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0018\b\u0002\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fH&J\u001a\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0012\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H&J2\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0018\b\u0002\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fH&J\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0018\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "downloadPkg", "", "app", "", "group", NetworkBridge.KEY_NETWORK_TYPE, "pkgEncrypted", "pkgUrl", "paths", "callback", "Lkotlin/Function1;", "Lcom/google/gson/JsonObject;", "downloadPkgFromPlatform", "packageName", "antiShake", "", "enableVerifyServerFile", "appId", "getOfflinePkgCachePath", "getOfflineResources", "Ljava/io/File;", "url", "verifyServerFile", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IOfflineManagerProxy extends Proxiable {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void downloadPkg$default(IOfflineManagerProxy iOfflineManagerProxy, String str, String str2, String str3, String str4, String str5, String str6, Function1 function1, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: downloadPkg");
            }
            iOfflineManagerProxy.downloadPkg(str, str2, str3, str4, str5, str6, (i11 & 64) != 0 ? null : function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void getOfflinePkgCachePath$default(IOfflineManagerProxy iOfflineManagerProxy, String str, String str2, Function1 function1, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getOfflinePkgCachePath");
            }
            if ((i11 & 4) != 0) {
                function1 = null;
            }
            iOfflineManagerProxy.getOfflinePkgCachePath(str, str2, function1);
        }
    }

    void downloadPkg(String app, String group, String networkType, String pkgEncrypted, String pkgUrl, String paths, Function1<? super JsonObject, Unit> callback);

    void downloadPkgFromPlatform(String packageName, boolean antiShake);

    boolean enableVerifyServerFile(String appId);

    void getOfflinePkgCachePath(String group, String pkgUrl, Function1<? super JsonObject, Unit> callback);

    File getOfflineResources(String appId, String url);

    boolean verifyServerFile(String appId, String url);
}
