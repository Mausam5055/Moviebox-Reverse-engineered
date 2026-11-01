package com.cloud.tmc.miniapp.prepare.steps.singlepackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.OooO;
import com.cloud.tmc.miniapp.prepare.steps.OooOO0;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o extends com.cloud.tmc.miniapp.prepare.steps.structure.OooO0O0 {
    public boolean OooO = true;

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO00o$OooO00o, reason: collision with other inner class name */
    public class C0340OooO00o implements PackageDownloadCallback {
        public final /* synthetic */ boolean OooO00o;
        public final /* synthetic */ PrepareContext OooO0O0;
        public final /* synthetic */ AppModel OooO0OO;
        public final /* synthetic */ String OooO0Oo;
        public final /* synthetic */ PrepareController OooO0o;
        public final /* synthetic */ String OooO0o0;
        public final /* synthetic */ o000oOoO OooO0oO;

        public C0340OooO00o(boolean z10, PrepareContext prepareContext, AppModel appModel, String str, String str2, PrepareController prepareController, o000oOoO o000oooo) {
            this.OooO00o = z10;
            this.OooO0O0 = prepareContext;
            this.OooO0OO = appModel;
            this.OooO0Oo = str;
            this.OooO0o0 = str2;
            this.OooO0o = prepareController;
            this.OooO0oO = o000oooo;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onCancel(String str, String str2) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_USER_EXIT.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO00o ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0).putData(TmcConstants.TRACK_MPU_RESULT, "IOException").putData(TmcConstants.TRACK_MPU_ERROR_CODE, "D006").putData(TmcConstants.TRACK_MPU_ERROR_MSG, "Canceled"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            try {
                OooO00o.this.OooO0OO.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable th2) {
                TmcLogger.e(TmcConstants.TAG, th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFailed(String str, String str2, String str3, IOException iOException, String str4) {
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0O0.getStartContext(), this.OooO0OO, false);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_FAILED.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO00o ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0).putData(TmcConstants.TRACK_MPU_RESULT, iOException.getClass().getSimpleName()).putData(TmcConstants.TRACK_MPU_ERROR_CODE, str2).putData(TmcConstants.TRACK_MPU_ERROR_MSG, iOException.getMessage()), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            try {
                OooO00o.this.OooO0OO.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable th2) {
                TmcLogger.e(TmcConstants.TAG, th2);
            }
            if (!this.OooO00o) {
                this.OooO0oO.backgroundDownloadZipAsync(this.OooO0OO, false);
                return;
            }
            if (!TextUtils.isEmpty(this.OooO0Oo) && !TextUtils.isEmpty(this.OooO0o0) && MiniAppLaunch.INSTANCE.compareVersion(this.OooO0o0, this.OooO0Oo)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL.putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0).putData(TmcConstants.TRACK_MPU_RESULT, "DOWNLOAD_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            TmcLogger.d(OooO00o.this.OooO00o, "Step_Download_资源包下载失败，" + str3);
            this.OooO0o.moveToError(new PrepareException("4", "download error:" + str3 + "   url:" + this.OooO0OO.getPackageUrl()));
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFinish(@Nullable String str, String str2) {
            TmcLogger.d(OooO00o.this.OooO00o, "Step_Download_资源包下载完成，进行解压");
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0O0.getStartContext(), this.OooO0OO, true);
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "SinglePkgDownloadStep Finish:changeZipDownloadStatus true:downloadUrl:" + str + ";appInfo:appId:" + this.OooO0OO.getAppId() + ";deployVersion:" + this.OooO0OO.getDeployVersion() + ";mainPkgUrl:" + this.OooO0OO.getMainPackageUrl() + ";fullPkgUrl:" + this.OooO0OO.getPackageUrl());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_SUCCESS.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO00o ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            try {
                OooO00o.this.OooO0OO.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable th2) {
                TmcLogger.e(TmcConstants.TAG, th2);
            }
            if (this.OooO00o) {
                PrepareController prepareController = this.OooO0o;
                prepareController.unlock(prepareController);
                this.OooO0o.moveToNext();
                return;
            }
            try {
                if (MiniAppLaunch.INSTANCE.checkEnableBackgroundUnzip()) {
                    com.cloud.tmc.miniapp.utils.OooOO0 oooOO0 = com.cloud.tmc.miniapp.utils.OooOO0.OooO00o;
                    Context context = this.OooO0O0.getStartContext();
                    AppModel appModel = this.OooO0OO;
                    Intrinsics.h(context, "context");
                    Intrinsics.h(appModel, "appModel");
                    com.cloud.tmc.miniapp.utils.OooOO0.OooO00o(oooOO0, context, appModel, false, false, 12);
                }
            } catch (Throwable th3) {
                TmcLogger.e(TmcConstants.TAG, th3);
            }
            this.OooO0oO.backgroundDownloadZipAsync(this.OooO0OO, true);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onPrepare(String str, String str2) {
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onProgress(String str, int i11, String str2) {
            if (this.OooO00o) {
                TmcLogger.d(OooO00o.this.OooO00o, "Step_Download_下载资源包" + i11);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
            com.cloud.tmc.kernel.proxy.network.a.a(this, str, i11, str2, j11, j12);
        }
    }

    public final void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo, AppModel appModel, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "app");
        com.cloud.tmc.miniapp.prepare.steps.OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
        bundle.putInt(ChainPoint.DOWNLOAD_APP_MODE, z10 ? 2 : 1);
        if (!prepareContext.getVirtualStart()) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_INSERT, "", bundle);
        }
        String packageUrl = appModel.getPackageUrl();
        if (packageUrl == null || packageUrl.isEmpty()) {
            if (!z10) {
                o000oooo.backgroundDownloadZipAsync(appModel, false);
            }
            prepareController.moveToError(new PrepareException(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, "packageUrl is null or empty"));
            return;
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
        if (z10 && !TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.compareVersion(miniAppVersion2, miniAppVersion)) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_START, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_START.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, z10 ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC), TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        int i11 = z10 ? 2 : 1;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("SinglePkgDownloadStep startDownload:downloadUrl:");
        sbOooO00o.append(appModel.getPackageUrl());
        sbOooO00o.append(";appInfo:appId:");
        sbOooO00o.append(appModel.getAppId());
        sbOooO00o.append(";deployVersion:");
        sbOooO00o.append(appModel.getDeployVersion());
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, sbOooO00o.toString());
        this.OooO0OO.downloadApp(appModel, i11, true, new C0340OooO00o(z10, prepareContext, appModel, miniAppVersion, miniAppVersion2, prepareController, o000oooo));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0103  */
    /* JADX WARN: Code duplicated, block: B:35:0x0120  */
    /* JADX WARN: Code duplicated, block: B:37:0x0123  */
    /* JADX WARN: Code duplicated, block: B:39:0x012f  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:51:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:57:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:58:0x021f  */
    /* JADX WARN: Code duplicated, block: B:59:0x023e  */
    /* JADX WARN: Code duplicated, block: B:61:0x0242  */
    /* JADX WARN: Code duplicated, block: B:63:0x0259  */
    /* JADX WARN: Code duplicated, block: B:68:0x0270  */
    /* JADX WARN: Code duplicated, block: B:71:0x0283  */
    /* JADX WARN: Code duplicated, block: B:74:0x0288  */
    /* JADX WARN: Code duplicated, block: B:77:0x0299  */
    /* JADX WARN: Code duplicated, block: B:79:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:89:0x0307  */
    /* JADX WARN: Code duplicated, block: B:91:0x0317  */
    /* JADX WARN: Code duplicated, block: B:94:0x02ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x021f, please report this as an issue */
    @Override // com.cloud.tmc.miniapp.prepare.steps.structure.OooO0O0
    public void OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
        boolean offlineCache;
        boolean z10;
        AppModel appModelFromPre;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        MiniAppLaunch miniAppLaunch;
        AppModel appModelFromUsed;
        String miniAppVersion;
        String lowestOpenedVersion;
        String miniAppVersion2;
        String miniAppVersion3;
        Bundle bundle4;
        String miniAppVersion4;
        AppModel appModel = prepareContext.getAppModel();
        if (prepareContext.getDevStatus()) {
            this.OooO = true;
            this.OooO0o0.deleteAllFileForVersion(appModel);
            this.OooO0o0.createBaseDirectory(appModel);
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            appPrepareUtils.changeZipDownloadStatus(prepareContext.getStartContext(), appModel, false);
            appPrepareUtils.changeZipUnCompressStatus(prepareContext.getStartContext(), appModel, false);
            appPrepareUtils.changeTarUnCompressStatus(prepareContext.getStartContext(), appModel, false);
            prepareController.lock(prepareController);
            OooO00o(prepareController, prepareContext, o000oooo, appModel, this.OooO);
            Bundle bundle5 = new Bundle();
            bundle5.putInt(ChainPoint.DOWNLOAD_APP_MODE, 2);
            if (prepareContext.getVirtualStart()) {
                return;
            }
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle5);
            return;
        }
        if (!this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModel)) {
            if (appModel.getFromCacheType() == 3 || appModel.getFromCacheType() == 4) {
                this.OooO0o0.deleteAllFileForVersion(appModel);
                this.OooO0o0.createBaseDirectory(appModel);
                if (appModel.getFromCacheType() == 3) {
                    offlineCache = this.OooO0OO.getNativeCache(prepareContext.getStartContext(), appModel);
                    TmcLogger.d(this.OooO00o, "use native pkg resource");
                    z10 = false;
                } else {
                    offlineCache = this.OooO0OO.getOfflineCache(prepareContext.getStartContext(), appModel);
                    TmcLogger.d(this.OooO00o, "use offline pkg resource");
                    z10 = true;
                }
                TmcLogger.d(this.OooO00o, "Step_FW_Download_资源包已下载，跳转到解压步骤->" + offlineCache);
                this.OooO = offlineCache ^ true;
            }
            appModelFromPre = this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId());
            if (appModelFromPre != null && !TextUtils.isEmpty(appModelFromPre.getMainPackageUrl())) {
                TmcLogger.d(this.OooO00o, "DownloadStep preAppinfo is  subpackage,not use");
                appModelFromPre = appModel;
            }
            if (z10) {
                MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
                miniAppVersion4 = miniAppLaunch2.getMiniAppVersion(appModelFromPre);
                String miniAppVersion5 = miniAppLaunch2.getMiniAppVersion(appModel);
                if (TextUtils.isEmpty(miniAppVersion4) || TextUtils.isEmpty(miniAppVersion5) || !miniAppLaunch2.compareVersion(miniAppVersion5, miniAppVersion4)) {
                    appModel = appModelFromPre;
                }
            } else {
                appModel = appModelFromPre;
            }
            if (appModel != null) {
                if (this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModel)) {
                    MiniAppLaunch miniAppLaunch3 = MiniAppLaunch.INSTANCE;
                    miniAppVersion2 = miniAppLaunch3.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
                    miniAppVersion3 = miniAppLaunch3.getMiniAppVersion(appModel);
                    if (!TextUtils.isEmpty(miniAppVersion2) && !TextUtils.isEmpty(miniAppVersion3) && miniAppLaunch3.compareVersion(miniAppVersion3, miniAppVersion2)) {
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_START, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion3), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                    }
                    String str = this.OooO00o;
                    StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("appModelFromPre is not null,Download_step_当前版本已有缓存");
                    sbOooO00o.append(miniAppLaunch3.getMiniAppVersion(appModel));
                    TmcLogger.d(str, sbOooO00o.toString());
                    prepareContext.setAppModel(appModel);
                    bundle4 = new Bundle();
                    bundle4.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
                    if (!prepareContext.getVirtualStart()) {
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle4);
                    }
                    prepareController.moveToNext();
                    return;
                }
                TmcLogger.d(this.OooO00o, "appModelFromPre is not null,Step_Download_删除当前所有缓存");
                this.OooO0o0.deleteAllFileForVersion(appModel);
                this.OooO0o0.createBaseDirectory(appModel);
                miniAppLaunch = MiniAppLaunch.INSTANCE;
                if (miniAppLaunch.checkFocusUpdateMyByteApp(appModel, 2) && (appModelFromUsed = this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId())) != null) {
                    miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelFromUsed);
                    lowestOpenedVersion = appModel.getLowestOpenedVersion();
                    if (miniAppLaunch.compareVersion(lowestOpenedVersion, miniAppVersion)) {
                        this.OooO = true;
                        TmcLogger.d(this.OooO00o, "Download_step_当前版本缓存不符合可打开版本号，强制更新最低可打开版本:" + lowestOpenedVersion + "参与比对的版本号:" + miniAppVersion);
                    } else {
                        String str2 = this.OooO00o;
                        StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("Download_step_当前版本缓存符合可打开版本号");
                        sbOooO00o2.append(miniAppLaunch.getMiniAppVersion(appModelFromUsed));
                        sbOooO00o2.append("最低可打开版本号:");
                        sbOooO00o2.append(lowestOpenedVersion);
                        sbOooO00o2.append("参与比对的版本号:");
                        sbOooO00o2.append(miniAppVersion);
                        TmcLogger.d(str2, sbOooO00o2.toString());
                        this.OooO = false;
                        prepareContext.setAppModel(appModelFromUsed);
                    }
                }
            } else if (!this.OooO) {
                TmcLogger.d(this.OooO00o, "not need download resource pkg");
                bundle = new Bundle();
                bundle.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
                if (!prepareContext.getVirtualStart()) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle);
                }
                prepareController.moveToNext();
                return;
            }
            if (this.OooO) {
                TmcLogger.d(this.OooO00o, "need download resource pkg");
                prepareController.lock(prepareController);
            }
            TmcLogger.d(this.OooO00o, "Step_Download_开始下载资源包");
            if (appModel != null) {
                int i11 = this.OooO ? 2 : 1;
                bundle3 = new Bundle();
                bundle3.putInt(ChainPoint.DOWNLOAD_APP_MODE, i11);
                if (!prepareContext.getVirtualStart()) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
                }
                OooO00o(prepareController, prepareContext, o000oooo, appModel, this.OooO);
            } else if (this.OooO) {
                try {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(prepareContext.getStartContext(), prepareContext.getAppId(), prepareContext.getAppId() + "_pre");
                    this.OooO0O0.refreshUpdateTime(prepareContext.getStartContext(), prepareContext.getAppId(), 0L);
                } catch (Throwable th2) {
                    TmcLogger.e(this.OooO00o, th2);
                }
                prepareController.moveToError(new PrepareException("appModelFromPre is not exist"));
                return;
            }
            if (this.OooO) {
            }
            bundle2 = new Bundle();
            bundle2.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
            }
            prepareController.moveToNext();
        }
        TmcLogger.d(this.OooO00o, "Step_FW_Download_资源包已下载，跳转到解压步骤");
        this.OooO = false;
        z10 = false;
        appModelFromPre = this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId());
        if (appModelFromPre != null) {
            TmcLogger.d(this.OooO00o, "DownloadStep preAppinfo is  subpackage,not use");
            appModelFromPre = appModel;
        }
        if (z10) {
            MiniAppLaunch miniAppLaunch4 = MiniAppLaunch.INSTANCE;
            miniAppVersion4 = miniAppLaunch4.getMiniAppVersion(appModelFromPre);
            String miniAppVersion6 = miniAppLaunch4.getMiniAppVersion(appModel);
            if (TextUtils.isEmpty(miniAppVersion4)) {
                appModel = appModelFromPre;
            } else {
                appModel = appModelFromPre;
            }
        } else {
            appModel = appModelFromPre;
        }
        if (appModel != null) {
            if (this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModel)) {
                MiniAppLaunch miniAppLaunch5 = MiniAppLaunch.INSTANCE;
                miniAppVersion2 = miniAppLaunch5.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
                miniAppVersion3 = miniAppLaunch5.getMiniAppVersion(appModel);
                if (!TextUtils.isEmpty(miniAppVersion2)) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_START, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion3), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                }
                String str3 = this.OooO00o;
                StringBuilder sbOooO00o3 = com.cloud.tmc.miniapp.OooO00o.OooO00o("appModelFromPre is not null,Download_step_当前版本已有缓存");
                sbOooO00o3.append(miniAppLaunch5.getMiniAppVersion(appModel));
                TmcLogger.d(str3, sbOooO00o3.toString());
                prepareContext.setAppModel(appModel);
                bundle4 = new Bundle();
                bundle4.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
                if (!prepareContext.getVirtualStart()) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle4);
                }
                prepareController.moveToNext();
                return;
            }
            TmcLogger.d(this.OooO00o, "appModelFromPre is not null,Step_Download_删除当前所有缓存");
            this.OooO0o0.deleteAllFileForVersion(appModel);
            this.OooO0o0.createBaseDirectory(appModel);
            miniAppLaunch = MiniAppLaunch.INSTANCE;
            if (miniAppLaunch.checkFocusUpdateMyByteApp(appModel, 2)) {
                miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelFromUsed);
                lowestOpenedVersion = appModel.getLowestOpenedVersion();
                if (miniAppLaunch.compareVersion(lowestOpenedVersion, miniAppVersion)) {
                    String str4 = this.OooO00o;
                    StringBuilder sbOooO00o4 = com.cloud.tmc.miniapp.OooO00o.OooO00o("Download_step_当前版本缓存符合可打开版本号");
                    sbOooO00o4.append(miniAppLaunch.getMiniAppVersion(appModelFromUsed));
                    sbOooO00o4.append("最低可打开版本号:");
                    sbOooO00o4.append(lowestOpenedVersion);
                    sbOooO00o4.append("参与比对的版本号:");
                    sbOooO00o4.append(miniAppVersion);
                    TmcLogger.d(str4, sbOooO00o4.toString());
                    this.OooO = false;
                    prepareContext.setAppModel(appModelFromUsed);
                } else {
                    this.OooO = true;
                    TmcLogger.d(this.OooO00o, "Download_step_当前版本缓存不符合可打开版本号，强制更新最低可打开版本:" + lowestOpenedVersion + "参与比对的版本号:" + miniAppVersion);
                }
            }
        } else if (!this.OooO) {
            TmcLogger.d(this.OooO00o, "not need download resource pkg");
            bundle = new Bundle();
            bundle.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle);
            }
            prepareController.moveToNext();
            return;
        }
        if (this.OooO) {
            TmcLogger.d(this.OooO00o, "need download resource pkg");
            prepareController.lock(prepareController);
        }
        TmcLogger.d(this.OooO00o, "Step_Download_开始下载资源包");
        if (appModel != null) {
            if (this.OooO) {
            }
            bundle3 = new Bundle();
            bundle3.putInt(ChainPoint.DOWNLOAD_APP_MODE, i11);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
            }
            OooO00o(prepareController, prepareContext, o000oooo, appModel, this.OooO);
        } else if (this.OooO) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(prepareContext.getStartContext(), prepareContext.getAppId(), prepareContext.getAppId() + "_pre");
            this.OooO0O0.refreshUpdateTime(prepareContext.getStartContext(), prepareContext.getAppId(), 0L);
            prepareController.moveToError(new PrepareException("appModelFromPre is not exist"));
            return;
        }
        if (this.OooO) {
            bundle2 = new Bundle();
            bundle2.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
            }
            prepareController.moveToNext();
        }
    }
}
