package com.cloud.tmc.miniapp.utils;

import android.app.Application;
import android.content.Context;
import com.cloud.tmc.integration.callback.PackageInstallCallback;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.Utils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooOO0 {
    public static final OooOO0 OooO00o = new OooOO0();
    public static final CopyOnWriteArrayList<String> OooO0O0 = new CopyOnWriteArrayList<>();
    public static final PathProxy OooO0OO = (PathProxy) TmcProxy.get(PathProxy.class);
    public static final FileProxy OooO0Oo = (FileProxy) TmcProxy.get(FileProxy.class);
    public static final TmcAppInfoManager OooO0o0 = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);

    public static final void OooO00o(AppModel appModel, Context context, boolean z10, boolean z11, boolean z12, String str) {
        Intrinsics.h(appModel, "$appModel");
        Intrinsics.h(context, "$context");
        if (!z12) {
            if (!z10) {
                OooO0O0.add(appModel.getAppId());
            }
            if (z11) {
                OooO00o.OooO00o(context, appModel);
                return;
            }
            return;
        }
        OooOO0 oooOO0 = OooO00o;
        TmcLogger.d("PreUnzipUtil", ":" + appModel.getAppId() + ": tar 包解压完成");
        try {
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            if (!Intrinsics.c(JsonUtil.INSTANCE.getValueFromJson(appPrepareUtils.getManifestJson(appModel), "appId"), appModel.getAppId())) {
                oooOO0.OooO00o(context, appModel);
                return;
            }
            TmcLogger.d("PreUnzipUtil", ":" + appModel.getAppId() + ": manifest 内容校验成功");
            appPrepareUtils.changeTarUnCompressStatus(context, appModel, true);
            OooO0Oo.delectDownloadFileForVersion(appModel);
            TmcAppInfoManager tmcAppInfoManager = OooO0o0;
            tmcAppInfoManager.delectOldVersionFilesAndUpdate(context, appModel);
            TmcLogger.d("PreUnzipUtil", "存入 的 used" + MiniAppLaunch.INSTANCE.getMiniAppVersion(appModel));
            tmcAppInfoManager.updateAppModel(context, appModel, appModel.getAppId() + "_used");
            String appId = appModel.getAppId();
            if (appId != null) {
                tmcAppInfoManager.updatePreUnzipStatus(context, appId, true);
            }
            OooO0O0.remove(appModel.getAppId());
        } catch (Throwable unused) {
            OooO00o.OooO00o(context, appModel);
        }
    }

    public static /* synthetic */ void OooO00o(OooOO0 oooOO0, Context context, AppModel appModel, boolean z10, boolean z11, int i11) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        if ((i11 & 8) != 0) {
            z11 = true;
        }
        oooOO0.OooO0OO(context, appModel, z10, z11);
    }

    public static final void OooO0O0(AppModel appModel, Context context, boolean z10, boolean z11, boolean z12, String str) {
        Intrinsics.h(appModel, "$appModel");
        Intrinsics.h(context, "$context");
        if (z12) {
            OooOO0 oooOO0 = OooO00o;
            TmcLogger.d("PreUnzipUtil", "pre unzip :" + appModel.getAppId() + " zip 包解压完成");
            oooOO0.OooO00o(context, appModel, z10, z11);
            return;
        }
        OooOO0 oooOO1 = OooO00o;
        TmcLogger.d("PreUnzipUtil", appModel.getAppId() + " unzip error ");
        if (z10) {
            return;
        }
        TmcLogger.d("PreUnzipUtil", appModel.getAppId() + " unzip retry");
        OooO0O0.add(appModel.getAppId());
        oooOO1.OooO00o(context, appModel);
    }

    public final void OooO00o(Application application, List preUnzipList) {
        Unit unit;
        Intrinsics.h(application, "application");
        Intrinsics.h(preUnzipList, "preUnzipList");
        TmcAppInfoManager tmcAppInfoManager = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);
        TmcResourceManager tmcResourceManager = (TmcResourceManager) TmcProxy.get(TmcResourceManager.class);
        Iterator it = preUnzipList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            AppModel appModel = tmcAppInfoManager.getAppModel(application, AppInfoQuery.INSTANCE.make(str));
            if (appModel != null) {
                Intrinsics.g(appModel, "appModel");
                if (AppPrepareUtils.INSTANCE.checkTarUnCompressStatus(application, appModel)) {
                    TmcLogger.d("PreUnzipUtil", str + " 已解压，跳过预解压步骤");
                } else {
                    int fromCacheType = appModel.getFromCacheType();
                    if (fromCacheType == 3) {
                        MiniAppLaunch.INSTANCE.buildDownloadPath(appModel);
                        if (tmcResourceManager.getNativeCache(application, appModel)) {
                            OooOO0 oooOO0 = OooO00o;
                            TmcLogger.d("PreUnzipUtil", "CACHE_TYPE_NATIVE_unzip");
                            OooO00o(oooOO0, (Context) application, appModel, false, false, 12);
                        }
                    } else if (fromCacheType == 4) {
                        MiniAppLaunch.INSTANCE.buildDownloadPath(appModel);
                        if (tmcResourceManager.getOfflineCache(application, appModel)) {
                            OooOO0 oooOO1 = OooO00o;
                            TmcLogger.d("PreUnzipUtil", "CACHE_TYPE_OFFLINE_unzip");
                            OooO00o(oooOO1, (Context) application, appModel, false, false, 12);
                        }
                    } else if (tmcResourceManager.isDownloaded(application, appModel)) {
                        OooOO0 oooOO2 = OooO00o;
                        TmcLogger.d("PreUnzipUtil", "CACHE_TYPE_DOWNLOAD_unzip");
                        OooO00o(oooOO2, (Context) application, appModel, false, false, 12);
                    }
                }
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit == null) {
                TmcLogger.d("PreUnzipUtil", "it-> " + str + " appmodel is null");
            }
        }
    }

    public final void OooO00o(Context context, AppModel appModel) {
        String appId = appModel.getAppId();
        if (appId != null) {
            try {
                if (appModel.getFromCacheType() == 3) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(Utils.getApp(), appId, "isReadAssets_" + appId + "_" + AppDynamicBuildConfig.getSDK_VERSION(), false);
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(Utils.getApp(), appId, appId + "_native_" + AppDynamicBuildConfig.getSDK_VERSION(), "");
                }
                AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
                appPrepareUtils.changeZipUnCompressStatus(context, appModel, false);
                appPrepareUtils.changeTarUnCompressStatus(context, appModel, false);
                PathProxy pathProxy = OooO0OO;
                FileUtils.delete(pathProxy.getTarUnCompressPath(appModel));
                FileUtils.delete(pathProxy.getZipUnCompressPath(appModel));
            } catch (Throwable unused) {
                TmcLogger.e("PreUnzipUtil", "native assets remove error " + appId);
                Unit unit = Unit.f67061a;
            }
        }
    }

    public final void OooO00o(Context context, AppModel appModel, boolean z10, boolean z11) {
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        if (appPrepareUtils.checkSHA256(appModel)) {
            TmcLogger.d("PreUnzipUtil", ":" + appModel.getAppId() + " sha256 校验正确，解压 tar 包");
            OooO0O0(context, appModel, z10, z11);
            return;
        }
        TmcLogger.d("PreUnzipUtil", " :" + appModel.getAppId() + " sha256 校验不一致，删除所有缓存");
        appPrepareUtils.clearAllFilesForVersion(context, appModel);
    }

    public final void OooO0O0(final Context context, final AppModel appModel, final boolean z10, final boolean z11) {
        ((TmcResourceManager) TmcProxy.get(TmcResourceManager.class)).installApp(appModel, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.utils.l
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z12, String str) {
                OooOO0.OooO00o(appModel, context, z10, z11, z12, str);
            }
        });
    }

    @JvmOverloads
    public final void OooO0OO(final Context context, final AppModel appModel, final boolean z10, final boolean z11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        ((TmcResourceManager) TmcProxy.get(TmcResourceManager.class)).installZip(context, appModel, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.utils.k
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z12, String str) {
                OooOO0.OooO0O0(appModel, context, z10, z11, z12, str);
            }
        });
    }
}
