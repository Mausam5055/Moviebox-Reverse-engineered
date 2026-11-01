package com.cloud.tmc.miniapp.prepare.steps.structure;

import android.os.Bundle;
import com.cloud.tmc.integration.chain.endState.DownloadStepEndState;
import com.cloud.tmc.integration.chain.startState.LoadStepStartState;
import com.cloud.tmc.integration.model.PrepareContext;
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

/* JADX INFO: loaded from: classes3.dex */
public abstract class OooO00o extends com.cloud.tmc.miniapp.prepare.steps.OooO00o {
    public static final StepType OooO0oo = StepType.LOAD;

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
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.DownloadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.LoadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppDownloadStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppLoadStep, new Bundle());
            new DownloadStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new LoadStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
        }
        if ("2".equals(prepareContext.getDevTypeCode())) {
            prepareController.moveToNext();
            return;
        }
        if (AppPrepareUtils.INSTANCE.isShellType(prepareContext.getAppModel())) {
            prepareController.moveToNext();
            return;
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        prepareController.lock(prepareController);
        TmcLogger.d(this.OooO00o, "Step_进度:LoadStep");
        OooO0OO(prepareController, prepareContext, o000oooo);
    }

    public abstract void OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo);
}
