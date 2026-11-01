package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class t extends x {
    private boolean alreadyLogged;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(Sdk$SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.h(metricType, "metricType");
    }

    public final boolean alreadyMetered$vungle_ads_release() {
        return (getValueFirst() == null || getValueSecond() == null) ? false : true;
    }

    public final boolean isLogged() {
        return this.alreadyLogged;
    }

    @Override // com.vungle.ads.x
    public void markEnd() {
        if (getValueSecond() == null) {
            super.markEnd();
        }
    }

    public final void markLogged() {
        this.alreadyLogged = true;
    }

    @Override // com.vungle.ads.x
    public void markStart() {
        if (getValueFirst() == null) {
            super.markStart();
        }
    }
}
