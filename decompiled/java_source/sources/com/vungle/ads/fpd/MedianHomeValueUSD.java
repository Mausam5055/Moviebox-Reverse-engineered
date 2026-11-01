package com.vungle.ads.fpd;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\u0001\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/vungle/ads/fpd/MedianHomeValueUSD;", "", "", "id", "Lkotlin/ranges/IntRange;", "range", "<init>", "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V", "I", "getId", "()I", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "Companion", "a", "UNDER_100K", "FROM_100K_TO_300K", "FROM_300K_TO_500K", "FROM_500K_TO_700K", "FROM_700K_TO_900K", "FROM_900K_TO_1M1", "FROM_1M1_TO_1M3", "FROM_1M3_TO_1M5", "FROM_1M5_TO_1M7", "OVER_1M7", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MedianHomeValueUSD {
    UNDER_100K(0, new IntRange(Integer.MIN_VALUE, DefaultOggSeeker.MATCH_BYTE_RANGE)),
    FROM_100K_TO_300K(1, new IntRange(100001, 300000)),
    FROM_300K_TO_500K(2, new IntRange(300001, 500000)),
    FROM_500K_TO_700K(3, new IntRange(500001, 700000)),
    FROM_700K_TO_900K(4, new IntRange(700001, 900000)),
    FROM_900K_TO_1M1(5, new IntRange(900001, 1100000)),
    FROM_1M1_TO_1M3(6, new IntRange(1100001, 1300000)),
    FROM_1M3_TO_1M5(7, new IntRange(1300001, 1500000)),
    FROM_1M5_TO_1M7(8, new IntRange(1500001, 1700000)),
    OVER_1M7(9, new IntRange(1700001, Integer.MAX_VALUE));


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int id;
    private final IntRange range;

    /* JADX INFO: renamed from: com.vungle.ads.fpd.MedianHomeValueUSD$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0021  */
        /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
        public final MedianHomeValueUSD fromPrice$vungle_ads_release(int i11) {
            for (MedianHomeValueUSD medianHomeValueUSD : MedianHomeValueUSD.values()) {
                IntRange range = medianHomeValueUSD.getRange();
                int first = range.getFirst();
                if (i11 <= range.getLast() && first <= i11) {
                    if (medianHomeValueUSD == null) {
                        return MedianHomeValueUSD.UNDER_100K;
                    }
                    return medianHomeValueUSD;
                }
            }
            medianHomeValueUSD = null;
            if (medianHomeValueUSD == null) {
                return MedianHomeValueUSD.UNDER_100K;
            }
            return medianHomeValueUSD;
        }
    }

    MedianHomeValueUSD(int i11, IntRange intRange) {
        this.id = i11;
        this.range = intRange;
    }

    public final int getId() {
        return this.id;
    }

    public final IntRange getRange() {
        return this.range;
    }
}
