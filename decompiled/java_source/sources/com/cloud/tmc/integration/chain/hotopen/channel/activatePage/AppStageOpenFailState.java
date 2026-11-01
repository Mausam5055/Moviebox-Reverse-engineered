package com.cloud.tmc.integration.chain.hotopen.channel.activatePage;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.ChainState;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;", "Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;", "()V", "keepSituation", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "dataBundle", "Landroid/os/Bundle;", "reportAppOpenEndFail", "data", "reportAppOpenMidFail", "reportNew", "reportOld", "reportPageOpenEndFail", "reportPageOpenMidFail", "reset", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AppStageOpenFailState implements IHotOpenState {
    private final void reportAppOpenEndFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", AppStageOpenFailState.class.getName() + "_reportAppOpenEndFail");
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openMiniAppResult", "false");
        bundle.putString("openMiniAppFailedReason", appChainContext.getOpenMiniAppFailedReason());
        bundle.putInt("maxStage", appChainContext.getMaxStage());
        bundle.putInt("syncType", appChainContext.getSyncType());
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        boolean z10 = appChainContext.getCurrentChainStartState() != null && appChainContext.getCurrentChainEndState() == null;
        bundle.putString("isExitInStage", String.valueOf(z10));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(appChainContext.getStateRangeTime());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.putAll(appChainContext.getStateCostTime());
        if (z10 && appChainContext.getCurrentChainStartState() != null) {
            ChainState currentChainStartState = appChainContext.getCurrentChainStartState();
            Intrinsics.e(currentChainStartState);
            if (linkedHashMap.get(String.valueOf(currentChainStartState.getStep())) != null) {
                ChainState currentChainStartState2 = appChainContext.getCurrentChainStartState();
                Intrinsics.e(currentChainStartState2);
                List list = (List) linkedHashMap.get(String.valueOf(currentChainStartState2.getStep()));
                if (list != null && list.size() == 1) {
                    ChainState currentChainStartState3 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState3);
                    List list2 = (List) linkedHashMap.get(String.valueOf(currentChainStartState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    ChainState currentChainStartState4 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState4);
                    String strValueOf = String.valueOf(currentChainStartState4.getStep());
                    ChainState currentChainStartState5 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState5);
                    List list3 = (List) linkedHashMap.get(String.valueOf(currentChainStartState5.getStep()));
                    long jLongValue = list3 != null ? ((Number) list3.get(1)).longValue() : 0L;
                    ChainState currentChainStartState6 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState6);
                    List list4 = (List) linkedHashMap.get(String.valueOf(currentChainStartState6.getStep()));
                    linkedHashMap2.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? ((Number) list4.get(0)).longValue() : 0L)));
                }
            }
        }
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("openedPageCount", String.valueOf(appChainContext.getOpenedPageCount().get()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_end", bundle);
    }

    private final void reportAppOpenMidFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", AppStageOpenFailState.class.getName() + "_reportAppOpenMidFail");
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openMiniAppResult", "false");
        bundle.putString("openMiniAppFailedReason", appChainContext.getOpenMiniAppFailedReason());
        bundle.putInt("maxStage", appChainContext.getMaxStage());
        bundle.putInt("syncType", appChainContext.getSyncType());
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        boolean z10 = appChainContext.getCurrentChainStartState() != null && appChainContext.getCurrentChainEndState() == null;
        bundle.putString("isExitInStage", String.valueOf(z10));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(appChainContext.getStateRangeTime());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.putAll(appChainContext.getStateCostTime());
        if (z10 && appChainContext.getCurrentChainStartState() != null) {
            ChainState currentChainStartState = appChainContext.getCurrentChainStartState();
            Intrinsics.e(currentChainStartState);
            if (linkedHashMap.get(String.valueOf(currentChainStartState.getStep())) != null) {
                ChainState currentChainStartState2 = appChainContext.getCurrentChainStartState();
                Intrinsics.e(currentChainStartState2);
                List list = (List) linkedHashMap.get(String.valueOf(currentChainStartState2.getStep()));
                if (list != null && list.size() == 1) {
                    ChainState currentChainStartState3 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState3);
                    List list2 = (List) linkedHashMap.get(String.valueOf(currentChainStartState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    ChainState currentChainStartState4 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState4);
                    String strValueOf = String.valueOf(currentChainStartState4.getStep());
                    ChainState currentChainStartState5 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState5);
                    List list3 = (List) linkedHashMap.get(String.valueOf(currentChainStartState5.getStep()));
                    long jLongValue = list3 != null ? ((Number) list3.get(1)).longValue() : 0L;
                    ChainState currentChainStartState6 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState6);
                    List list4 = (List) linkedHashMap.get(String.valueOf(currentChainStartState6.getStep()));
                    linkedHashMap2.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? ((Number) list4.get(0)).longValue() : 0L)));
                }
            }
        }
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("openedPageCount", String.valueOf(appChainContext.getOpenedPageCount().get()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_mid", bundle);
    }

    private final void reportPageOpenEndFail(AppChainContext appChainContext, Bundle dataBundle) {
        TmcLogger.d("chainPoint", AppStageOpenFailState.class.getName() + "_reportPageOpenEndFail");
        Bundle bundle = new Bundle();
        bundle.putAll(dataBundle);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", appChainContext.getOpenMiniAppFailedReason());
        bundle.putInt("maxStage", appChainContext.getMaxStage());
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        boolean z10 = appChainContext.getCurrentChainStartState() != null && appChainContext.getCurrentChainEndState() == null;
        bundle.putString("isExitInStage", String.valueOf(z10));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(appChainContext.getStateRangeTime());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.putAll(appChainContext.getStateCostTime());
        if (z10 && appChainContext.getCurrentChainStartState() != null) {
            ChainState currentChainStartState = appChainContext.getCurrentChainStartState();
            Intrinsics.e(currentChainStartState);
            if (linkedHashMap.get(String.valueOf(currentChainStartState.getStep())) != null) {
                ChainState currentChainStartState2 = appChainContext.getCurrentChainStartState();
                Intrinsics.e(currentChainStartState2);
                List list = (List) linkedHashMap.get(String.valueOf(currentChainStartState2.getStep()));
                if (list != null && list.size() == 1) {
                    ChainState currentChainStartState3 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState3);
                    List list2 = (List) linkedHashMap.get(String.valueOf(currentChainStartState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    ChainState currentChainStartState4 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState4);
                    String strValueOf = String.valueOf(currentChainStartState4.getStep());
                    ChainState currentChainStartState5 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState5);
                    List list3 = (List) linkedHashMap.get(String.valueOf(currentChainStartState5.getStep()));
                    long jLongValue = list3 != null ? ((Number) list3.get(1)).longValue() : 0L;
                    ChainState currentChainStartState6 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState6);
                    List list4 = (List) linkedHashMap.get(String.valueOf(currentChainStartState6.getStep()));
                    linkedHashMap2.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? ((Number) list4.get(0)).longValue() : 0L)));
                }
            }
        }
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("pageIndex", "1");
        bundle.putString("isAdd", "false");
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_end", bundle);
    }

    private final void reportPageOpenMidFail(AppChainContext appChainContext, Bundle dataBundle) {
        TmcLogger.d("chainPoint", AppStageOpenFailState.class.getName() + "_reportPageOpenMidFail");
        Bundle bundle = new Bundle();
        bundle.putAll(dataBundle);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", appChainContext.getOpenMiniAppFailedReason());
        bundle.putInt("maxStage", appChainContext.getMaxStage());
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        boolean z10 = appChainContext.getCurrentChainStartState() != null && appChainContext.getCurrentChainEndState() == null;
        bundle.putString("isExitInStage", String.valueOf(z10));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(appChainContext.getStateRangeTime());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.putAll(appChainContext.getStateCostTime());
        if (z10 && appChainContext.getCurrentChainStartState() != null) {
            ChainState currentChainStartState = appChainContext.getCurrentChainStartState();
            Intrinsics.e(currentChainStartState);
            if (linkedHashMap.get(String.valueOf(currentChainStartState.getStep())) != null) {
                ChainState currentChainStartState2 = appChainContext.getCurrentChainStartState();
                Intrinsics.e(currentChainStartState2);
                List list = (List) linkedHashMap.get(String.valueOf(currentChainStartState2.getStep()));
                if (list != null && list.size() == 1) {
                    ChainState currentChainStartState3 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState3);
                    List list2 = (List) linkedHashMap.get(String.valueOf(currentChainStartState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    ChainState currentChainStartState4 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState4);
                    String strValueOf = String.valueOf(currentChainStartState4.getStep());
                    ChainState currentChainStartState5 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState5);
                    List list3 = (List) linkedHashMap.get(String.valueOf(currentChainStartState5.getStep()));
                    long jLongValue = list3 != null ? ((Number) list3.get(1)).longValue() : 0L;
                    ChainState currentChainStartState6 = appChainContext.getCurrentChainStartState();
                    Intrinsics.e(currentChainStartState6);
                    List list4 = (List) linkedHashMap.get(String.valueOf(currentChainStartState6.getStep()));
                    linkedHashMap2.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? ((Number) list4.get(0)).longValue() : 0L)));
                }
            }
        }
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("pageIndex", "1");
        bundle.putString("isAdd", "false");
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_mid", bundle);
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void keepSituation(AppChainContext appChainContext, Bundle dataBundle) {
        PageChainContext pageChainContextPeek;
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        log("keepSituation");
        appChainContext.getPageIndexOfApp().set(0);
        appChainContext.getOpenedPageCount().set(0);
        appChainContext.setReportMid(false);
        appChainContext.setReportEnd(false);
        appChainContext.setOpenMiniAppMidResult(false);
        appChainContext.setOpenMiniAppEndResult(false);
        ChainState currentChainStartState = appChainContext.getCurrentChainStartState();
        appChainContext.setMaxStage(currentChainStartState != null ? currentChainStartState.getStep() : 1);
        appChainContext.getStateCostTime().clear();
        appChainContext.getStateRangeTime().clear();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int maxStage = appChainContext.getMaxStage();
        long j11 = 0;
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
        if (appChainContext.getPageContexts().size() <= 0 || (pageChainContextPeek = appChainContext.getPageContexts().peek()) == null) {
            return;
        }
        Intrinsics.g(pageChainContextPeek, "peek()");
        pageChainContextPeek.setPageIndexOfApp(0);
        pageChainContextPeek.setReportMid(false);
        pageChainContextPeek.setReportEnd(false);
        pageChainContextPeek.setOpenMiniPageMidResult(false);
        pageChainContextPeek.setOpenMiniPageEndResult(false);
        ChainState currentChainStartState2 = pageChainContextPeek.getCurrentChainStartState();
        int i12 = 12;
        pageChainContextPeek.setMaxStage(currentChainStartState2 != null ? currentChainStartState2.getStep() : 12);
        appChainContext.setFirstPageMaxStage(pageChainContextPeek.getMaxStage());
        pageChainContextPeek.setAppStateCostTime(appChainContext.getStateCostTime());
        pageChainContextPeek.setAppStateRangeTime(appChainContext.getStateRangeTime());
        int maxStage2 = pageChainContextPeek.getMaxStage();
        if (12 <= maxStage2) {
            while (true) {
                pageChainContextPeek.getStateCostTime().put(String.valueOf(i12), Long.valueOf(j11));
                pageChainContextPeek.getStateRangeTime().put(String.valueOf(i12), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
                if (i12 == maxStage2) {
                    break;
                }
                i12++;
                j11 = 0;
            }
        }
        appChainContext.setFirstPageStateCostTime(pageChainContextPeek.getStateCostTime());
        appChainContext.setFirstPageStateRangeTime(pageChainContextPeek.getStateRangeTime());
        pageChainContextPeek.setH5ProgressCollectList("");
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
        log("reportOld");
        if (!appChainContext.getIsReportMid()) {
            reportPageOpenMidFail(appChainContext, dataBundle);
            reportAppOpenMidFail(appChainContext, dataBundle);
        }
        if (appChainContext.getIsReportEnd()) {
            return;
        }
        reportPageOpenEndFail(appChainContext, dataBundle);
        reportAppOpenEndFail(appChainContext, dataBundle);
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
