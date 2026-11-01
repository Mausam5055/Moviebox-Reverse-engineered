package kotlin.internal;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\n\u001a\u001f\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0001\u0010\t\u001a'\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0002\u0010\n\u001a'\u0010\b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0001¢\u0006\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "e", "(II)I", "", "f", "(JJ)J", "c", "(III)I", "(JJJ)J", "start", TtmlNode.END, "step", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProgressionUtilKt {
    private static final int a(int i11, int i12, int i13) {
        return e(e(i11, i13) - e(i12, i13), i13);
    }

    private static final long b(long j11, long j12, long j13) {
        return f(f(j11, j13) - f(j12, j13), j13);
    }

    public static final int c(int i11, int i12, int i13) {
        if (i13 > 0) {
            return i11 >= i12 ? i12 : i12 - a(i12, i11, i13);
        }
        if (i13 < 0) {
            return i11 <= i12 ? i12 : i12 + a(i11, i12, -i13);
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    public static final long d(long j11, long j12, long j13) {
        if (j13 > 0) {
            return j11 >= j12 ? j12 : j12 - b(j12, j11, j13);
        }
        if (j13 < 0) {
            return j11 <= j12 ? j12 : j12 + b(j11, j12, -j13);
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    private static final int e(int i11, int i12) {
        int i13 = i11 % i12;
        return i13 >= 0 ? i13 : i13 + i12;
    }

    private static final long f(long j11, long j12) {
        long j13 = j11 % j12;
        return j13 >= 0 ? j13 : j13 + j12;
    }
}
