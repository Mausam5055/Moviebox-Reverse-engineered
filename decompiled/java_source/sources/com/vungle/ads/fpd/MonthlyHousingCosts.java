package com.vungle.ads.fpd;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\u0001\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/vungle/ads/fpd/MonthlyHousingCosts;", "", "", "id", "Lkotlin/ranges/IntRange;", "range", "<init>", "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V", "I", "getId", "()I", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "Companion", "a", "UNDER_500", "FROM_500_TO_1000", "FROM_1000_TO_1500", "FROM_1500_TO_2000", "FROM_2000_TO_2500", "FROM_2500_TO_3000", "FROM_3000_TO_3500", "FROM_3500_TO_4000", "FROM_4000_TO_4500", "OVER_4500", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MonthlyHousingCosts {
    UNDER_500(0, new IntRange(Integer.MIN_VALUE, 500)),
    FROM_500_TO_1000(1, new IntRange(501, 1000)),
    FROM_1000_TO_1500(2, new IntRange(1001, 1500)),
    FROM_1500_TO_2000(3, new IntRange(1501, 2000)),
    FROM_2000_TO_2500(4, new IntRange(2001, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS)),
    FROM_2500_TO_3000(5, new IntRange(2501, AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS)),
    FROM_3000_TO_3500(6, new IntRange(3001, 3500)),
    FROM_3500_TO_4000(7, new IntRange(3501, 4000)),
    FROM_4000_TO_4500(8, new IntRange(4001, 4500)),
    OVER_4500(9, new IntRange(4501, Integer.MAX_VALUE));


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int id;
    private final IntRange range;

    /* JADX INFO: renamed from: com.vungle.ads.fpd.MonthlyHousingCosts$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0021  */
        /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
        public final MonthlyHousingCosts fromCost$vungle_ads_release(int i11) {
            for (MonthlyHousingCosts monthlyHousingCosts : MonthlyHousingCosts.values()) {
                IntRange range = monthlyHousingCosts.getRange();
                int first = range.getFirst();
                if (i11 <= range.getLast() && first <= i11) {
                    if (monthlyHousingCosts == null) {
                        return MonthlyHousingCosts.UNDER_500;
                    }
                    return monthlyHousingCosts;
                }
            }
            monthlyHousingCosts = null;
            if (monthlyHousingCosts == null) {
                return MonthlyHousingCosts.UNDER_500;
            }
            return monthlyHousingCosts;
        }
    }

    MonthlyHousingCosts(int i11, IntRange intRange) {
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
