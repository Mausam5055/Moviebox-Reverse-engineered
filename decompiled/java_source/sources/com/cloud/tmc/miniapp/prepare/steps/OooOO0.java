package com.cloud.tmc.miniapp.prepare.steps;

import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class OooOO0 {
    public static PointAnalyseType OooO00o(PrepareContext prepareContext, String str, String str2, PointAnalyseType pointAnalyseType, String str3) {
        return pointAnalyseType.putData(str3, prepareContext.getStartParams().getString(str, str2));
    }
}
