package com.transsion.member.promotion;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class PromotionManager$showDialog$1 extends FunctionReferenceImpl implements Function2<Long, Integer, Boolean> {
    PromotionManager$showDialog$1(Object obj) {
        super(2, obj, g.class, "canShow", "canShow(JI)Z", 0);
    }

    public final Boolean invoke(long j11, int i11) {
        return Boolean.valueOf(((g) this.receiver).a(j11, i11));
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).longValue(), ((Number) obj2).intValue());
    }
}
