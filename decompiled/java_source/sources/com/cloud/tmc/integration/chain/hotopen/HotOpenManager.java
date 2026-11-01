package com.cloud.tmc.integration.chain.hotopen;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.endState.ChainMidEndState;
import com.cloud.tmc.integration.chain.endState.DrawViewEndState;
import com.cloud.tmc.integration.chain.endState.StartStepEndState;
import com.cloud.tmc.integration.chain.errorState.PageErrorState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.AppStageOpenFailState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenEndSuccessShell0State;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenEndSuccessShell1State;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenEndSuccessState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenFaiAndAppOpenFaillShellState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenFaiAndAppOpenFaillState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenFailAndAppOpenEndSuccessShellState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenFailAndAppOpenEndSuccessState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenFailAndAppOpenMidSuccessShellState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenFailAndAppOpenMidSuccessState;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenMidSuccessShell0State;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenMidSuccessShell1State;
import com.cloud.tmc.integration.chain.hotopen.channel.activatePage.PageStageOpenMidSuccessState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.chain.startState.DrawViewStartState;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;", "", "()V", "openActivatePage", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "dataBundle", "Landroid/os/Bundle;", "openActivatePageShell", "hotOpenType", "", "openNewPage", "parsePageStage", "parsePageStageShell", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HotOpenManager {
    public static final HotOpenManager INSTANCE = new HotOpenManager();

    private HotOpenManager() {
    }

    private final void parsePageStage(AppChainContext appChainContext, Bundle dataBundle) {
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        if ((pageChainContextPeek.getCurrentChainEndState() instanceof ChainMidEndState) || ((pageChainContextPeek.getCurrentChainStartState() instanceof DrawViewStartState) && ((pageChainContextPeek.getCurrentChainEndState() instanceof PageErrorState) || pageChainContextPeek.getCurrentChainEndState() == null))) {
            PageStageOpenMidSuccessState pageStageOpenMidSuccessState = new PageStageOpenMidSuccessState();
            pageStageOpenMidSuccessState.reportOld(appChainContext, dataBundle);
            pageStageOpenMidSuccessState.reset(appChainContext, dataBundle);
            pageStageOpenMidSuccessState.reportNew(appChainContext, dataBundle);
            return;
        }
        if (pageChainContextPeek.getCurrentChainEndState() instanceof DrawViewEndState) {
            PageStageOpenEndSuccessState pageStageOpenEndSuccessState = new PageStageOpenEndSuccessState();
            pageStageOpenEndSuccessState.reset(appChainContext, dataBundle);
            pageStageOpenEndSuccessState.reportNew(appChainContext, dataBundle);
            return;
        }
        if (appChainContext.getIsReportMid() && appChainContext.getIsReportEnd()) {
            PageStageOpenFailAndAppOpenEndSuccessState pageStageOpenFailAndAppOpenEndSuccessState = new PageStageOpenFailAndAppOpenEndSuccessState();
            pageStageOpenFailAndAppOpenEndSuccessState.reportOld(appChainContext, dataBundle);
            pageStageOpenFailAndAppOpenEndSuccessState.reset(appChainContext, dataBundle);
        } else if (appChainContext.getIsReportMid() && !appChainContext.getIsReportEnd()) {
            PageStageOpenFailAndAppOpenMidSuccessState pageStageOpenFailAndAppOpenMidSuccessState = new PageStageOpenFailAndAppOpenMidSuccessState();
            pageStageOpenFailAndAppOpenMidSuccessState.reportOld(appChainContext, dataBundle);
            pageStageOpenFailAndAppOpenMidSuccessState.reset(appChainContext, dataBundle);
        } else {
            if (appChainContext.getIsReportMid() || appChainContext.getIsReportEnd()) {
                return;
            }
            PageStageOpenFaiAndAppOpenFaillState pageStageOpenFaiAndAppOpenFaillState = new PageStageOpenFaiAndAppOpenFaillState();
            pageStageOpenFaiAndAppOpenFaillState.reportOld(appChainContext, dataBundle);
            pageStageOpenFaiAndAppOpenFaillState.reset(appChainContext, dataBundle);
        }
    }

    private final void parsePageStageShell(AppChainContext appChainContext, Bundle dataBundle, String hotOpenType) {
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        TmcLogger.d("HotOpenState", "currentChainEndState:" + pageChainContextPeek.getCurrentChainStartState() + ", currentChainEndState:" + pageChainContextPeek.getCurrentChainEndState());
        if ((pageChainContextPeek.getCurrentChainEndState() instanceof ChainMidEndState) || ((pageChainContextPeek.getCurrentChainStartState() instanceof DrawViewStartState) && ((pageChainContextPeek.getCurrentChainEndState() instanceof PageErrorState) || pageChainContextPeek.getCurrentChainEndState() == null))) {
            if (Intrinsics.c(hotOpenType, TmcConstants.HOT_OPEN_TYPE_SHELL_0)) {
                PageStageOpenMidSuccessShell0State pageStageOpenMidSuccessShell0State = new PageStageOpenMidSuccessShell0State();
                pageStageOpenMidSuccessShell0State.reportOld(appChainContext, dataBundle);
                pageStageOpenMidSuccessShell0State.reset(appChainContext, dataBundle);
                pageStageOpenMidSuccessShell0State.keepSituation(appChainContext, dataBundle);
                return;
            }
            if (Intrinsics.c(hotOpenType, TmcConstants.HOT_OPEN_TYPE_SHELL_1)) {
                PageStageOpenMidSuccessShell1State pageStageOpenMidSuccessShell1State = new PageStageOpenMidSuccessShell1State();
                pageStageOpenMidSuccessShell1State.reportOld(appChainContext, dataBundle);
                pageStageOpenMidSuccessShell1State.reset(appChainContext, dataBundle);
                pageStageOpenMidSuccessShell1State.reportNew(appChainContext, dataBundle);
                pageStageOpenMidSuccessShell1State.keepSituation(appChainContext, dataBundle);
                return;
            }
            return;
        }
        if (pageChainContextPeek.getCurrentChainEndState() instanceof DrawViewEndState) {
            if (Intrinsics.c(hotOpenType, TmcConstants.HOT_OPEN_TYPE_SHELL_0)) {
                PageStageOpenEndSuccessShell0State pageStageOpenEndSuccessShell0State = new PageStageOpenEndSuccessShell0State();
                pageStageOpenEndSuccessShell0State.reset(appChainContext, dataBundle);
                pageStageOpenEndSuccessShell0State.keepSituation(appChainContext, dataBundle);
                return;
            } else {
                if (Intrinsics.c(hotOpenType, TmcConstants.HOT_OPEN_TYPE_SHELL_1)) {
                    PageStageOpenEndSuccessShell1State pageStageOpenEndSuccessShell1State = new PageStageOpenEndSuccessShell1State();
                    pageStageOpenEndSuccessShell1State.reset(appChainContext, dataBundle);
                    pageStageOpenEndSuccessShell1State.reportNew(appChainContext, dataBundle);
                    pageStageOpenEndSuccessShell1State.keepSituation(appChainContext, dataBundle);
                    return;
                }
                return;
            }
        }
        if (appChainContext.getIsReportMid() && appChainContext.getIsReportEnd()) {
            PageStageOpenFailAndAppOpenEndSuccessShellState pageStageOpenFailAndAppOpenEndSuccessShellState = new PageStageOpenFailAndAppOpenEndSuccessShellState();
            pageStageOpenFailAndAppOpenEndSuccessShellState.reportOld(appChainContext, dataBundle);
            pageStageOpenFailAndAppOpenEndSuccessShellState.reset(appChainContext, dataBundle);
            pageStageOpenFailAndAppOpenEndSuccessShellState.keepSituation(appChainContext, dataBundle);
            return;
        }
        if (appChainContext.getIsReportMid() && !appChainContext.getIsReportEnd()) {
            PageStageOpenFailAndAppOpenMidSuccessShellState pageStageOpenFailAndAppOpenMidSuccessShellState = new PageStageOpenFailAndAppOpenMidSuccessShellState();
            pageStageOpenFailAndAppOpenMidSuccessShellState.reportOld(appChainContext, dataBundle);
            pageStageOpenFailAndAppOpenMidSuccessShellState.reset(appChainContext, dataBundle);
            pageStageOpenFailAndAppOpenMidSuccessShellState.keepSituation(appChainContext, dataBundle);
            return;
        }
        if (appChainContext.getIsReportMid() || appChainContext.getIsReportEnd()) {
            return;
        }
        PageStageOpenFaiAndAppOpenFaillShellState pageStageOpenFaiAndAppOpenFaillShellState = new PageStageOpenFaiAndAppOpenFaillShellState();
        pageStageOpenFaiAndAppOpenFaillShellState.reportOld(appChainContext, dataBundle);
        pageStageOpenFaiAndAppOpenFaillShellState.reset(appChainContext, dataBundle);
        pageStageOpenFaiAndAppOpenFaillShellState.keepSituation(appChainContext, dataBundle);
    }

    public final void openActivatePage(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        try {
            if (appChainContext.getCurrentChainEndState() instanceof StartStepEndState) {
                parsePageStage(appChainContext, dataBundle);
            } else {
                AppStageOpenFailState appStageOpenFailState = new AppStageOpenFailState();
                appStageOpenFailState.reportOld(appChainContext, dataBundle);
                appStageOpenFailState.reset(appChainContext, dataBundle);
                appStageOpenFailState.keepSituation(appChainContext, dataBundle);
            }
        } catch (Throwable unused) {
        }
    }

    public final void openActivatePageShell(AppChainContext appChainContext, Bundle dataBundle, String hotOpenType) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        Intrinsics.h(hotOpenType, "hotOpenType");
        try {
            if (appChainContext.getCurrentChainEndState() instanceof StartStepEndState) {
                parsePageStageShell(appChainContext, dataBundle, hotOpenType);
            } else {
                AppStageOpenFailState appStageOpenFailState = new AppStageOpenFailState();
                appStageOpenFailState.reportOld(appChainContext, dataBundle);
                appStageOpenFailState.reset(appChainContext, dataBundle);
                appStageOpenFailState.keepSituation(appChainContext, dataBundle);
            }
        } catch (Throwable unused) {
        }
    }

    public final void openNewPage(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        try {
            appChainContext.destroy(dataBundle);
            if (dataBundle.containsKey(ChainPoint.CHAIN_SCENE)) {
                String string = dataBundle.getString(ChainPoint.CHAIN_SCENE, "0");
                Intrinsics.g(string, "dataBundle.getString(ChainPoint.CHAIN_SCENE, \"0\")");
                appChainContext.setScene(string);
                String string2 = dataBundle.getString(TmcConstants.HOT_OPEN_TYPE, "-2");
                Intrinsics.g(string2, "dataBundle.getString(HOT_OPEN_TYPE, \"-2\")");
                appChainContext.setHotOpenType(string2);
            }
            if (dataBundle.containsKey(ChainPoint.CHAIN_OPEN_CHANNEL)) {
                String string3 = dataBundle.getString(ChainPoint.CHAIN_OPEN_CHANNEL, TmcConstants.COLD_OPEN_TYPE);
                Intrinsics.g(string3, "dataBundle.getString(Cha…CHAIN_OPEN_CHANNEL, \"-1\")");
                appChainContext.setOpenChannel(string3);
            }
            appChainContext.getPageIndexOfApp().set(0);
            appChainContext.getOpenedPageCount().set(1);
            appChainContext.setReportMid(false);
            appChainContext.setReportEnd(false);
            appChainContext.setOpenMiniAppMidResult(false);
            appChainContext.setOpenMiniAppEndResult(false);
            appChainContext.setFirstPageStateCostTime(new LinkedHashMap());
            appChainContext.setFirstPageStateRangeTime(new LinkedHashMap());
            appChainContext.setFirstPageMaxStage(0);
            appChainContext.setSyncType(0);
            appChainContext.setSyncTypeMap(new LinkedHashMap());
            appChainContext.setH5ProgressCollectList("");
            appChainContext.getStateCostTime().clear();
            appChainContext.getStateRangeTime().clear();
            for (int i11 = 1; i11 < 12; i11++) {
                appChainContext.getStateRangeTime().put(String.valueOf(i11), CollectionsKt.h(Long.valueOf(System.currentTimeMillis()), Long.valueOf(System.currentTimeMillis())));
                appChainContext.getStateCostTime().put(String.valueOf(i11), 0L);
            }
        } catch (Throwable unused) {
        }
    }
}
