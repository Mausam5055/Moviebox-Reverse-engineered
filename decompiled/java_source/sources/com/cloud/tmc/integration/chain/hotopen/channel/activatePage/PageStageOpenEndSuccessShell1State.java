package com.cloud.tmc.integration.chain.hotopen.channel.activatePage;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
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
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016¨\u0006\u001c"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;", "Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;", "()V", "appendStages", "", "pageChainContext", "Lcom/cloud/tmc/integration/chain/page/PageChainContext;", "tmpStateRangeTime", "", "", "", "", "tmpStateCostTime", "steps", "", "keepSituation", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "dataBundle", "Landroid/os/Bundle;", "reportAppOpenEndSuccess", "data", "reportAppOpenMidSuccess", "reportNew", "reportOld", "reportPageOpenEndSuccess", "reportPageOpenMidSuccess", "reset", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PageStageOpenEndSuccessShell1State implements IHotOpenState {
    private final void appendStages(PageChainContext pageChainContext, Map<String, List<Long>> tmpStateRangeTime, Map<String, Long> tmpStateCostTime, int[] steps) {
        TmcLogger.d("chainPoint", PageStageOpenEndSuccessShell1State.class.getName() + "_appendStages");
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i11 = 1; i11 < 12; i11++) {
            tmpStateRangeTime.put(String.valueOf(i11), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
            tmpStateCostTime.put(String.valueOf(i11), 0L);
        }
        for (int i12 : steps) {
            tmpStateRangeTime.put(String.valueOf(i12), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
            tmpStateCostTime.put(String.valueOf(i12), 0L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void appendStages$default(PageStageOpenEndSuccessShell1State pageStageOpenEndSuccessShell1State, PageChainContext pageChainContext, Map map, Map map2, int[] iArr, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            map = new LinkedHashMap();
        }
        if ((i11 & 4) != 0) {
            map2 = new LinkedHashMap();
        }
        pageStageOpenEndSuccessShell1State.appendStages(pageChainContext, map, map2, iArr);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:43:0x01c8 A[Catch: all -> 0x01ce, TRY_LEAVE, TryCatch #2 {all -> 0x01ce, blocks: (B:41:0x01c2, B:43:0x01c8), top: B:69:0x01c2 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final void reportAppOpenEndSuccess(AppChainContext appChainContext, Bundle data) {
        long j11;
        long j12;
        Bundle sceneParams;
        Bundle sceneParams2;
        Bundle sceneParams3;
        boolean z10 = false;
        TmcLogger.d("chainPoint", PageStageOpenEndSuccessShell1State.class.getName() + "_reportAppOpenEndSuccess");
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext page = appChainContext.getPageContexts().peek();
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("pageIndex", String.valueOf(page.getPageIndexOfApp()));
        bundle.putInt("maxStage", 18);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Intrinsics.g(page, "page");
        appendStages(page, linkedHashMap, linkedHashMap2, new int[]{12, 13, 14, 15, 16, 17, 18});
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString("openMiniAppResult", "true");
        bundle.putString("openMiniAppFailedReason", "");
        bundle.putInt("syncType", appChainContext.getSyncType());
        bundle.putString("isExitInStage", "false");
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("openByLaunch", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(page.getPageUrl()));
        bundle.putString(ChainPoint.CHAIN_DRAW_END_TYPE, page.getDrawEndType());
        bundle.putString("appH5ProgressStatus", String.valueOf(GsonUtils.toJson(MapsKt.l(TuplesKt.a(30, 0), TuplesKt.a(50, 0), TuplesKt.a(70, 0)))));
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + page.getRenderId());
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        try {
            List<Long> list = linkedHashMap.get("1");
            long jCurrentTimeMillis = ((list != null ? list.size() : 0) < 1 || list == null) ? System.currentTimeMillis() : list.get(0).longValue();
            List<Long> list2 = linkedHashMap.get("18");
            long jCurrentTimeMillis2 = ((list2 != null ? list2.size() : 0) < 1 || list2 == null) ? System.currentTimeMillis() : list2.get(1).longValue();
            App appFindApp = null;
            try {
                appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(appChainContext.getAppId());
                j11 = (appFindApp == null || (sceneParams3 = appFindApp.getSceneParams()) == null) ? 0L : sceneParams3.getLong(TmcConstants.KEY_APP_START_FIRST_TIME);
                if (appFindApp != null) {
                    try {
                        Bundle sceneParams4 = appFindApp.getSceneParams();
                        if (sceneParams4 != null) {
                            j12 = sceneParams4.getLong(TmcConstants.KEY_APP_START_MINI_FIRST_TIME);
                        } else {
                            j12 = 0;
                        }
                        if (appFindApp != null) {
                            try {
                                sceneParams2 = appFindApp.getSceneParams();
                                if (sceneParams2 != null) {
                                    z10 = sceneParams2.getBoolean(TmcConstants.KEY_APP_MINI_PROCESS_ALIVE);
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    } catch (Throwable unused2) {
                        j12 = 0;
                    }
                } else {
                    j12 = 0;
                    if (appFindApp != null) {
                        sceneParams2 = appFindApp.getSceneParams();
                        if (sceneParams2 != null) {
                            z10 = sceneParams2.getBoolean(TmcConstants.KEY_APP_MINI_PROCESS_ALIVE);
                        }
                    }
                }
            } catch (Throwable unused3) {
                j11 = 0;
                j12 = 0;
            }
            if (j11 != 0) {
                bundle.putLong("mini_first_time", j11);
            }
            if (j12 != 0) {
                bundle.putLong("mini_second_time", j12);
            }
            if (appFindApp != null && (sceneParams = appFindApp.getSceneParams()) != null) {
                sceneParams.getString(TmcConstants.KEY_MINIAPP_FROM_START);
            }
            if (j11 != 0) {
                TmcLogger.d(TmcConstants.TAG, "firstStartTime:" + j11);
                jCurrentTimeMillis = j11;
            } else if (j12 != 0) {
                TmcLogger.d(TmcConstants.TAG, "secondStartTime:" + j12);
                jCurrentTimeMillis = j12;
            } else {
                TmcLogger.d(TmcConstants.TAG, "reportStartTime:" + jCurrentTimeMillis);
            }
            bundle.putLong("miniapp_all_start_time", jCurrentTimeMillis2 - jCurrentTimeMillis);
            bundle.putBoolean("is_mini_process_alive", z10);
        } catch (Throwable unused4) {
        }
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_end", bundle);
    }

    private final void reportAppOpenMidSuccess(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenEndSuccessShell1State.class.getName() + "_reportAppOpenMidSuccess");
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext page = appChainContext.getPageContexts().peek();
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("pageIndex", String.valueOf(page.getPageIndexOfApp()));
        bundle.putInt("maxStage", 17);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Intrinsics.g(page, "page");
        appendStages(page, linkedHashMap, linkedHashMap2, new int[]{12, 13, 14, 15, 16, 17});
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString("openMiniAppResult", "true");
        bundle.putString("openMiniAppFailedReason", "");
        bundle.putInt("syncType", appChainContext.getSyncType());
        bundle.putString("isExitInStage", "false");
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("openByLaunch", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(page.getPageUrl()));
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + page.getRenderId());
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_mid", bundle);
    }

    private final void reportPageOpenEndSuccess(AppChainContext appChainContext, Bundle data) {
        PageChainContext pageChainContextPeek;
        TmcLogger.d("chainPoint", PageStageOpenEndSuccessShell1State.class.getName() + "_reportPageOpenEndSuccess->pageContexts.size:" + appChainContext.getPageContexts().size());
        if (appChainContext.getPageContexts().isEmpty() || (pageChainContextPeek = appChainContext.getPageContexts().peek()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openPageResult", "true");
        bundle.putString("openPageFailedReason", "");
        bundle.putInt("maxStage", 18);
        bundle.putString("isExitInStage", "false");
        bundle.putString("open_channel", pageChainContextPeek.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        appendStages(pageChainContextPeek, linkedHashMap, linkedHashMap2, new int[]{12, 13, 14, 15, 16, 17, 18});
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, pageChainContextPeek.getScene());
        bundle.putString("pageIndex", String.valueOf(pageChainContextPeek.getPageIndexOfApp()));
        bundle.putString("isAdd", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        bundle.putString(ChainPoint.CHAIN_DRAW_END_TYPE, pageChainContextPeek.getDrawEndType());
        bundle.putString("appH5ProgressStatus", String.valueOf(GsonUtils.toJson(MapsKt.l(TuplesKt.a(30, 0), TuplesKt.a(50, 0), TuplesKt.a(70, 0)))));
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_end", bundle);
    }

    private final void reportPageOpenMidSuccess(AppChainContext appChainContext, Bundle data) {
        PageChainContext pageChainContextPeek;
        TmcLogger.d("chainPoint", PageStageOpenEndSuccessShell1State.class.getName() + "_reportPageOpenMidSuccess->pageContexts.size:" + appChainContext.getPageContexts().size());
        if (appChainContext.getPageContexts().isEmpty() || (pageChainContextPeek = appChainContext.getPageContexts().peek()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openPageResult", "true");
        bundle.putString("openPageFailedReason", "");
        bundle.putInt("maxStage", 17);
        bundle.putString("isExitInStage", "false");
        bundle.putString("open_channel", pageChainContextPeek.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        appendStages(pageChainContextPeek, linkedHashMap, linkedHashMap2, new int[]{12, 13, 14, 15, 16, 17});
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, pageChainContextPeek.getScene());
        bundle.putString("pageIndex", String.valueOf(pageChainContextPeek.getPageIndexOfApp()));
        bundle.putString("isAdd", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
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
        appChainContext.getPageIndexOfApp().set(1);
        appChainContext.getOpenedPageCount().set(1);
        appChainContext.setReportMid(true);
        appChainContext.setReportEnd(true);
        appChainContext.setOpenMiniAppMidResult(true);
        appChainContext.setOpenMiniAppEndResult(true);
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
        pageChainContextPeek.setPageIndexOfApp(1);
        pageChainContextPeek.setReportMid(true);
        pageChainContextPeek.setReportEnd(true);
        pageChainContextPeek.setOpenMiniPageMidResult(true);
        pageChainContextPeek.setOpenMiniPageEndResult(true);
        pageChainContextPeek.setMaxStage(18);
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
        reportPageOpenEndSuccess(appChainContext, dataBundle);
        reportAppOpenEndSuccess(appChainContext, dataBundle);
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
