package com.cloud.tmc.integration.chain.hotopen.channel.activatePage;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.chain.startState.DrawViewStartState;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.utils.DeviceUtil;
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
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002JJ\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0016¨\u0006\u001c"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;", "Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;", "()V", "appendStagesOnFail", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "tmpStateRangeTime", "", "", "", "", "tmpStateCostTime", "lastStep", "", "appendStagesOnSuccess", "keepSituation", "", "dataBundle", "Landroid/os/Bundle;", "reportAppOpenEndFail", "data", "reportAppOpenMidSuccess", "reportNew", "reportOld", "reportPageOpenEndFail", "reportPageOpenMidSuccess", "reset", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PageStageOpenMidSuccessShell1State implements IHotOpenState {
    private final boolean appendStagesOnFail(AppChainContext appChainContext, Map<String, List<Long>> tmpStateRangeTime, Map<String, Long> tmpStateCostTime, int lastStep) {
        TmcLogger.d("chainPoint", PageStageOpenMidSuccessShell1State.class.getName() + "_appendStagesOnFail");
        if (appChainContext.getPageContexts().isEmpty()) {
            return false;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        tmpStateRangeTime.putAll(appChainContext.getStateRangeTime());
        tmpStateCostTime.putAll(appChainContext.getStateCostTime());
        int i11 = 12;
        if (12 <= lastStep) {
            while (true) {
                List<Long> list = pageChainContextPeek.getStateRangeTime().get(String.valueOf(i11));
                if (list != null) {
                    tmpStateRangeTime.put(String.valueOf(i11), list);
                }
                Long l11 = pageChainContextPeek.getStateCostTime().get(String.valueOf(i11));
                if (l11 != null) {
                    tmpStateCostTime.put(String.valueOf(i11), Long.valueOf(l11.longValue()));
                }
                if (i11 == lastStep) {
                    break;
                }
                i11++;
            }
        }
        List<Long> list2 = tmpStateRangeTime.get(String.valueOf(lastStep));
        if (list2 == null || list2.size() != 1) {
            return false;
        }
        list2.add(Long.valueOf(System.currentTimeMillis()));
        tmpStateCostTime.put(String.valueOf(lastStep), Long.valueOf(list2.get(1).longValue() - list2.get(0).longValue()));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean appendStagesOnFail$default(PageStageOpenMidSuccessShell1State pageStageOpenMidSuccessShell1State, AppChainContext appChainContext, Map map, Map map2, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            map = new LinkedHashMap();
        }
        if ((i12 & 4) != 0) {
            map2 = new LinkedHashMap();
        }
        return pageStageOpenMidSuccessShell1State.appendStagesOnFail(appChainContext, map, map2, i11);
    }

    private final boolean appendStagesOnSuccess(AppChainContext appChainContext, Map<String, List<Long>> tmpStateRangeTime, Map<String, Long> tmpStateCostTime, int lastStep) {
        TmcLogger.d("chainPoint", PageStageOpenMidSuccessShell1State.class.getName() + "_appendStagesOnSuccess");
        for (int i11 = 1; i11 < 18; i11++) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            tmpStateCostTime.put(String.valueOf(i11), 0L);
            tmpStateRangeTime.put(String.valueOf(i11), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean appendStagesOnSuccess$default(PageStageOpenMidSuccessShell1State pageStageOpenMidSuccessShell1State, AppChainContext appChainContext, Map map, Map map2, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            map = new LinkedHashMap();
        }
        if ((i12 & 4) != 0) {
            map2 = new LinkedHashMap();
        }
        return pageStageOpenMidSuccessShell1State.appendStagesOnSuccess(appChainContext, map, map2, i11);
    }

    private final void reportAppOpenEndFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenMidSuccessShell1State.class.getName() + "_reportAppOpenEndFail");
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openMiniAppResult", "false");
        bundle.putString("openMiniAppFailedReason", appChainContext.getOpenMiniAppFailedReason());
        bundle.putInt("syncType", Intrinsics.c(appChainContext.getOpenChannel(), "0") ? appChainContext.getSyncType() : 0);
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        bundle.putString("isExitInStage", String.valueOf(appendStagesOnFail(appChainContext, linkedHashMap, linkedHashMap2, 18)));
        bundle.putInt("maxStage", linkedHashMap.size());
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        if (!appChainContext.getPageContexts().isEmpty()) {
            PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
            bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
            bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        }
        bundle.putString("openedPageCount", String.valueOf(appChainContext.getOpenedPageCount().get()));
        bundle.putString("appH5ProgressStatus", appChainContext.getH5ProgressCollectList());
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_end", bundle);
    }

    private final void reportAppOpenMidSuccess(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenMidSuccessShell1State.class.getName() + "_reportAppOpenMidSuccess");
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("pageIndex", "1");
        bundle.putInt("maxStage", 17);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        appendStagesOnSuccess(appChainContext, linkedHashMap, linkedHashMap2, 17);
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString("openMiniAppResult", "true");
        bundle.putString("openMiniAppFailedReason", "");
        bundle.putInt("syncType", Intrinsics.c(appChainContext.getOpenChannel(), "0") ? appChainContext.getSyncType() : 0);
        bundle.putString("isExitInStage", "false");
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("openByLaunch", "true");
        if (!appChainContext.getPageContexts().isEmpty()) {
            PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
            bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
            bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        }
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_mid", bundle);
    }

    private final void reportPageOpenEndFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenMidSuccessShell1State.class.getName() + "_reportPageOpenEndFail");
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", String.valueOf(pageChainContextPeek != null ? pageChainContextPeek.getOpenMiniPageFailedReason() : null));
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        bundle.putString("isExitInStage", String.valueOf(appendStagesOnFail(appChainContext, linkedHashMap, linkedHashMap2, 18)));
        bundle.putInt("maxStage", linkedHashMap.size());
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("pageIndex", String.valueOf(pageChainContextPeek.getPageIndexOfApp()));
        bundle.putString("isAdd", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        bundle.putString("appH5ProgressStatus", String.valueOf(pageChainContextPeek.getH5ProgressCollectList()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_end", bundle);
    }

    private final void reportPageOpenMidSuccess(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenMidSuccessShell1State.class.getName() + "_reportPageOpenMidSuccess");
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openPageResult", "true");
        bundle.putString("openPageFailedReason", "");
        bundle.putInt("maxStage", 17);
        bundle.putString("isExitInStage", "false");
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        appendStagesOnSuccess(appChainContext, linkedHashMap, linkedHashMap2, 17);
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("pageIndex", String.valueOf(pageChainContextPeek.getPageIndexOfApp()));
        bundle.putString("isAdd", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_mid", bundle);
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void keepSituation(AppChainContext appChainContext, Bundle dataBundle) {
        PageChainContext pageChainContextPeek;
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        log("keepSituation");
        appChainContext.getPageIndexOfApp().set(1);
        appChainContext.getOpenedPageCount().set(1);
        appChainContext.setReportMid(true);
        appChainContext.setReportEnd(false);
        appChainContext.setOpenMiniAppMidResult(true);
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
        if (appChainContext.getPageContexts().size() <= 0 || (pageChainContextPeek = appChainContext.getPageContexts().peek()) == null) {
            return;
        }
        Intrinsics.g(pageChainContextPeek, "peek()");
        pageChainContextPeek.setOpenMiniPageMidResult(true);
        pageChainContextPeek.setOpenMiniPageEndResult(false);
        pageChainContextPeek.setMaxStage(pageChainContextPeek.getCurrentChainStartState() instanceof DrawViewStartState ? 18 : 17);
        appChainContext.setFirstPageMaxStage(pageChainContextPeek.getMaxStage());
        pageChainContextPeek.setAppStateCostTime(appChainContext.getStateCostTime());
        pageChainContextPeek.setAppStateRangeTime(appChainContext.getStateRangeTime());
        int maxStage2 = pageChainContextPeek.getMaxStage();
        int i12 = 12;
        if (12 <= maxStage2) {
            while (true) {
                pageChainContextPeek.getStateCostTime().put(String.valueOf(i12), 0L);
                pageChainContextPeek.getStateRangeTime().put(String.valueOf(i12), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
                if (i12 == maxStage2) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        appChainContext.setFirstPageStateCostTime(pageChainContextPeek.getStateCostTime());
        appChainContext.setFirstPageStateRangeTime(pageChainContextPeek.getStateRangeTime());
        pageChainContextPeek.setPageIndexOfApp(1);
        pageChainContextPeek.setReportMid(true);
        pageChainContextPeek.setReportEnd(false);
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
        log("reportNew");
        reportPageOpenMidSuccess(appChainContext, dataBundle);
        reportAppOpenMidSuccess(appChainContext, dataBundle);
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void reportOld(AppChainContext appChainContext, Bundle dataBundle) {
        Intrinsics.h(appChainContext, "appChainContext");
        Intrinsics.h(dataBundle, "dataBundle");
        log("reportOld");
        reportPageOpenEndFail(appChainContext, dataBundle);
        if (appChainContext.getIsReportEnd()) {
            return;
        }
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
