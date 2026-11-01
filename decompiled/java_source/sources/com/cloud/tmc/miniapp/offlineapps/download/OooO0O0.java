package com.cloud.tmc.miniapp.offlineapps.download;

import android.app.Application;
import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.FilePathUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 {
    public static Application OooO0O0;
    public static com.cloud.tmc.miniapp.offlineapps.download.OooO00o OooO0OO;
    public static final OooO0O0 OooO00o = new OooO0O0();
    public static final ThreadPoolExecutor OooO0Oo = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new OooO0o(), new com.cloud.tmc.miniapp.offlineapps.download.OooO0OO());

    public interface OooO00o {
        void OooO00o(String str, String str2, String str3, boolean z10);
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.offlineapps.download.OooO0O0$OooO0O0, reason: collision with other inner class name */
    public static final class C0337OooO0O0 implements OooO00o {
        @Override // com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO00o
        public void OooO00o(String appId, String logoUrl, String path, boolean z10) {
            com.cloud.tmc.miniapp.offlineapps.download.OooO00o oooO00o;
            Intrinsics.h(appId, "appId");
            Intrinsics.h(logoUrl, "logoUrl");
            Intrinsics.h(path, "path");
            TmcLogger.d("IconDownloadManager", "[downloadIcon] appId:" + appId + ", logoUrl:" + logoUrl + ", path:" + path + ", success:" + z10);
            if (z10 && OooO0O0.OooO00o.OooO00o(appId, logoUrl, path) && (oooO00o = OooO0O0.OooO0OO) != null) {
                oooO00o.OooO00o(appId, logoUrl, path);
            }
        }
    }

    public static final class OooO0OO implements PackageDownloadCallback {
        public final /* synthetic */ OooO00o OooO00o;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ String OooO0OO;
        public final /* synthetic */ String OooO0Oo;
        public final /* synthetic */ Ref.ObjectRef<String> OooO0o0;

        public OooO0OO(OooO00o oooO00o, String str, String str2, String str3, Ref.ObjectRef<String> objectRef) {
            this.OooO00o = oooO00o;
            this.OooO0O0 = str;
            this.OooO0OO = str2;
            this.OooO0Oo = str3;
            this.OooO0o0 = objectRef;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onCancel(String str, String str2) {
            this.OooO00o.OooO00o(this.OooO0O0, this.OooO0OO, "", false);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFailed(String str, String errorCode, String errorMsg, IOException e11, String str2) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
            Intrinsics.h(e11, "e");
            this.OooO00o.OooO00o(this.OooO0O0, this.OooO0OO, "", false);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFinish(String str, String str2) {
            String strGenerateVUrl;
            try {
                if (FilePathUtils.INSTANCE.getDowngradeStatus(this.OooO0O0)) {
                    strGenerateVUrl = ((IImageResourceManager) TmcProxy.get(IImageResourceManager.class)).generateVUrl(this.OooO0Oo, "1000886706715795456", this.OooO0o0.element);
                    Intrinsics.g(strGenerateVUrl, "manager.generateVUrl(downloadPath, MC_APPID, name)");
                } else {
                    strGenerateVUrl = ((IFileResourceManager) TmcProxy.get(IFileResourceManager.class)).generateVUrl(this.OooO0Oo, "1000886706715795456", this.OooO0o0.element, TmcConstants.TEMP_DATA_PATH);
                    Intrinsics.g(strGenerateVUrl, "manager.generateVUrl(dow…Constants.TEMP_DATA_PATH)");
                }
                this.OooO00o.OooO00o(this.OooO0O0, this.OooO0OO, strGenerateVUrl, true);
            } catch (Throwable th2) {
                TmcLogger.e("IconDownloadManager", "[downloadIcon] error", th2);
                this.OooO00o.OooO00o(this.OooO0O0, this.OooO0OO, "", false);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onPrepare(String url1, String callbackId1) {
            Intrinsics.h(url1, "url1");
            Intrinsics.h(callbackId1, "callbackId1");
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onProgress(String url1, int i11, String callbackId1) {
            Intrinsics.h(url1, "url1");
            Intrinsics.h(callbackId1, "callbackId1");
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void progressUpdate(String url1, int i11, String callbackId1, long j11, long j12) {
            Intrinsics.h(url1, "url1");
            Intrinsics.h(callbackId1, "callbackId1");
        }
    }

    public static final void OooO0O0(String appId, String logoUrl) {
        Intrinsics.h(appId, "$appId");
        Intrinsics.h(logoUrl, "$logoUrl");
        try {
            OooO0O0 oooO0O0 = OooO00o;
            if (oooO0O0.OooO0Oo(appId, logoUrl)) {
                oooO0O0.OooO00o(appId, logoUrl, new C0337OooO0O0());
            }
        } catch (Throwable th2) {
            TmcLogger.e("IconDownloadManager", "[addTask] error", th2);
        }
    }

    public final void OooO00o(final String appId, final String logoUrl) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(logoUrl, "logoUrl");
        if (((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_OFFLINE_APPS_ABILITY_SWITCH, true)) {
            OooO0Oo.submit(new Runnable() { // from class: com.cloud.tmc.miniapp.offlineapps.download.a
                @Override // java.lang.Runnable
                public final void run() {
                    OooO0O0.OooO0O0(appId, logoUrl);
                }
            });
        } else {
            TmcLogger.d("IconDownloadManager", "[addTask] offlineAppsAbilitySwitch is close");
        }
    }

    /* JADX WARN: Type inference failed for: r3v15, types: [T, java.lang.Object] */
    public final void OooO00o(String str, String str2, OooO00o oooO00o) {
        List listL;
        if (str.length() == 0) {
            TmcLogger.e("IconDownloadManager", "[downloadIcon] appId isEmpty");
            return;
        }
        if (str2.length() == 0) {
            TmcLogger.e("IconDownloadManager", "[downloadIcon] appid:" + str + " logoUrl isEmpty");
            return;
        }
        String path = Uri.parse(str2).getPath();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        if (!TextUtils.isEmpty(path)) {
            if (path == null || (listL = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) == null) {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                objectRef.element = listL.get(listL.size() - 1);
            }
        }
        if (((CharSequence) objectRef.element).length() == 0) {
            TmcLogger.e("IconDownloadManager", "[downloadIcon] name is empty");
            return;
        }
        String appBaseFilePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath("1000886706715795456");
        String str3 = File.separator;
        String str4 = appBaseFilePath + str3 + TmcConstants.TEMP_DATA_PATH + str3 + objectRef.element;
        if (FileUtils.createFileByDeleteOldFile(str4)) {
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(str, str2, str4, null, String.valueOf(System.currentTimeMillis()), new OooO0OO(oooO00o, str, str2, str4, objectRef));
        } else {
            TmcLogger.e("IconDownloadManager", "[downloadIcon] createFileByDeleteOldFile fail");
        }
    }

    public final boolean OooO00o(String str, String str2, String str3) {
        boolean z10;
        try {
            Application application = OooO0O0;
            if (application != null) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(application, str, str2, str3);
                z10 = true;
            } else {
                z10 = false;
            }
        } catch (Throwable th2) {
            TmcLogger.e("IconDownloadManager", "[saveDownloadIconCache] error", th2);
        }
        TmcLogger.d("IconDownloadManager", "[saveDownloadIconCache] appId:" + str + ", logoUrl:" + str2 + ", path:" + str3 + ", ret:" + z10);
        return z10;
    }

    public final String OooO0OO(String appId, String logoUrl) {
        String string;
        Intrinsics.h(appId, "appId");
        Intrinsics.h(logoUrl, "logoUrl");
        try {
            Application application = OooO0O0;
            string = application != null ? ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(application, appId, logoUrl) : null;
        } catch (Throwable th2) {
            TmcLogger.e("IconDownloadManager", "[getIconPath] error", th2);
        }
        TmcLogger.d("IconDownloadManager", "[getIconPath] appId:" + appId + ", logoUrl:" + logoUrl + ", path:" + ((Object) string));
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    public final boolean OooO0Oo(String str, String str2) {
        boolean z10;
        String string;
        if (str.length() <= 0 || str2.length() <= 0) {
            z10 = false;
        } else {
            z10 = true;
            try {
                Application application = OooO0O0;
                if (application != null && (string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(application, str, str2)) != null && string.length() != 0) {
                    z10 = false;
                }
            } catch (Throwable th2) {
                TmcLogger.e("IconDownloadManager", "[iconIsNeedDownload] error", th2);
            }
        }
        TmcLogger.d("IconDownloadManager", "[iconIsNeedDownload] appId:" + str + ", logoUrl:" + str2 + ", needDownload:" + z10);
        return z10;
    }
}
