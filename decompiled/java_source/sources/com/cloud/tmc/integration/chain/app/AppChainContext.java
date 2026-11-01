package com.cloud.tmc.integration.chain.app;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.ChainContext;
import com.cloud.tmc.integration.chain.ChainState;
import com.cloud.tmc.integration.chain.ChainType;
import com.cloud.tmc.integration.chain.ContextType;
import com.cloud.tmc.integration.chain.hotopen.HotOpenManager;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.chain.startState.SetupStepStartState;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003JB\u0010g\u001a\u0002022\u001a\b\u0002\u0010h\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0(0!2\u0014\b\u0002\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!2\u0006\u0010j\u001a\u000202H\u0002JH\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020R2\u001a\b\u0002\u0010h\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0(0!2\u0014\b\u0002\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!2\u0006\u0010n\u001a\u00020\u001bJ\u0010\u0010o\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0016J\u0010\u0010r\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\b\u0010s\u001a\u00020\u001bH\u0002J\u0018\u0010b\u001a\u00020\u001b2\u0006\u0010t\u001a\u00020\u001b2\u0006\u0010u\u001a\u00020\u001bH\u0002J\u0010\u0010v\u001a\u00020\"2\u0006\u0010w\u001a\u00020\u0012H\u0002J\u0010\u0010x\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0016J\u0010\u0010z\u001a\u00020l2\u0006\u0010w\u001a\u00020\u0012H\u0002J\u0010\u0010{\u001a\u00020l2\u0006\u0010|\u001a\u00020\u0012H\u0002J\u0010\u0010}\u001a\u00020l2\u0006\u0010~\u001a\u00020\u0012H\u0002J\u0011\u0010\u007f\u001a\u00020l2\u0007\u0010\u0080\u0001\u001a\u00020\u0012H\u0002J\u0011\u0010\u0081\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0018\u0010\u0082\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u000202J\u0011\u0010\u0084\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0018\u0010\u0085\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u000202J\u0007\u0010\u0086\u0001\u001a\u00020lJ\u0011\u0010\u0087\u0001\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0002J\u0011\u0010\u0088\u0001\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0002J\u0011\u0010\u0089\u0001\u001a\u00020l2\u0006\u0010w\u001a\u00020\u0012H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R,\u0010'\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0(0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&R\u001a\u0010+\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0007\"\u0004\b-\u0010\tR\u001a\u0010.\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0007\"\u0004\b0\u0010\tR\u001a\u00101\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00103\"\u0004\b4\u00105R\u001a\u00106\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00103\"\u0004\b7\u00105R\u001a\u00108\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u001d\"\u0004\b:\u0010\u001fR\u001a\u0010;\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u00103\"\u0004\b=\u00105R\u001a\u0010>\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0007\"\u0004\b@\u0010\tR\u001a\u0010A\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u00103\"\u0004\bC\u00105R\u001a\u0010D\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u0007\"\u0004\bF\u0010\tR\u001a\u0010G\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u00103\"\u0004\bI\u00105R\u001a\u0010J\u001a\u00020KX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u0017\u0010P\u001a\b\u0012\u0004\u0012\u00020R0Q¢\u0006\b\n\u0000\u001a\u0004\bS\u0010TR\u001a\u0010U\u001a\u00020KX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010M\"\u0004\bW\u0010OR\u001a\u0010X\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010\u0007\"\u0004\bZ\u0010\tR&\u0010[\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010$\"\u0004\b]\u0010&R,\u0010^\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0(0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010$\"\u0004\b`\u0010&R\u001a\u0010a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010\u001d\"\u0004\bc\u0010\u001fR&\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001b0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u0010$\"\u0004\bf\u0010&¨\u0006\u008a\u0001"}, d2 = {"Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "Lcom/cloud/tmc/integration/chain/ChainContext;", "Lcom/cloud/tmc/integration/chain/app/IAppOpen;", "()V", "appId", "", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lcom/cloud/tmc/integration/chain/ContextType;", "contextType", "getContextType", "()Lcom/cloud/tmc/integration/chain/ContextType;", "setContextType", "(Lcom/cloud/tmc/integration/chain/ContextType;)V", "currentChainEndState", "Lcom/cloud/tmc/integration/chain/ChainState;", "getCurrentChainEndState", "()Lcom/cloud/tmc/integration/chain/ChainState;", "setCurrentChainEndState", "(Lcom/cloud/tmc/integration/chain/ChainState;)V", "currentChainStartState", "getCurrentChainStartState", "setCurrentChainStartState", "firstPageMaxStage", "", "getFirstPageMaxStage", "()I", "setFirstPageMaxStage", "(I)V", "firstPageStateCostTime", "", "", "getFirstPageStateCostTime", "()Ljava/util/Map;", "setFirstPageStateCostTime", "(Ljava/util/Map;)V", "firstPageStateRangeTime", "", "getFirstPageStateRangeTime", "setFirstPageStateRangeTime", "h5ProgressCollectList", "getH5ProgressCollectList", "setH5ProgressCollectList", "hotOpenType", "getHotOpenType", "setHotOpenType", "isReportEnd", "", "()Z", "setReportEnd", "(Z)V", "isReportMid", "setReportMid", "maxStage", "getMaxStage", "setMaxStage", LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, "getOffScreenRender", "setOffScreenRender", "openChannel", "getOpenChannel", "setOpenChannel", "openMiniAppEndResult", "getOpenMiniAppEndResult", "setOpenMiniAppEndResult", "openMiniAppFailedReason", "getOpenMiniAppFailedReason", "setOpenMiniAppFailedReason", "openMiniAppMidResult", "getOpenMiniAppMidResult", "setOpenMiniAppMidResult", "openedPageCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "getOpenedPageCount", "()Ljava/util/concurrent/atomic/AtomicInteger;", "setOpenedPageCount", "(Ljava/util/concurrent/atomic/AtomicInteger;)V", "pageContexts", "Ljava/util/Stack;", "Lcom/cloud/tmc/integration/chain/page/PageChainContext;", "getPageContexts", "()Ljava/util/Stack;", "pageIndexOfApp", "getPageIndexOfApp", "setPageIndexOfApp", FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "getScene", "setScene", "stateCostTime", "getStateCostTime", "setStateCostTime", "stateRangeTime", "getStateRangeTime", "setStateRangeTime", "syncType", "getSyncType", "setSyncType", "syncTypeMap", "getSyncTypeMap", "setSyncTypeMap", "appendStagesFail", "tmpStateRangeTime", "tmpStateCostTime", "existInStage", "appendStagesSuccess", "", "pageChainContext", "stage", PushConstants.PROVIDER_FIELD_DESTROY, "data", "Landroid/os/Bundle;", "destroyReport", "getMaxStageFromCompare", "currentSyncType", "nextSyncType", "getTime", "chainState", TmcConstants.START_TYPE_HOT_OPEN, "dataBundle", "insertData", "parseChainEnd", "chainEndState", "parseChainStart", "chainStartState", "parseChianError", "appErrorState", "reportAppOpenEndFail", "reportAppOpenEndSuccess", "launch", "reportAppOpenMidFail", "reportAppOpenMidSuccess", "reportFailureClickReloadButton", "reportPageOpenEndFail", "reportPageOpenMidFail", "setChainState", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppChainContext implements ChainContext, IAppOpen {
    private ChainState currentChainEndState;
    private ChainState currentChainStartState;
    private int firstPageMaxStage;
    private boolean isReportEnd;
    private boolean isReportMid;
    private int maxStage;
    private boolean offScreenRender;
    private boolean openMiniAppEndResult;
    private boolean openMiniAppMidResult;
    private int syncType;
    private String appId = "";
    private String openMiniAppFailedReason = "";
    private final Stack<PageChainContext> pageContexts = new Stack<>();
    private AtomicInteger openedPageCount = new AtomicInteger(0);
    private String openChannel = "0";
    private String scene = "0";
    private Map<String, Long> stateCostTime = new LinkedHashMap();
    private Map<String, List<Long>> stateRangeTime = new LinkedHashMap();
    private AtomicInteger pageIndexOfApp = new AtomicInteger(0);
    private Map<String, Long> firstPageStateCostTime = new LinkedHashMap();
    private Map<String, List<Long>> firstPageStateRangeTime = new LinkedHashMap();
    private Map<String, Integer> syncTypeMap = new LinkedHashMap();
    private String h5ProgressCollectList = "";
    private String hotOpenType = TmcConstants.COLD_OPEN_TYPE;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChainType.values().length];
            try {
                iArr[ChainType.TYPE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChainType.TYPE_END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChainType.TYPE_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ChainType.TYPE_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean appendStagesFail(Map<String, List<Long>> tmpStateRangeTime, Map<String, Long> tmpStateCostTime, boolean existInStage) {
        ChainState chainState;
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_appendStages");
        if (Intrinsics.c(this.openChannel, "3")) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ChainState chainState2 = this.currentChainStartState;
            int step = chainState2 != null ? chainState2.getStep() : 1;
            if (1 <= step) {
                int i11 = 1;
                while (true) {
                    tmpStateCostTime.put(String.valueOf(i11), 0L);
                    tmpStateRangeTime.put(String.valueOf(i11), CollectionsKt.h(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)));
                    if (i11 == step) {
                        break;
                    }
                    i11++;
                }
            }
        } else if (Intrinsics.c(this.openChannel, "0")) {
            tmpStateRangeTime.putAll(this.stateRangeTime);
            tmpStateCostTime.putAll(this.stateCostTime);
        }
        ChainState chainState3 = this.currentChainStartState;
        if (chainState3 != null && chainState3.getStep() == 11 && (chainState = this.currentChainEndState) != null && chainState.getStep() == 11) {
            if (!this.firstPageStateRangeTime.isEmpty() && ((List) ((Map.Entry) CollectionsKt.t0(this.firstPageStateRangeTime.entrySet())).getValue()).size() == 1) {
                ((List) ((Map.Entry) CollectionsKt.t0(this.firstPageStateRangeTime.entrySet())).getValue()).add(Long.valueOf(System.currentTimeMillis()));
                this.firstPageStateCostTime.put((String) ((Map.Entry) CollectionsKt.t0(this.firstPageStateRangeTime.entrySet())).getKey(), Long.valueOf(((Number) ((List) ((Map.Entry) CollectionsKt.t0(this.firstPageStateRangeTime.entrySet())).getValue()).get(1)).longValue() - ((Number) ((List) ((Map.Entry) CollectionsKt.t0(this.firstPageStateRangeTime.entrySet())).getValue()).get(0)).longValue()));
                existInStage = true;
            }
            tmpStateRangeTime.putAll(this.firstPageStateRangeTime);
            tmpStateCostTime.putAll(this.firstPageStateCostTime);
        }
        return existInStage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean appendStagesFail$default(AppChainContext appChainContext, Map map, Map map2, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            map = new LinkedHashMap();
        }
        if ((i11 & 2) != 0) {
            map2 = new LinkedHashMap();
        }
        return appChainContext.appendStagesFail(map, map2, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void appendStagesSuccess$default(AppChainContext appChainContext, PageChainContext pageChainContext, Map map, Map map2, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            map = new LinkedHashMap();
        }
        if ((i12 & 4) != 0) {
            map2 = new LinkedHashMap();
        }
        appChainContext.appendStagesSuccess(pageChainContext, map, map2, i11);
    }

    private final void destroyReport(Bundle data) {
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_destroyReport->openMiniAppMidResult:" + this.openMiniAppMidResult + ", openMiniAppEndResult:" + this.openMiniAppEndResult + ", pageIndexOfApp:" + this.pageIndexOfApp.get());
        if (!this.openMiniAppMidResult) {
            if (this.pageIndexOfApp.get() == 0) {
                reportPageOpenMidFail(data);
            }
            reportAppOpenMidFail(data);
        }
        if (this.openMiniAppEndResult) {
            return;
        }
        if (this.pageIndexOfApp.get() == 0) {
            reportPageOpenEndFail(data);
        }
        reportAppOpenEndFail(data);
    }

    private final int getMaxStageFromCompare() {
        int i11 = this.maxStage;
        int i12 = this.firstPageMaxStage;
        return i11 >= i12 ? i11 : i12;
    }

    private final int getSyncType(int currentSyncType, int nextSyncType) {
        if (currentSyncType == 2) {
            return currentSyncType;
        }
        if (currentSyncType == 0) {
            return nextSyncType;
        }
        return 0;
    }

    private final long getTime(ChainState chainState) {
        return chainState.getDataBundle().containsKey(ChainPoint.TIME) ? chainState.getDataBundle().getLong(ChainPoint.TIME) : chainState.getTime();
    }

    private final void insertData(ChainState chainState) {
        try {
            Bundle dataBundle = chainState.getDataBundle();
            log("insertData_" + chainState + "_" + dataBundle);
            if (dataBundle.containsKey(ChainPoint.CHAIN_SYNC_TYPE)) {
                int i11 = dataBundle.getInt(ChainPoint.CHAIN_SYNC_TYPE);
                this.syncTypeMap.put(String.valueOf(chainState.getChainType().getType()), Integer.valueOf(i11));
                this.syncType = getSyncType(this.syncType, i11);
            }
            if (dataBundle.containsKey(ChainPoint.OPEN_MINI_APP_FAILED_REASON)) {
                String string = dataBundle.getString(ChainPoint.OPEN_MINI_APP_FAILED_REASON);
                if (string == null) {
                    string = "解析失败原因错误";
                }
                this.openMiniAppFailedReason = string;
            }
            if (dataBundle.containsKey(ChainPoint.APP_H5_PROGRESS_STATUS)) {
                String string2 = dataBundle.getString(ChainPoint.APP_H5_PROGRESS_STATUS, "");
                Intrinsics.g(string2, "data.getString(APP_H5_PROGRESS_STATUS, \"\")");
                this.h5ProgressCollectList = string2;
            }
            if (dataBundle.containsKey(ChainPoint.APP_OFF_SCREEN_RENDER)) {
                this.offScreenRender = dataBundle.getBoolean(ChainPoint.APP_OFF_SCREEN_RENDER, false);
            }
        } catch (Throwable unused) {
        }
    }

    private final void parseChainEnd(ChainState chainEndState) {
        log("parseChainEnd_" + chainEndState);
        if (TextUtils.isEmpty(this.appId)) {
            return;
        }
        this.currentChainEndState = chainEndState;
        List<Long> list = this.stateRangeTime.get(String.valueOf(chainEndState.getStep()));
        if (list != null) {
            list.add(Long.valueOf(getTime(chainEndState)));
        }
        List<Long> list2 = this.stateRangeTime.get(String.valueOf(chainEndState.getStep()));
        long jLongValue = 0;
        if (list2 != null && list2.size() == 2) {
            jLongValue = list2.get(1).longValue() - list2.get(0).longValue();
        }
        this.stateCostTime.put(String.valueOf(chainEndState.getStep()), Long.valueOf(jLongValue));
    }

    private final void parseChainStart(ChainState chainStartState) {
        log("parseChainStart_" + chainStartState);
        boolean z10 = chainStartState instanceof SetupStepStartState;
        if (z10 && chainStartState.getDataBundle().containsKey(ChainPoint.CHAIN_APP_ID)) {
            String string = chainStartState.getDataBundle().getString(ChainPoint.CHAIN_APP_ID);
            if (string == null) {
                string = "";
            }
            this.appId = string;
        }
        if (TextUtils.isEmpty(this.appId)) {
            return;
        }
        if (z10 && !Intrinsics.c(this.openChannel, "3")) {
            if (chainStartState.getDataBundle().containsKey(ChainPoint.CHAIN_SCENE)) {
                String string2 = chainStartState.getDataBundle().getString(ChainPoint.CHAIN_SCENE, "0");
                Intrinsics.g(string2, "chainStartState.dataBund…tString(CHAIN_SCENE, \"0\")");
                this.scene = string2;
            }
            if (chainStartState.getDataBundle().containsKey(ChainPoint.CHAIN_OPEN_CHANNEL)) {
                String string3 = chainStartState.getDataBundle().getString(ChainPoint.CHAIN_OPEN_CHANNEL, TmcConstants.COLD_OPEN_TYPE);
                Intrinsics.g(string3, "chainStartState.dataBund…CHAIN_OPEN_CHANNEL, \"-1\")");
                this.openChannel = string3;
            }
        }
        this.maxStage = chainStartState.getStep();
        this.currentChainEndState = null;
        this.currentChainStartState = chainStartState;
        this.stateRangeTime.put(String.valueOf(chainStartState.getStep()), CollectionsKt.h(Long.valueOf(getTime(chainStartState))));
    }

    private final void parseChianError(ChainState appErrorState) {
        List<Long> list;
        log("parseChianError_" + appErrorState);
        if (TextUtils.isEmpty(this.appId)) {
            return;
        }
        this.currentChainEndState = appErrorState;
        ChainState chainState = this.currentChainStartState;
        if (chainState == null || (list = this.stateRangeTime.get(String.valueOf(chainState.getStep()))) == null || list.size() != 1) {
            return;
        }
        list.add(Long.valueOf(System.currentTimeMillis()));
        this.stateCostTime.put(String.valueOf(chainState.getStep()), Long.valueOf(list.get(1).longValue() - list.get(0).longValue()));
    }

    private final void reportAppOpenEndFail(Bundle data) {
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_reportAppOpenEndFail->isReportEnd:" + this.isReportEnd);
        if (this.isReportEnd) {
            return;
        }
        this.isReportEnd = true;
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openMiniAppResult", "false");
        bundle.putString("openMiniAppFailedReason", this.openMiniAppFailedReason);
        bundle.putInt("maxStage", getMaxStageFromCompare());
        bundle.putInt("syncType", this.syncType);
        bundle.putString("open_channel", String.valueOf(this.openChannel));
        bundle.putString(TmcConstants.HOT_OPEN_TYPE, String.valueOf(this.hotOpenType));
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        ChainState chainState = this.currentChainStartState;
        boolean z10 = chainState != null && this.currentChainEndState == null;
        if (z10 && chainState != null) {
            Map<String, List<Long>> map = this.stateRangeTime;
            Intrinsics.e(chainState);
            if (map.get(String.valueOf(chainState.getStep())) != null) {
                Map<String, List<Long>> map2 = this.stateRangeTime;
                ChainState chainState2 = this.currentChainStartState;
                Intrinsics.e(chainState2);
                List<Long> list = map2.get(String.valueOf(chainState2.getStep()));
                if (list != null && list.size() == 1) {
                    Map<String, List<Long>> map3 = this.stateRangeTime;
                    ChainState chainState3 = this.currentChainStartState;
                    Intrinsics.e(chainState3);
                    List<Long> list2 = map3.get(String.valueOf(chainState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    Map<String, Long> map4 = this.stateCostTime;
                    ChainState chainState4 = this.currentChainStartState;
                    Intrinsics.e(chainState4);
                    String strValueOf = String.valueOf(chainState4.getStep());
                    Map<String, List<Long>> map5 = this.stateRangeTime;
                    ChainState chainState5 = this.currentChainStartState;
                    Intrinsics.e(chainState5);
                    List<Long> list3 = map5.get(String.valueOf(chainState5.getStep()));
                    long jLongValue = list3 != null ? list3.get(1).longValue() : 0L;
                    Map<String, List<Long>> map6 = this.stateRangeTime;
                    ChainState chainState6 = this.currentChainStartState;
                    Intrinsics.e(chainState6);
                    List<Long> list4 = map6.get(String.valueOf(chainState6.getStep()));
                    map4.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? list4.get(0).longValue() : 0L)));
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        bundle.putString("isExitInStage", String.valueOf(appendStagesFail(linkedHashMap, linkedHashMap2, z10)));
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, String.valueOf(this.scene));
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("openedPageCount", String.valueOf(this.openedPageCount.get()));
        bundle.putString("appH5ProgressStatus", this.h5ProgressCollectList);
        bundle.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, this.offScreenRender);
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(this.appId, "mini_app_open_end", bundle);
    }

    private final void reportAppOpenMidFail(Bundle data) {
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_reportAppOpenMidFail->isReportMid:" + this.isReportMid);
        if (this.isReportMid) {
            return;
        }
        this.isReportMid = true;
        Bundle bundle = new Bundle();
        bundle.putAll(data);
        bundle.putString("openMiniAppResult", "false");
        bundle.putString("openMiniAppFailedReason", this.openMiniAppFailedReason);
        bundle.putInt("maxStage", getMaxStageFromCompare());
        bundle.putInt("syncType", this.syncType);
        bundle.putString("open_channel", String.valueOf(this.openChannel));
        bundle.putString(TmcConstants.HOT_OPEN_TYPE, String.valueOf(this.hotOpenType));
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        ChainState chainState = this.currentChainStartState;
        boolean z10 = chainState != null && this.currentChainEndState == null;
        if (z10 && chainState != null) {
            Map<String, List<Long>> map = this.stateRangeTime;
            Intrinsics.e(chainState);
            if (map.get(String.valueOf(chainState.getStep())) != null) {
                Map<String, List<Long>> map2 = this.stateRangeTime;
                ChainState chainState2 = this.currentChainStartState;
                Intrinsics.e(chainState2);
                List<Long> list = map2.get(String.valueOf(chainState2.getStep()));
                if (list != null && list.size() == 1) {
                    Map<String, List<Long>> map3 = this.stateRangeTime;
                    ChainState chainState3 = this.currentChainStartState;
                    Intrinsics.e(chainState3);
                    List<Long> list2 = map3.get(String.valueOf(chainState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    Map<String, Long> map4 = this.stateCostTime;
                    ChainState chainState4 = this.currentChainStartState;
                    Intrinsics.e(chainState4);
                    String strValueOf = String.valueOf(chainState4.getStep());
                    Map<String, List<Long>> map5 = this.stateRangeTime;
                    ChainState chainState5 = this.currentChainStartState;
                    Intrinsics.e(chainState5);
                    List<Long> list3 = map5.get(String.valueOf(chainState5.getStep()));
                    long jLongValue = list3 != null ? list3.get(1).longValue() : 0L;
                    Map<String, List<Long>> map6 = this.stateRangeTime;
                    ChainState chainState6 = this.currentChainStartState;
                    Intrinsics.e(chainState6);
                    List<Long> list4 = map6.get(String.valueOf(chainState6.getStep()));
                    map4.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? list4.get(0).longValue() : 0L)));
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        bundle.putString("isExitInStage", String.valueOf(appendStagesFail(linkedHashMap, linkedHashMap2, z10)));
        bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap2));
        bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, this.scene);
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("openedPageCount", String.valueOf(this.openedPageCount.get()));
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(this.appId, "mini_app_open_mid", bundle);
    }

    private final void reportPageOpenEndFail(Bundle dataBundle) {
        ChainState chainState;
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_reportPageOpenEndFail");
        Bundle bundle = new Bundle();
        bundle.putAll(dataBundle);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", this.openMiniAppFailedReason);
        bundle.putInt("maxStage", this.maxStage);
        bundle.putString("open_channel", String.valueOf(this.openChannel));
        bundle.putString(TmcConstants.HOT_OPEN_TYPE, String.valueOf(this.hotOpenType));
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        boolean z10 = this.currentChainStartState != null && this.currentChainEndState == null;
        bundle.putString("isExitInStage", String.valueOf(z10));
        if (z10 && (chainState = this.currentChainStartState) != null) {
            Map<String, List<Long>> map = this.stateRangeTime;
            Intrinsics.e(chainState);
            if (map.get(String.valueOf(chainState.getStep())) != null) {
                Map<String, List<Long>> map2 = this.stateRangeTime;
                ChainState chainState2 = this.currentChainStartState;
                Intrinsics.e(chainState2);
                List<Long> list = map2.get(String.valueOf(chainState2.getStep()));
                if (list != null && list.size() == 1) {
                    Map<String, List<Long>> map3 = this.stateRangeTime;
                    ChainState chainState3 = this.currentChainStartState;
                    Intrinsics.e(chainState3);
                    List<Long> list2 = map3.get(String.valueOf(chainState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    Map<String, Long> map4 = this.stateCostTime;
                    ChainState chainState4 = this.currentChainStartState;
                    Intrinsics.e(chainState4);
                    String strValueOf = String.valueOf(chainState4.getStep());
                    Map<String, List<Long>> map5 = this.stateRangeTime;
                    ChainState chainState5 = this.currentChainStartState;
                    Intrinsics.e(chainState5);
                    List<Long> list3 = map5.get(String.valueOf(chainState5.getStep()));
                    long jLongValue = list3 != null ? list3.get(1).longValue() : 0L;
                    Map<String, List<Long>> map6 = this.stateRangeTime;
                    ChainState chainState6 = this.currentChainStartState;
                    Intrinsics.e(chainState6);
                    List<Long> list4 = map6.get(String.valueOf(chainState6.getStep()));
                    map4.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? list4.get(0).longValue() : 0L)));
                }
            }
        }
        bundle.putString("stageCostTime", GsonUtils.toJson(this.stateCostTime));
        bundle.putString("stageRangeTime", GsonUtils.toJson(this.stateRangeTime));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, String.valueOf(this.scene));
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("pageIndex", "1");
        bundle.putString("isAdd", "false");
        bundle.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, this.offScreenRender);
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(this.appId, "mini_page_open_end", bundle);
    }

    private final void reportPageOpenMidFail(Bundle dataBundle) {
        ChainState chainState;
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_reportPageOpenMidFail");
        Bundle bundle = new Bundle();
        bundle.putAll(dataBundle);
        bundle.putString("openPageResult", "false");
        bundle.putString("openPageFailedReason", this.openMiniAppFailedReason);
        bundle.putInt("maxStage", this.maxStage);
        bundle.putString("open_channel", String.valueOf(this.openChannel));
        bundle.putString(TmcConstants.HOT_OPEN_TYPE, String.valueOf(this.hotOpenType));
        long j11 = bundle.containsKey(ChainPoint.TIME) ? bundle.getLong(ChainPoint.TIME) : System.currentTimeMillis();
        boolean z10 = this.currentChainStartState != null && this.currentChainEndState == null;
        bundle.putString("isExitInStage", String.valueOf(z10));
        if (z10 && (chainState = this.currentChainStartState) != null) {
            Map<String, List<Long>> map = this.stateRangeTime;
            Intrinsics.e(chainState);
            if (map.get(String.valueOf(chainState.getStep())) != null) {
                Map<String, List<Long>> map2 = this.stateRangeTime;
                ChainState chainState2 = this.currentChainStartState;
                Intrinsics.e(chainState2);
                List<Long> list = map2.get(String.valueOf(chainState2.getStep()));
                if (list != null && list.size() == 1) {
                    Map<String, List<Long>> map3 = this.stateRangeTime;
                    ChainState chainState3 = this.currentChainStartState;
                    Intrinsics.e(chainState3);
                    List<Long> list2 = map3.get(String.valueOf(chainState3.getStep()));
                    if (list2 != null) {
                        list2.add(Long.valueOf(j11));
                    }
                    Map<String, Long> map4 = this.stateCostTime;
                    ChainState chainState4 = this.currentChainStartState;
                    Intrinsics.e(chainState4);
                    String strValueOf = String.valueOf(chainState4.getStep());
                    Map<String, List<Long>> map5 = this.stateRangeTime;
                    ChainState chainState5 = this.currentChainStartState;
                    Intrinsics.e(chainState5);
                    List<Long> list3 = map5.get(String.valueOf(chainState5.getStep()));
                    long jLongValue = list3 != null ? list3.get(1).longValue() : 0L;
                    Map<String, List<Long>> map6 = this.stateRangeTime;
                    ChainState chainState6 = this.currentChainStartState;
                    Intrinsics.e(chainState6);
                    List<Long> list4 = map6.get(String.valueOf(chainState6.getStep()));
                    map4.put(strValueOf, Long.valueOf(jLongValue - (list4 != null ? list4.get(0).longValue() : 0L)));
                }
            }
        }
        bundle.putString("stageCostTime", GsonUtils.toJson(this.stateCostTime));
        bundle.putString("stageRangeTime", GsonUtils.toJson(this.stateRangeTime));
        bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, String.valueOf(this.scene));
        String string = bundle.getString(ChainPoint.PAGE_PATH);
        if (string != null) {
            bundle.putString(PointConstants.POINT_PAGE_PATH, string);
        }
        bundle.putString("pageIndex", "1");
        bundle.putString("isAdd", "false");
        bundle.remove(ChainPoint.PAGE_PATH);
        bundle.remove(ChainPoint.PAGE_ID);
        ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(this.appId, "mini_page_open_mid", bundle);
    }

    public final void appendStagesSuccess(PageChainContext pageChainContext, Map<String, List<Long>> tmpStateRangeTime, Map<String, Long> tmpStateCostTime, int stage) {
        Intrinsics.h(pageChainContext, "pageChainContext");
        Intrinsics.h(tmpStateRangeTime, "tmpStateRangeTime");
        Intrinsics.h(tmpStateCostTime, "tmpStateCostTime");
        TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_appendStages");
        if ((stage != 17 || this.isReportMid) && (stage != 18 || this.isReportEnd)) {
            return;
        }
        tmpStateRangeTime.putAll(this.stateRangeTime);
        tmpStateCostTime.putAll(this.stateCostTime);
        tmpStateRangeTime.putAll(pageChainContext.getStateRangeTime());
        tmpStateCostTime.putAll(pageChainContext.getStateCostTime());
    }

    @Override // com.cloud.tmc.integration.chain.ChainContext
    public void destroy(Bundle data) {
        Intrinsics.h(data, "data");
        try {
            TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_destroy");
            destroyReport(data);
            this.pageContexts.clear();
        } catch (Throwable unused) {
        }
    }

    public final String getAppId() {
        return this.appId;
    }

    @Override // com.cloud.tmc.integration.chain.ChainContext
    public ContextType getContextType() {
        return ContextType.TYPE_APP;
    }

    public final ChainState getCurrentChainEndState() {
        return this.currentChainEndState;
    }

    public final ChainState getCurrentChainStartState() {
        return this.currentChainStartState;
    }

    public final int getFirstPageMaxStage() {
        return this.firstPageMaxStage;
    }

    public final Map<String, Long> getFirstPageStateCostTime() {
        return this.firstPageStateCostTime;
    }

    public final Map<String, List<Long>> getFirstPageStateRangeTime() {
        return this.firstPageStateRangeTime;
    }

    public final String getH5ProgressCollectList() {
        return this.h5ProgressCollectList;
    }

    public final String getHotOpenType() {
        return this.hotOpenType;
    }

    public final int getMaxStage() {
        return this.maxStage;
    }

    public final boolean getOffScreenRender() {
        return this.offScreenRender;
    }

    public final String getOpenChannel() {
        return this.openChannel;
    }

    public final boolean getOpenMiniAppEndResult() {
        return this.openMiniAppEndResult;
    }

    public final String getOpenMiniAppFailedReason() {
        return this.openMiniAppFailedReason;
    }

    public final boolean getOpenMiniAppMidResult() {
        return this.openMiniAppMidResult;
    }

    public final AtomicInteger getOpenedPageCount() {
        return this.openedPageCount;
    }

    public final Stack<PageChainContext> getPageContexts() {
        return this.pageContexts;
    }

    public final AtomicInteger getPageIndexOfApp() {
        return this.pageIndexOfApp;
    }

    public final String getScene() {
        return this.scene;
    }

    public final Map<String, Long> getStateCostTime() {
        return this.stateCostTime;
    }

    public final Map<String, List<Long>> getStateRangeTime() {
        return this.stateRangeTime;
    }

    public final int getSyncType() {
        return this.syncType;
    }

    public final Map<String, Integer> getSyncTypeMap() {
        return this.syncTypeMap;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004f A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x0005, B:5:0x002e, B:7:0x0036, B:8:0x0039, B:10:0x003d, B:16:0x004f, B:13:0x0046, B:17:0x005a, B:23:0x006c, B:20:0x0063, B:24:0x0072, B:33:0x008d, B:27:0x007b, B:30:0x0084), top: B:37:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x006c A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x0005, B:5:0x002e, B:7:0x0036, B:8:0x0039, B:10:0x003d, B:16:0x004f, B:13:0x0046, B:17:0x005a, B:23:0x006c, B:20:0x0063, B:24:0x0072, B:33:0x008d, B:27:0x007b, B:30:0x0084), top: B:37:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x008d A[Catch: all -> 0x0092, TRY_LEAVE, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x0005, B:5:0x002e, B:7:0x0036, B:8:0x0039, B:10:0x003d, B:16:0x004f, B:13:0x0046, B:17:0x005a, B:23:0x006c, B:20:0x0063, B:24:0x0072, B:33:0x008d, B:27:0x007b, B:30:0x0084), top: B:37:0x0005 }] */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v2 int, still in use, count: 2, list:
  (r1v2 int) from 0x0034: IF  (r1v2 int) != (48 int)  -> B:7:0x0036 A[HIDDEN]
  (r1v2 int) from 0x0039: SWITCH (r1v2 int)
 case 2057739745: goto B:13:0x0046
 case 2057739746: goto B:10:0x003d
 default: goto B:9:0x003c A[Catch: all -> 0x0092, RegionRef:SW:8]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.cloud.tmc.integration.chain.app.IAppOpen
    public void hotOpen(Bundle dataBundle) {
        Intrinsics.h(dataBundle, "dataBundle");
        try {
            String hotOpenType = dataBundle.getString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.COLD_OPEN_TYPE);
            TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_hotOpen -> hotOpenType:" + hotOpenType);
            if (hotOpenType != null) {
                if (iHashCode != 48) {
                    switch (hotOpenType) {
                        case "normal_1":
                        case "normal_2":
                            HotOpenManager.INSTANCE.openActivatePage(this, dataBundle);
                            break;
                        case "normal_3":
                        case "normal_4":
                            HotOpenManager.INSTANCE.openNewPage(this, dataBundle);
                            break;
                        default:
                            switch (iHashCode) {
                                case 2057739745:
                                    if (hotOpenType.equals(TmcConstants.HOT_OPEN_TYPE_SHELL_0)) {
                                        HotOpenManager hotOpenManager = HotOpenManager.INSTANCE;
                                        Intrinsics.g(hotOpenType, "hotOpenType");
                                        hotOpenManager.openActivatePageShell(this, dataBundle, hotOpenType);
                                    }
                                    break;
                                case 2057739746:
                                    if (hotOpenType.equals(TmcConstants.HOT_OPEN_TYPE_SHELL_1)) {
                                        HotOpenManager hotOpenManager2 = HotOpenManager.INSTANCE;
                                        Intrinsics.g(hotOpenType, "hotOpenType");
                                        hotOpenManager2.openActivatePageShell(this, dataBundle, hotOpenType);
                                    }
                                    break;
                            }
                    }
                } else if (hotOpenType.equals("0")) {
                    HotOpenManager.INSTANCE.openActivatePage(this, dataBundle);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: isReportEnd, reason: from getter */
    public final boolean getIsReportEnd() {
        return this.isReportEnd;
    }

    /* JADX INFO: renamed from: isReportMid, reason: from getter */
    public final boolean getIsReportMid() {
        return this.isReportMid;
    }

    @Override // com.cloud.tmc.integration.chain.ChainContext
    public void log(String str) {
        ChainContext.DefaultImpls.log(this, str);
    }

    public final void reportAppOpenEndSuccess(Bundle data, boolean launch) {
        Intrinsics.h(data, "data");
        try {
            TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_reportAppOpenEndSuccess->isReportEnd:" + this.isReportEnd);
            if (this.isReportEnd) {
                return;
            }
            this.isReportEnd = true;
            this.openMiniAppEndResult = true;
            Bundle bundle = new Bundle();
            bundle.putAll(data);
            bundle.putString("openMiniAppResult", "true");
            bundle.putString("openMiniAppFailedReason", "");
            bundle.putInt("syncType", this.syncType);
            bundle.putString("isExitInStage", "false");
            bundle.putString("open_channel", String.valueOf(this.openChannel));
            bundle.putString(TmcConstants.HOT_OPEN_TYPE, String.valueOf(this.hotOpenType));
            bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, String.valueOf(this.scene));
            bundle.putString("openByLaunch", String.valueOf(launch));
            String string = bundle.getString(ChainPoint.PAGE_PATH);
            if (string != null) {
                bundle.putString(PointConstants.POINT_PAGE_PATH, string);
            }
            bundle.putString("appH5ProgressStatus", this.h5ProgressCollectList);
            bundle.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, this.offScreenRender);
            bundle.remove(ChainPoint.PAGE_PATH);
            bundle.remove(ChainPoint.PAGE_ID);
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(this.appId, "mini_app_open_end", bundle);
        } catch (Throwable unused) {
        }
    }

    public final void reportAppOpenMidSuccess(Bundle data, boolean launch) {
        Intrinsics.h(data, "data");
        try {
            TmcLogger.d("chainPoint", AppChainContext.class.getName() + "_reportAppOpenMidSuccess->isReportMid:" + this.isReportMid);
            if (this.isReportMid) {
                return;
            }
            this.isReportMid = true;
            this.openMiniAppMidResult = true;
            Bundle bundle = new Bundle();
            bundle.putAll(data);
            bundle.putString("openMiniAppResult", "true");
            bundle.putString("openMiniAppFailedReason", "");
            bundle.putInt("syncType", this.syncType);
            bundle.putString("isExitInStage", "false");
            bundle.putString("open_channel", String.valueOf(this.openChannel));
            bundle.putString(TmcConstants.HOT_OPEN_TYPE, String.valueOf(this.hotOpenType));
            bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, String.valueOf(this.scene));
            bundle.putString("openByLaunch", String.valueOf(launch));
            String string = bundle.getString(ChainPoint.PAGE_PATH);
            if (string != null) {
                bundle.putString(PointConstants.POINT_PAGE_PATH, string);
            }
            bundle.remove(ChainPoint.PAGE_PATH);
            bundle.remove(ChainPoint.PAGE_ID);
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(this.appId, "mini_app_open_mid", bundle);
        } catch (Throwable unused) {
        }
    }

    public final void reportFailureClickReloadButton() {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("openMiniAppFailedReason", "reload");
            reportPageOpenMidFail(bundle);
            reportPageOpenEndFail(bundle);
        } catch (Throwable th2) {
            TmcLogger.e(TmcConstants.TAG, th2);
        }
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    @Override // com.cloud.tmc.integration.chain.ChainContext
    public void setChainState(ChainState chainState) {
        Intrinsics.h(chainState, "chainState");
        try {
            log("setChainState_" + chainState.getStep());
            int i11 = WhenMappings.$EnumSwitchMapping$0[chainState.getChainType().ordinal()];
            if (i11 == 1) {
                parseChainStart(chainState);
            } else if (i11 == 2) {
                parseChainEnd(chainState);
            } else if (i11 == 3) {
                parseChianError(chainState);
            } else if (i11 == 4) {
                insertData(chainState);
            }
        } catch (Throwable unused) {
        }
    }

    public void setContextType(ContextType value) {
        Intrinsics.h(value, "value");
    }

    public final void setCurrentChainEndState(ChainState chainState) {
        this.currentChainEndState = chainState;
    }

    public final void setCurrentChainStartState(ChainState chainState) {
        this.currentChainStartState = chainState;
    }

    public final void setFirstPageMaxStage(int i11) {
        this.firstPageMaxStage = i11;
    }

    public final void setFirstPageStateCostTime(Map<String, Long> map) {
        Intrinsics.h(map, "<set-?>");
        this.firstPageStateCostTime = map;
    }

    public final void setFirstPageStateRangeTime(Map<String, List<Long>> map) {
        Intrinsics.h(map, "<set-?>");
        this.firstPageStateRangeTime = map;
    }

    public final void setH5ProgressCollectList(String str) {
        Intrinsics.h(str, "<set-?>");
        this.h5ProgressCollectList = str;
    }

    public final void setHotOpenType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.hotOpenType = str;
    }

    public final void setMaxStage(int i11) {
        this.maxStage = i11;
    }

    public final void setOffScreenRender(boolean z10) {
        this.offScreenRender = z10;
    }

    public final void setOpenChannel(String str) {
        Intrinsics.h(str, "<set-?>");
        this.openChannel = str;
    }

    public final void setOpenMiniAppEndResult(boolean z10) {
        this.openMiniAppEndResult = z10;
    }

    public final void setOpenMiniAppFailedReason(String str) {
        Intrinsics.h(str, "<set-?>");
        this.openMiniAppFailedReason = str;
    }

    public final void setOpenMiniAppMidResult(boolean z10) {
        this.openMiniAppMidResult = z10;
    }

    public final void setOpenedPageCount(AtomicInteger atomicInteger) {
        Intrinsics.h(atomicInteger, "<set-?>");
        this.openedPageCount = atomicInteger;
    }

    public final void setPageIndexOfApp(AtomicInteger atomicInteger) {
        Intrinsics.h(atomicInteger, "<set-?>");
        this.pageIndexOfApp = atomicInteger;
    }

    public final void setReportEnd(boolean z10) {
        this.isReportEnd = z10;
    }

    public final void setReportMid(boolean z10) {
        this.isReportMid = z10;
    }

    public final void setScene(String str) {
        Intrinsics.h(str, "<set-?>");
        this.scene = str;
    }

    public final void setStateCostTime(Map<String, Long> map) {
        Intrinsics.h(map, "<set-?>");
        this.stateCostTime = map;
    }

    public final void setStateRangeTime(Map<String, List<Long>> map) {
        Intrinsics.h(map, "<set-?>");
        this.stateRangeTime = map;
    }

    public final void setSyncType(int i11) {
        this.syncType = i11;
    }

    public final void setSyncTypeMap(Map<String, Integer> map) {
        Intrinsics.h(map, "<set-?>");
        this.syncTypeMap = map;
    }
}
