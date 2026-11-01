package com.cloud.tmc.miniapp.prepare.steps.structure;

import android.os.Bundle;
import com.cloud.tmc.integration.chain.endState.FwResStartStepEndState;
import com.cloud.tmc.integration.chain.startState.DownloadStepStartState;
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
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.StepType;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.offline.download.OfflineManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class OooO0O0 extends com.cloud.tmc.miniapp.prepare.steps.OooO00o {
    public static final StepType OooO0oo = StepType.OFFLINE;

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return OooO0oo;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            com.cloud.tmc.miniapp.prepare.steps.OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.FwResStartStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.DownloadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppFwResStartStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppDownloadStep, new Bundle());
            new FwResStartStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new DownloadStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            if (prepareContext.getActivity() != null) {
                OffScreenWebviewPool.INSTANCE.retryOffScreenRender(prepareContext.getActivity(), this, prepareContext);
            }
        }
        try {
            OfflineManager.downloadPkgFromPlatform(prepareContext.getAppId(), !OfflineManager.checkMiniAppInDisableAntiShakeList(prepareContext.getAppId()));
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
        }
        if ("2".equals(prepareContext.getDevTypeCode())) {
            AppModel appModel = prepareContext.getAppModel();
            if (appModel != null) {
                appModel.setDevMode(2);
            }
            Bundle bundle2 = new Bundle();
            bundle2.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
            }
            prepareController.moveToNext();
            return;
        }
        if (!AppPrepareUtils.INSTANCE.isShellType(prepareContext.getAppModel())) {
            super.OooO0O0(prepareController, prepareContext, o000oooo);
            OooO0OO(prepareController, prepareContext, o000oooo);
            TmcLogger.d(this.OooO00o, "Step_Download");
        } else {
            Bundle bundle3 = new Bundle();
            bundle3.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
            }
            prepareController.moveToNext();
        }
    }

    public abstract void OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo);
}
