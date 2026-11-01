package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.MiniAppAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.kernel.proxy.performanceanalyse.a;
import com.cloud.tmc.miniutils.util.GsonUtils;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO {
    public void OooO00o(String str, MiniAppAnalyseType target) {
        String str2;
        Intrinsics.h(target, "target");
        ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
        Bundle bundle = new Bundle();
        bundle.putString(PointConstants.POINT_PAGE_PATH, target.pagePath);
        bundle.putString("event_name", target.eventName);
        Object obj = target.data;
        if (obj != null) {
            bundle.putString("data", GsonUtils.toJson(obj));
        }
        Unit unit = Unit.f67061a;
        reportProxy.report(str, "inner_miniapp_developer", bundle);
        if (str != null) {
            str2 = "[" + str + "]:" + GsonUtils.toJson(target) + "";
        } else {
            str2 = GsonUtils.toJson(target) + "";
        }
        a.a(target, str2);
    }
}
