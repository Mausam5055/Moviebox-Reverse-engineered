package com.cloud.tmc.integration.chain.hotopen.channel.activatePage;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;", "Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;", "()V", "keepSituation", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "dataBundle", "Landroid/os/Bundle;", "reportNew", "reportOld", "reset", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PageStageOpenEndSuccessShell0State implements IHotOpenState {
    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void keepSituation(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        log("keepSituation");
        appChainContext.getPageIndexOfApp().set(0);
        appChainContext.getOpenedPageCount().set(0);
        appChainContext.setReportMid(false);
        appChainContext.setReportEnd(false);
        appChainContext.setOpenMiniAppMidResult(false);
        appChainContext.setOpenMiniAppEndResult(false);
        appChainContext.setMaxStage(11);
        appChainContext.getStateCostTime().clear();
        appChainContext.getStateRangeTime().clear();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int maxStage = appChainContext.getMaxStage();
        if (1 <= maxStage) {
            int i11 = 1;
            while (true) {
                appChainContext.getStateCostTime().put(String.valueOf(i11), 0L);
                appChainContext.getStateRangeTime().put(String.valueOf(i11), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
                if (i11 == maxStage) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        appChainContext.setSyncType(0);
        appChainContext.getSyncTypeMap().clear();
        appChainContext.setH5ProgressCollectList("");
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void log(String str) {
        IHotOpenState.DefaultImpls.log(this, str);
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void reportNew(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void reportOld(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void reset(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        log("reset");
        if (dataBundle.containsKey(ChainPoint.CHAIN_SCENE)) {
            String string = dataBundle.getString(ChainPoint.CHAIN_SCENE, "0");
            Intrinsics.g(string, "dataBundle.getString(ChainPoint.CHAIN_SCENE, \"0\")");
            appChainContext.setScene(string);
            String string2 = dataBundle.getString(TmcConstants.HOT_OPEN_TYPE, "-2");
            Intrinsics.g(string2, "dataBundle.getString(Tmc…ants.HOT_OPEN_TYPE, \"-2\")");
            appChainContext.setHotOpenType(string2);
            for (PageChainContext pageChainContext : appChainContext.getPageContexts()) {
                String string3 = dataBundle.getString(ChainPoint.CHAIN_SCENE, "0");
                Intrinsics.g(string3, "dataBundle.getString(ChainPoint.CHAIN_SCENE, \"0\")");
                pageChainContext.setScene(string3);
            }
        }
        if (dataBundle.containsKey(ChainPoint.CHAIN_OPEN_CHANNEL)) {
            String string4 = dataBundle.getString(ChainPoint.CHAIN_OPEN_CHANNEL, TmcConstants.COLD_OPEN_TYPE);
            Intrinsics.g(string4, "dataBundle.getString(Cha…CHAIN_OPEN_CHANNEL, \"-1\")");
            appChainContext.setOpenChannel(string4);
            for (PageChainContext pageChainContext2 : appChainContext.getPageContexts()) {
                String string5 = dataBundle.getString(ChainPoint.CHAIN_OPEN_CHANNEL, TmcConstants.COLD_OPEN_TYPE);
                Intrinsics.g(string5, "dataBundle.getString(Cha…CHAIN_OPEN_CHANNEL, \"-1\")");
                pageChainContext2.setOpenChannel(string5);
            }
        }
    }
}
