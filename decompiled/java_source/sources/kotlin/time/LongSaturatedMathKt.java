package kotlin.time;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a'\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\t\u0010\n\u001a'\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lkotlin/time/Duration;", "a", "(J)J", "origin1", "origin2", "Lkotlin/time/DurationUnit;", "unit", "c", "(JJLkotlin/time/DurationUnit;)J", "value1", "value2", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LongSaturatedMathKt {
    private static final long a(long j11) {
        return j11 < 0 ? Duration.INSTANCE.b() : Duration.INSTANCE.a();
    }

    private static final long b(long j11, long j12, DurationUnit durationUnit) {
        long j13 = j11 - j12;
        if (((j13 ^ j11) & (~(j13 ^ j12))) >= 0) {
            return DurationKt.t(j13, durationUnit);
        }
        DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit2) >= 0) {
            return Duration.K(a(j13));
        }
        long jB = DurationUnitKt__DurationUnitJvmKt.b(1L, durationUnit2, durationUnit);
        long j14 = (j11 / jB) - (j12 / jB);
        long j15 = (j11 % jB) - (j12 % jB);
        Duration.Companion companion = Duration.INSTANCE;
        return Duration.G(DurationKt.t(j14, durationUnit2), DurationKt.t(j15, durationUnit));
    }

    public static final long c(long j11, long j12, DurationUnit unit) {
        Intrinsics.h(unit, "unit");
        if (((j12 - 1) | 1) == Long.MAX_VALUE) {
            return j11 == j12 ? Duration.INSTANCE.c() : Duration.K(a(j12));
        }
        return (1 | (j11 - 1)) == Long.MAX_VALUE ? a(j11) : b(j11, j12, unit);
    }
}
