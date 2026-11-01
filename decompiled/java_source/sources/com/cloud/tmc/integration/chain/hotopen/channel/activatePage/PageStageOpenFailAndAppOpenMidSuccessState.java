package com.cloud.tmc.integration.chain.hotopen.channel.activatePage;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0012H\u0016J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0012H\u0016¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;", "Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;", "()V", "appendStages", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "tmpStateRangeTime", "", "", "", "", "tmpStateCostTime", "lastStep", "", "reportAppOpenEndFail", "", "data", "Landroid/os/Bundle;", "reportNew", "dataBundle", "reportOld", "reportPageOpenEndFail", "reportPageOpenMidFail", "reset", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PageStageOpenFailAndAppOpenMidSuccessState implements IHotOpenState {
    private final boolean appendStages(AppChainContext appChainContext, Map<String, List<Long>> tmpStateRangeTime, Map<String, Long> tmpStateCostTime, int lastStep) {
        long jLongValue;
        boolean z10 = true;
        TmcLogger.d("chainPoint", PageStageOpenFailAndAppOpenMidSuccessState.class.getName() + "_appendStages");
        if (appChainContext.getPageContexts().isEmpty()) {
            return false;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        if (Intrinsics.c(appChainContext.getOpenChannel(), "3")) {
            for (int i11 = 1; i11 < 12; i11++) {
                long jLongValue2 = 0;
                tmpStateCostTime.put(String.valueOf(i11), 0L);
                List<Long> list = pageChainContextPeek.getStateRangeTime().get("12");
                if (list == null || list.size() != 2) {
                    jLongValue = 0;
                } else {
                    jLongValue2 = list.get(0).longValue();
                    jLongValue = list.get(0).longValue();
                }
                tmpStateRangeTime.put(String.valueOf(i11), CollectionsKt.h(Long.valueOf(jLongValue2), Long.valueOf(jLongValue)));
            }
        } else if (Intrinsics.c(appChainContext.getOpenChannel(), "0")) {
            tmpStateRangeTime.putAll(pageChainContextPeek.getStateRangeTime());
            tmpStateCostTime.putAll(pageChainContextPeek.getStateCostTime());
        }
        List<Long> list2 = tmpStateRangeTime.get(String.valueOf(lastStep));
        if (list2 == null) {
            return false;
        }
        if (list2.size() == 1) {
            list2.add(Long.valueOf(System.currentTimeMillis()));
            tmpStateCostTime.put(String.valueOf(lastStep), Long.valueOf(list2.get(1).longValue() - list2.get(0).longValue()));
        } else if (list2.size() != 2 || tmpStateCostTime.containsKey(String.valueOf(lastStep))) {
            z10 = false;
        } else {
            tmpStateCostTime.put(String.valueOf(lastStep), Long.valueOf(list2.get(1).longValue() - list2.get(0).longValue()));
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean appendStages$default(PageStageOpenFailAndAppOpenMidSuccessState pageStageOpenFailAndAppOpenMidSuccessState, AppChainContext appChainContext, Map map, Map map2, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            map = new LinkedHashMap();
        }
        if ((i12 & 4) != 0) {
            map2 = new LinkedHashMap();
        }
        return pageStageOpenFailAndAppOpenMidSuccessState.appendStages(appChainContext, map, map2, i11);
    }

    private final void reportAppOpenEndFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenFailAndAppOpenMidSuccessState.class.getName() + "_reportAppOpenEndFail");
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openMiniAppResult", "false");
        bundle.putString("openMiniAppFailedReason", String.valueOf(appChainContext.getOpenMiniAppFailedReason()));
        bundle.putInt("syncType", Intrinsics.c(appChainContext.getOpenChannel(), "0") ? appChainContext.getSyncType() : 0);
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        boolean zAppendStages = appendStages(appChainContext, linkedHashMap, linkedHashMap2, 18);
        bundle.putString("isExitInStage", String.valueOf(zAppendStages));
        bundle.putInt("maxStage", zAppendStages ? 18 : 17);
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        if (appChainContext.getPageContexts().size() > 0) {
            PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
            bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
            bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        }
        bundle.putString("openedPageCount", String.valueOf(appChainContext.getOpenedPageCount().get()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_app_open_end", bundle);
    }

    private final void reportPageOpenEndFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenFailAndAppOpenMidSuccessState.class.getName() + "_reportPageOpenEndFail");
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", String.valueOf(pageChainContextPeek.getOpenMiniPageFailedReason()));
        bundle.putInt("maxStage", pageChainContextPeek.getMaxStage());
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        bundle.putString("isExitInStage", String.valueOf(appendStages(appChainContext, linkedHashMap, linkedHashMap2, pageChainContextPeek.getMaxStage())));
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("pageIndex", String.valueOf(pageChainContextPeek.getPageIndexOfApp()));
        bundle.putString("isAdd", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_end", bundle);
    }

    private final void reportPageOpenMidFail(AppChainContext appChainContext, Bundle data) {
        TmcLogger.d("chainPoint", PageStageOpenFailAndAppOpenMidSuccessState.class.getName() + "_reportPageOpenMidFail");
        if (appChainContext.getPageContexts().isEmpty()) {
            return;
        }
        PageChainContext pageChainContextPeek = appChainContext.getPageContexts().peek();
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", String.valueOf(pageChainContextPeek.getOpenMiniPageFailedReason()));
        bundle.putInt("maxStage", pageChainContextPeek.getMaxStage());
        bundle.putString("open_channel", appChainContext.getOpenChannel());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        bundle.putString("isExitInStage", String.valueOf(appendStages(appChainContext, linkedHashMap, linkedHashMap2, pageChainContextPeek.getMaxStage())));
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, appChainContext.getScene());
        bundle.putString("pageIndex", String.valueOf(pageChainContextPeek.getPageIndexOfApp()));
        bundle.putString("isAdd", "true");
        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(pageChainContextPeek.getPageUrl()));
        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + pageChainContextPeek.getRenderId());
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appChainContext.getAppId(), "mini_page_open_mid", bundle);
    }

    @Override // com.cloud.tmc.integration.chain.hotopen.channel.IHotOpenState
    public void keepSituation(AppChainContext appChainContext, Bundle bundle) {
        IHotOpenState.DefaultImpls.keepSituation(this, appChainContext, bundle);
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
        reportPageOpenMidFail(appChainContext, dataBundle);
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
        appChainContext.getPageIndexOfApp().set(1);
        appChainContext.getOpenedPageCount().set(1);
        appChainContext.setReportMid(false);
        appChainContext.setReportEnd(false);
        appChainContext.setOpenMiniAppMidResult(false);
        appChainContext.setOpenMiniAppEndResult(false);
    }
}
