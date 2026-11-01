package com.transsion.baselib.helper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class ScreenRotationHelper$orientationListener$2$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    ScreenRotationHelper$orientationListener$2$1(Object obj) {
        super(1, obj, ScreenRotationHelper.class, "autoScreenRotation", "autoScreenRotation(Z)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Boolean) obj).booleanValue());
        return Unit.f67061a;
    }

    public final void invoke(boolean z10) {
        ((ScreenRotationHelper) this.receiver).e(z10);
    }
}
