package com.vungle.ads.fpd;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\u0001\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/vungle/ads/fpd/LengthOfResidence;", "", "", "id", "Lkotlin/ranges/IntRange;", "range", "<init>", "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V", "I", "getId", "()I", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "Companion", "a", "LESS_THAN_ONE_YEAR", "ONE_TO_FIVE_YEARS", "SIX_TO_TEN_YEARS", "ELEVEN_TO_TWENTY_YEARS", "TWENTY_ONE_TO_THIRTY_YEARS", "THIRTY_ONE_TO_FORTY_YEARS", "FORTY_ONE_TO_FIFTY_YEARS", "FIFTY_ONE_TO_SIXTY_YEARS", "SIXTY_ONE_TO_SEVENTY_YEARS", "OVER_SEVENTY_ONE_YEARS", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum LengthOfResidence {
    LESS_THAN_ONE_YEAR(0, new IntRange(Integer.MIN_VALUE, 0)),
    ONE_TO_FIVE_YEARS(1, new IntRange(1, 5)),
    SIX_TO_TEN_YEARS(2, new IntRange(6, 10)),
    ELEVEN_TO_TWENTY_YEARS(3, new IntRange(11, 20)),
    TWENTY_ONE_TO_THIRTY_YEARS(4, new IntRange(21, 30)),
    THIRTY_ONE_TO_FORTY_YEARS(5, new IntRange(31, 40)),
    FORTY_ONE_TO_FIFTY_YEARS(6, new IntRange(41, 50)),
    FIFTY_ONE_TO_SIXTY_YEARS(7, new IntRange(51, 60)),
    SIXTY_ONE_TO_SEVENTY_YEARS(8, new IntRange(61, 70)),
    OVER_SEVENTY_ONE_YEARS(9, new IntRange(71, Integer.MAX_VALUE));


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int id;
    private final IntRange range;

    /* JADX INFO: renamed from: com.vungle.ads.fpd.LengthOfResidence$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0021  */
        /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
        public final LengthOfResidence fromYears$vungle_ads_release(int i11) {
            for (LengthOfResidence lengthOfResidence : LengthOfResidence.values()) {
                IntRange range = lengthOfResidence.getRange();
                int first = range.getFirst();
                if (i11 <= range.getLast() && first <= i11) {
                    if (lengthOfResidence == null) {
                        return LengthOfResidence.LESS_THAN_ONE_YEAR;
                    }
                    return lengthOfResidence;
                }
            }
            lengthOfResidence = null;
            if (lengthOfResidence == null) {
                return LengthOfResidence.LESS_THAN_ONE_YEAR;
            }
            return lengthOfResidence;
        }
    }

    LengthOfResidence(int i11, IntRange intRange) {
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
