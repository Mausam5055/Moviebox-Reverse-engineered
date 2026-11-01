package kotlin.random;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0017\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\n\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001f\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0011H\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001f\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u0017H\u0000¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lkotlin/random/Random;", "Lkotlin/ranges/IntRange;", "range", "", "f", "(Lkotlin/random/Random;Lkotlin/ranges/IntRange;)I", AppMeasurementSdk.ConditionalUserProperty.VALUE, "e", "(I)I", "bitCount", "g", "(II)I", "from", "until", "", "c", "(II)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(JJ)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(DD)V", "", "", "a", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RandomKt {
    public static final String a(Object from, Object until) {
        Intrinsics.h(from, "from");
        Intrinsics.h(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void b(double d11, double d12) {
        if (d12 <= d11) {
            throw new IllegalArgumentException(a(Double.valueOf(d11), Double.valueOf(d12)).toString());
        }
    }

    public static final void c(int i11, int i12) {
        if (i12 <= i11) {
            throw new IllegalArgumentException(a(Integer.valueOf(i11), Integer.valueOf(i12)).toString());
        }
    }

    public static final void d(long j11, long j12) {
        if (j12 <= j11) {
            throw new IllegalArgumentException(a(Long.valueOf(j11), Long.valueOf(j12)).toString());
        }
    }

    public static final int e(int i11) {
        return 31 - Integer.numberOfLeadingZeros(i11);
    }

    public static final int f(Random random, IntRange range) {
        Intrinsics.h(random, "<this>");
        Intrinsics.h(range, "range");
        if (!range.isEmpty()) {
            if (range.getLast() < Integer.MAX_VALUE) {
                return random.nextInt(range.getFirst(), range.getLast() + 1);
            }
            return range.getFirst() > Integer.MIN_VALUE ? random.nextInt(range.getFirst() - 1, range.getLast()) + 1 : random.nextInt();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    public static final int g(int i11, int i12) {
        return (i11 >>> (32 - i12)) & ((-i12) >> 31);
    }
}
