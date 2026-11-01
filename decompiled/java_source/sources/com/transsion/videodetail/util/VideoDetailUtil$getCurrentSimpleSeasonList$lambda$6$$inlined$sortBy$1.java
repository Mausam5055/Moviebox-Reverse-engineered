package com.transsion.videodetail.util;

import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoDetailUtil$getCurrentSimpleSeasonList$lambda$6$$inlined$sortBy$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t11, T t12) {
        return ComparisonsKt.d(Integer.valueOf(((VideoDetailMediaSource) t11).getEp()), Integer.valueOf(((VideoDetailMediaSource) t12).getEp()));
    }
}
