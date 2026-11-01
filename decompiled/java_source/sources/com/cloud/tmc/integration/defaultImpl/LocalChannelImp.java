package com.cloud.tmc.integration.defaultImpl;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.proxy.ReportFactoryProxy;
import com.cloud.tmc.integration.utils.BundleUtil;
import com.cloud.tmc.integration.utils.ObjectTypeAdapter;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.StringUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.render.ILocalChannelProxy;
import com.cloud.tmc.render.method.LocalChannelInterface;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J1\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0002\u0010\fJ1\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0002\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp;", "Lcom/cloud/tmc/render/ILocalChannelProxy;", "()V", "gamePerformanceMonitorGetStr", "", "report", "", "tag", "reportData", "reportType", "", "athenaAppId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "reportForH5", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalChannelImp implements ILocalChannelProxy {
    @Override // com.cloud.tmc.render.ILocalChannelProxy
    public String gamePerformanceMonitorGetStr() {
        MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
        return miniAppConfigHelper.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_GAME_PERFORMANCE_MONITOR_STR_UES_LOCAL, true) ? MiniAppConfigHelper.DEFAULT_KEY_GAME_PERFORMANCE_MONITOR_STR : miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_GAME_PERFORMANCE_MONITOR_STR, MiniAppConfigHelper.DEFAULT_KEY_GAME_PERFORMANCE_MONITOR_STR);
    }

    @Override // com.cloud.tmc.render.ILocalChannelProxy
    public void report(String tag, String reportData, Integer reportType, Integer athenaAppId) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(reportData, "reportData");
        try {
            if (StringUtils.isEmpty(tag)) {
                TraceLog.i(LocalChannelImp.class.getSimpleName(), "tag is empty");
                return;
            }
            if (StringUtils.isEmpty(reportData)) {
                TraceLog.i(LocalChannelImp.class.getSimpleName(), "reportData is empty");
                return;
            }
            Map<String, ? extends Object> _dataMap = (Map) new GsonBuilder().registerTypeAdapter(new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.defaultImpl.LocalChannelImp$report$gson$1
            }.getType(), new ObjectTypeAdapter()).serializeNulls().create().fromJson(reportData, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.defaultImpl.LocalChannelImp$report$_dataMap$1
            }.getType());
            Bundle bundle = new Bundle();
            BundleUtil bundleUtil = BundleUtil.INSTANCE;
            Intrinsics.g(_dataMap, "_dataMap");
            bundleUtil.parse(_dataMap, bundle);
            ((ReportFactoryProxy) TmcProxy.get(ReportFactoryProxy.class)).report("", tag, bundle, reportType, athenaAppId);
        } catch (Exception e11) {
            TmcLogger.e("report exception:" + e11);
        }
    }

    @Override // com.cloud.tmc.render.ILocalChannelProxy
    public void reportForH5(String tag, String reportData, Integer reportType, Integer athenaAppId) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(reportData, "reportData");
        try {
            if (StringUtils.isEmpty(tag)) {
                TraceLog.i(LocalChannelImp.class.getSimpleName(), "tag is empty");
                LocalChannelInterface.INSTANCE.reportForH5Fail(2, "tag is empty");
            } else {
                if (StringUtils.isEmpty(reportData)) {
                    TraceLog.i(LocalChannelImp.class.getSimpleName(), "reportData is empty");
                    LocalChannelInterface.INSTANCE.reportForH5Fail(3, "reportData is empty");
                    return;
                }
                Map<String, ? extends Object> _dataMap = (Map) new GsonBuilder().registerTypeAdapter(new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.defaultImpl.LocalChannelImp$reportForH5$gson$1
                }.getType(), new ObjectTypeAdapter()).serializeNulls().create().fromJson(reportData, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.defaultImpl.LocalChannelImp$reportForH5$_dataMap$1
                }.getType());
                Bundle bundle = new Bundle();
                BundleUtil bundleUtil = BundleUtil.INSTANCE;
                Intrinsics.g(_dataMap, "_dataMap");
                bundleUtil.parse(_dataMap, bundle);
                ((ReportFactoryProxy) TmcProxy.get(ReportFactoryProxy.class)).report("", tag, bundle, reportType, athenaAppId);
            }
        } catch (Exception e11) {
            LocalChannelInterface.INSTANCE.reportForH5Fail(4, String.valueOf(e11));
        }
    }
}
