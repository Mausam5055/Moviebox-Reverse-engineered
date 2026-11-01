package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.model.OffPkgConfigExtParams;
import com.cloud.tmc.offline.download.model.OfflineDownloadBuilder;
import com.cloud.tmc.offline.download.model.OfflinePkgCachePath;
import com.cloud.tmc.offline.download.model.PackageInclude;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.lang.reflect.Type;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class TmcOfflineManagerProxyImpl implements IOfflineManagerProxy {

    public static final class OooO00o extends Lambda implements Function1<OfflinePkgCachePath, Unit> {
        public final /* synthetic */ Function1<JsonObject, Unit> OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public OooO00o(Function1<? super JsonObject, Unit> function1) {
            super(1);
            this.OooO00o = function1;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            String json;
            JsonElement string;
            OfflinePkgCachePath offlinePkgCachePath = (OfflinePkgCachePath) obj;
            if (offlinePkgCachePath != null) {
                try {
                    json = TmcGsonUtilsKt.toJson(offlinePkgCachePath);
                } catch (Throwable unused) {
                    string = null;
                }
            } else {
                json = null;
            }
            string = JsonParser.parseString(json);
            Function1<JsonObject, Unit> function1 = this.OooO00o;
            if (function1 != null) {
                function1.invoke(string != null ? string.getAsJsonObject() : null);
            }
            return Unit.f67061a;
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy
    public void downloadPkg(String app, String group, String networkType, String pkgEncrypted, String pkgUrl, String paths, Function1<? super JsonObject, Unit> function1) {
        ArrayList arrayList;
        Intrinsics.h(app, "app");
        Intrinsics.h(group, "group");
        Intrinsics.h(networkType, "networkType");
        Intrinsics.h(pkgEncrypted, "pkgEncrypted");
        Intrinsics.h(pkgUrl, "pkgUrl");
        Intrinsics.h(paths, "paths");
        try {
            Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.defaultimpl.TmcOfflineManagerProxyImpl$downloadPkg$tempPaths$1
            }.getType();
            Intrinsics.g(type, "object : TypeToken<ArrayList<String>>() {}.type");
            arrayList = (ArrayList) TmcGsonUtils.fromJson(paths, type);
        } catch (Throwable th2) {
            TmcLogger.e("downloadPkg failed!", th2);
            arrayList = null;
        }
        PackageInclude packageInclude = new PackageInclude(group, arrayList, pkgUrl);
        OfflineDownloadBuilder offlineDownloadBuilder = new OfflineDownloadBuilder();
        offlineDownloadBuilder.setApp(app);
        offlineDownloadBuilder.setGroup(group);
        offlineDownloadBuilder.setNetworkType(networkType);
        offlineDownloadBuilder.setPkgEncrypted(pkgEncrypted);
        offlineDownloadBuilder.setPkgUrl(pkgUrl);
        offlineDownloadBuilder.setExtParams(new OffPkgConfigExtParams(null, CollectionsKt.e(packageInclude), Boolean.FALSE, null));
        OfflineManager.downloadPkg(offlineDownloadBuilder, new OooO00o(function1));
    }

    @Override // com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy
    public void downloadPkgFromPlatform(String str, boolean z10) {
        OfflineManager.downloadPkgFromPlatform$default(str, z10, null, 4, null);
    }

    @Override // com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy
    public boolean enableVerifyServerFile(String str) {
        return OfflineManager.enableVerifyServerFile(str);
    }

    @Override // com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy
    public void getOfflinePkgCachePath(String group, String pkgUrl, Function1<? super JsonObject, Unit> function1) {
        String json;
        JsonElement string;
        Intrinsics.h(group, "group");
        Intrinsics.h(pkgUrl, "pkgUrl");
        OfflinePkgCachePath offlinePkgCachePath = OfflineManager.getOfflinePkgCachePath(group, pkgUrl);
        if (offlinePkgCachePath != null) {
            try {
                json = TmcGsonUtilsKt.toJson(offlinePkgCachePath);
            } catch (Throwable unused) {
                string = null;
            }
        } else {
            json = null;
        }
        string = JsonParser.parseString(json);
        if (function1 != null) {
            function1.invoke(string != null ? string.getAsJsonObject() : null);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy
    public File getOfflineResources(String str, String str2) {
        return OfflineManager.getOfflineResources(str, str2);
    }

    @Override // com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy
    public boolean verifyServerFile(String str, String str2) {
        return OfflineManager.verifyServerFile(str, str2);
    }
}
