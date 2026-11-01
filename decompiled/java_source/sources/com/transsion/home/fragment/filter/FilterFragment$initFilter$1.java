package com.transsion.home.fragment.filter;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class FilterFragment$initFilter$1 extends FunctionReferenceImpl implements Function1<tl.a, Unit> {
    FilterFragment$initFilter$1(Object obj) {
        super(1, obj, FilterFragment.class, "reportClick", "reportClick(Lcom/transsion/home/view/filter/item/FilterItem;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((tl.a) obj);
        return Unit.f67061a;
    }

    public final void invoke(tl.a p11) {
        Intrinsics.h(p11, "p0");
        ((FilterFragment) this.receiver).y1(p11);
    }
}
