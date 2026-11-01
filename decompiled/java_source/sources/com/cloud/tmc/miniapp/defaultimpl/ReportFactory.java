package com.cloud.tmc.miniapp.defaultimpl;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.proxy.LauncherReportProxy;
import com.cloud.tmc.integration.proxy.ReportFactoryProxy;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;

/* JADX INFO: loaded from: classes3.dex */
public final class ReportFactory implements ReportFactoryProxy {

    public enum ReportType {
        ATHENA(0),
        FIREBASE(1);

        private final int type;

        ReportType(int i11) {
            this.type = i11;
        }

        public final int getType() {
            return this.type;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0036  */
    @Override // com.cloud.tmc.integration.proxy.ReportFactoryProxy
    public void report(String str, String str2, Bundle bundle, Integer num, Integer num2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (num != null) {
            if (num.intValue() == ReportType.ATHENA.getType()) {
                ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(str, str2, bundle, num2);
            } else {
                if (num.intValue() == ReportType.FIREBASE.getType()) {
                    ((LauncherReportProxy) TmcProxy.get(LauncherReportProxy.class)).report(str2, bundle);
                } else {
                    TmcLogger.e("report", "上报类型不支持");
                }
            }
        } else {
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(str, str2, bundle, num2);
        }
        if (AppDynamicBuildConfig.isAppDebugAble()) {
            com.cloud.tmc.kernel.proxy.performanceanalyse.a.a(PointAnalyseType.CONSOLE, "[埋点上报-" + str + "]: tag: " + str2 + " reportType: " + num + " athenaAppId: " + num2 + " reportData: " + bundle);
        }
    }
}
