package com.transsion.shorttv_pugc.ui.fragment;

import com.transsion.shorttv_pugc.bean.OperateItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVDiscoverFragment$setOtherOperation$$inlined$sortedBy$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t11, T t12) {
        return ComparisonsKt.d(((OperateItem) t11).getPosition(), ((OperateItem) t12).getPosition());
    }
}
