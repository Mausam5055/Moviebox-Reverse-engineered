package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import com.cloud.tmc.integration.chain.endState.DownloadStepEndState;
import com.cloud.tmc.integration.chain.endState.FwResDownloadStepEndState;
import com.cloud.tmc.integration.chain.endState.FwResInfoUpdateStepEndState;
import com.cloud.tmc.integration.chain.endState.FwResLoadStepEndState;
import com.cloud.tmc.integration.chain.endState.FwResStartStepEndState;
import com.cloud.tmc.integration.chain.endState.LoadStepEndState;
import com.cloud.tmc.integration.chain.endState.LocalDataFileScanStepEndState;
import com.cloud.tmc.integration.chain.endState.StartStepEndState;
import com.cloud.tmc.integration.chain.endState.UpdateStepEndState;
import com.cloud.tmc.integration.chain.startState.DownloadStepStartState;
import com.cloud.tmc.integration.chain.startState.FwResDownloadStepStartState;
import com.cloud.tmc.integration.chain.startState.FwResInfoUpdateStepStartState;
import com.cloud.tmc.integration.chain.startState.FwResLoadStepStartState;
import com.cloud.tmc.integration.chain.startState.FwResStartStepStartState;
import com.cloud.tmc.integration.chain.startState.LoadStepStartState;
import com.cloud.tmc.integration.chain.startState.LocalDataFileScanStepStartState;
import com.cloud.tmc.integration.chain.startState.StartStepStartState;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;

/* JADX INFO: loaded from: classes3.dex */
public class o00O0O extends OooO00o {
    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.START;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "app");
        OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId = prepareContext.getAppId();
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_CHAIN_END;
        performanceAnalyseProxy.record(appId, pointAnalyseType, ChainPoint.UpdateStep, bundle);
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId2 = prepareContext.getAppId();
        PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_APP_CHAIN_END;
        performanceAnalyseProxy2.record(appId2, pointAnalyseType2, ChainPoint.AppUpdateStep, new Bundle());
        new UpdateStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId3 = prepareContext.getAppId();
        PointAnalyseType pointAnalyseType3 = PointAnalyseType.POINT_CHAIN_START;
        performanceAnalyseProxy3.record(appId3, pointAnalyseType3, ChainPoint.FwResInfoUpdateStep, bundle);
        PerformanceAnalyseProxy performanceAnalyseProxy4 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId4 = prepareContext.getAppId();
        PointAnalyseType pointAnalyseType4 = PointAnalyseType.POINT_APP_CHAIN_START;
        performanceAnalyseProxy4.record(appId4, pointAnalyseType4, ChainPoint.AppFwResInfoUpdateStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.FwResInfoUpdateStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppFwResInfoUpdateStep, new Bundle());
        new FwResInfoUpdateStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new FwResInfoUpdateStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.FwResDownloadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppFwResDownloadStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.FwResDownloadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppFwResDownloadStep, new Bundle());
        new FwResDownloadStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new FwResDownloadStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.FwResLoadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppFwResLoadStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.FwResLoadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppFwResLoadStep, new Bundle());
        new FwResLoadStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new FwResLoadStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.FwResStartStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppFwResStartStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.FwResStartStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppFwResStartStep, new Bundle());
        new FwResStartStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new FwResStartStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.DownloadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppDownloadStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.DownloadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppDownloadStep, new Bundle());
        new DownloadStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new DownloadStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.LoadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppLoadStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.LoadStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppLoadStep, new Bundle());
        new LoadStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new LoadStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.LocalDataFileScanStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppLocalDataFileScanStep, new Bundle());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.LocalDataFileScanStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppLocalDataFileScanStep, new Bundle());
        new LocalDataFileScanStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        new LocalDataFileScanStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType3, ChainPoint.StartStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType4, ChainPoint.AppStartStep, new Bundle());
        new StartStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        AppLoadResult appLoadResult = new AppLoadResult();
        appLoadResult.appVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(prepareContext.getAppModel());
        appLoadResult.mainHtmlUrl = FrameworkConstants.TEMPLATE_URL;
        appLoadResult.appType = TmcConstants.TYPE_WEB_TINY;
        PrepareCallbackParam prepareCallbackParam = new PrepareCallbackParam(prepareContext);
        prepareCallbackParam.appLoadResult = appLoadResult;
        new PrepareCallbackParam(prepareContext).appLoadResult = appLoadResult;
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType, ChainPoint.StartStep, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), pointAnalyseType2, ChainPoint.AppStartStep, new Bundle());
        new StartStepEndState(bundle).setChainContext(prepareContext.getAppChainContext());
        o000oooo.OooO00o(prepareCallbackParam, prepareController);
        prepareController.finish();
    }
}
