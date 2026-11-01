package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.chain.endState.FwResLoadStepEndState;
import com.cloud.tmc.integration.chain.startState.FwResStartStepStartState;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;

/* JADX INFO: loaded from: classes3.dex */
public class OooOo00 extends OooO00o {
    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.FW_START;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.FwResLoadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.FwResStartStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppFwResLoadStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppFwResStartStep, new Bundle());
            new FwResLoadStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new FwResStartStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
        }
        if (AppPrepareUtils.INSTANCE.isShellType(prepareContext.getAppModel())) {
            prepareController.moveToNext();
            return;
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        AppModel frameWorkModel = prepareContext.getFrameWorkModel();
        this.OooO0O0.updateAppModel(prepareContext.getStartContext(), frameWorkModel, frameWorkModel.getAppId() + "_used");
        if (this.OooO0O0.getPreUnzipStatus(prepareContext.getStartContext(), frameWorkModel.getAppId())) {
            ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(frameWorkModel.getAppId(), "preunzip");
            this.OooO0O0.updatePreUnzipStatus(prepareContext.getStartContext(), frameWorkModel.getAppId(), false);
        }
        TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: manifest 内容校验成功");
        if (!AppDynamicBuildConfig.getDEV_MODE()) {
            ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).setFrameworkVersion(MiniAppLaunch.INSTANCE.getMiniAppVersion(frameWorkModel));
        } else if (!TextUtils.isEmpty(frameWorkModel.getDeveloperVersion())) {
            ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).setFrameworkVersion(frameWorkModel.getDeveloperVersion());
        } else if (!TextUtils.isEmpty(frameWorkModel.getDeployVersion())) {
            ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).setFrameworkVersion(frameWorkModel.getDeployVersion());
        }
        prepareController.moveToNext();
    }
}
