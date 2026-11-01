package com.google.firebase.crashlytics.internal.concurrency;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class CrashlyticsWorkers$Companion$checkNotMainThread$1 extends FunctionReferenceImpl implements Function0<Boolean> {
    CrashlyticsWorkers$Companion$checkNotMainThread$1(Object obj) {
        super(0, obj, CrashlyticsWorkers.Companion.class, "isNotMainThread", "isNotMainThread()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Boolean invoke() {
        return Boolean.valueOf(((CrashlyticsWorkers.Companion) this.receiver).m());
    }
}
