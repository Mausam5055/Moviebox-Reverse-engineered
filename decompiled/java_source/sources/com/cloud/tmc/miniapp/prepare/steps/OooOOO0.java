package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.chain.endState.FwResInfoUpdateStepEndState;
import com.cloud.tmc.integration.chain.startState.FwResDownloadStepStartState;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.NetworkUtils;

/* JADX INFO: loaded from: classes3.dex */
public class OooOOO0 extends OooO00o {
    public boolean OooO0oo = true;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void OooO00o(AppModel appModel, PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo, com.cloud.tmc.miniapp.dialog.Oooo0 oooo0) {
        OooO00o(appModel, prepareController, prepareContext, oooo0);
    }

    public final void OooO00o(AppModel appModel, PrepareController prepareController, PrepareContext prepareContext, @Nullable com.cloud.tmc.miniapp.dialog.Oooo0 oooo0) {
        if (appModel == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "app");
        OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
        bundle.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, this.OooO0oo ? 2 : 1);
        if (!prepareContext.getVirtualStart()) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_INSERT, "", bundle);
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
        if (this.OooO0oo && !TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.checkFwVersionUpdate(miniAppVersion, miniAppVersion2)) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_START, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_START.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO0oo ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        int i11 = this.OooO0oo ? 2 : 1;
        String str = this.OooO00o;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("downloadpkg enableLock = ");
        sbOooO00o.append(this.OooO0oo);
        TmcLogger.d(str, sbOooO00o.toString());
        this.OooO0OO.downloadApp(appModel, i11, true, new OooOO0O(this, oooo0, prepareContext, miniAppVersion, miniAppVersion2, appModel, prepareController));
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.FW_DOWNLOAD;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(final PrepareController prepareController, final PrepareContext prepareContext, final o000oOoO o000oooo) throws PrepareException {
        boolean offlineCache;
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.FwResInfoUpdateStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.FwResDownloadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppFwResInfoUpdateStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppFwResDownloadStep, new Bundle());
            new FwResInfoUpdateStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new FwResDownloadStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            if (prepareContext.getActivity() != null) {
                OffScreenWebviewPool.INSTANCE.retryOffScreenRender(prepareContext.getActivity(), this, prepareContext);
            }
        }
        if (AppPrepareUtils.INSTANCE.isShellType(prepareContext.getAppModel())) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
            }
            prepareController.moveToNext();
            return;
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        TmcLogger.d(this.OooO00o, "Step_FW_DOWNLOAD");
        if (AppDynamicBuildConfig.getDEV_MODE() && this.OooO0O0.getAppModelFromDev(prepareContext.getStartContext(), "100000") != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
            }
            prepareController.moveToNext();
            return;
        }
        AppModel frameWorkModel = prepareContext.getFrameWorkModel();
        if (this.OooO0OO.isDownloaded(prepareContext.getStartContext(), frameWorkModel)) {
            TmcLogger.d(this.OooO00o, "Step_FW_Download_资源包已下载，跳转到解压步骤");
            this.OooO0oo = false;
        } else if (frameWorkModel.getFromCacheType() == 3 || frameWorkModel.getFromCacheType() == 4) {
            TmcLogger.d(this.OooO00o, "use native or offline resource");
            this.OooO0o0.deleteAllFileForVersion(frameWorkModel);
            this.OooO0o0.createBaseDirectory(frameWorkModel);
            if (frameWorkModel.getFromCacheType() == 3) {
                TmcLogger.d(this.OooO00o, "use native resource");
                offlineCache = this.OooO0OO.getNativeCache(prepareContext.getStartContext(), frameWorkModel);
            } else {
                TmcLogger.d(this.OooO00o, "use offline resource");
                offlineCache = this.OooO0OO.getOfflineCache(prepareContext.getStartContext(), frameWorkModel);
            }
            TmcLogger.d(this.OooO00o, "Step_FW_DOWNLOAD：本地是否有内置包：" + offlineCache);
            this.OooO0oo = offlineCache ^ true;
        }
        final AppModel appModelFromPre = this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), frameWorkModel.getAppId());
        if (appModelFromPre != null) {
            if (this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModelFromPre)) {
                MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
                String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModelFromPre);
                if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.checkFwVersionUpdate(miniAppVersion, miniAppVersion2)) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModelFromPre, PointAnalyseType.POINT_PACKAGE_UPDATE_START, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                }
                o000oooo.updateStepProgress(LoadStepAction.STEP_FINISH_DOWNLOAD);
                prepareContext.setFrameWorkModel(appModelFromPre);
                Bundle bundle4 = new Bundle();
                bundle4.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 1);
                if (!prepareContext.getVirtualStart()) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle4);
                }
                prepareController.moveToNext();
                return;
            }
            if (appModelFromPre.isForceUpdate()) {
                this.OooO0oo = true;
            }
            TmcLogger.d(this.OooO00o, "Step_FW_Download_删除当前所有缓存");
            this.OooO0o0.deleteAllFileForVersion(appModelFromPre);
            this.OooO0o0.createBaseDirectory(appModelFromPre);
        } else if (!this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "not need download fw resource pkg");
            o000oooo.updateStepProgress(LoadStepAction.STEP_FINISH_DOWNLOAD);
            Bundle bundle5 = new Bundle();
            bundle5.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle5);
            }
            prepareController.moveToNext();
            return;
        }
        if (this.OooO0oo) {
            prepareController.lock(prepareController);
        }
        if (appModelFromPre != null) {
            MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
            if (miniAppLaunch2.checkShowDownloadTips(appModelFromPre.getPackageSize()) && NetworkUtils.isConnected()) {
                Bundle bundle6 = new Bundle();
                bundle6.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 2);
                if (!prepareContext.getVirtualStart()) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle6);
                }
                TmcLogger.d(this.OooO00o, "show downlaod tips");
                this.OooO0oo = true;
                prepareController.lock(prepareController);
                miniAppLaunch2.showUpdateFwZipDialog(prepareContext.getStartContext(), appModelFromPre.getPackageSize(), new com.cloud.tmc.miniapp.prepare.callback.OooO00o() { // from class: com.cloud.tmc.miniapp.prepare.steps.d
                    @Override // com.cloud.tmc.miniapp.prepare.callback.OooO00o
                    public final void OooO00o(com.cloud.tmc.miniapp.dialog.Oooo0 oooo0) {
                        this.f23635a.OooO00o(appModelFromPre, prepareController, prepareContext, o000oooo, oooo0);
                    }
                });
                return;
            }
            int i11 = this.OooO0oo ? 2 : 1;
            Bundle bundle7 = new Bundle();
            bundle7.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, i11);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle7);
            }
            TmcLogger.d(this.OooO00o, "Step_FW_Download_开始下载资源包");
            OooO00o(appModelFromPre, prepareController, prepareContext, null);
        } else if (this.OooO0oo) {
            try {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(prepareContext.getStartContext(), "100000", "100000_pre");
                this.OooO0O0.refreshUpdateTime(prepareContext.getStartContext(), "100000", 0L);
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
            }
            prepareController.moveToError(new PrepareException("fwAppModelFromPre is not exist"));
            return;
        }
        if (this.OooO0oo) {
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_FW_Download异步下载，跳转下一步");
        Bundle bundle8 = new Bundle();
        bundle8.putInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 1);
        if (!prepareContext.getVirtualStart()) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle8);
        }
        o000oooo.updateStepProgress(LoadStepAction.STEP_FINISH_DOWNLOAD);
        prepareController.unlock(prepareController);
        prepareController.moveToNext();
    }
}
