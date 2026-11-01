package com.transsion.postdetail.ui.fragment;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class LocalVideoDetailFragment$screenHelper$2$1 extends FunctionReferenceImpl implements Function0<Boolean> {
    LocalVideoDetailFragment$screenHelper$2$1(Object obj) {
        super(0, obj, LocalVideoDetailFragment.class, "isCloseAutoRotation", "isCloseAutoRotation()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Boolean invoke() {
        return Boolean.valueOf(((LocalVideoDetailFragment) this.receiver).X2());
    }
}
