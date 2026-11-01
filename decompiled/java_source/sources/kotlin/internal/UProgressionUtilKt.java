package kotlin.internal;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.ULong;
import v6.f;
import wz.b;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\u001a'\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0001\u0010\u0004\u001a'\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0002\u0010\u0006\u001a'\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0001¢\u0006\u0004\b\u000b\u0010\u0004\u001a'\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\fH\u0001¢\u0006\u0004\b\u0003\u0010\u0006¨\u0006\r"}, d2 = {"Lkotlin/UInt;", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "(III)I", "Lkotlin/ULong;", "(JJJ)J", "start", TtmlNode.END, "", "step", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UProgressionUtilKt {
    private static final int a(int i11, int i12, int i13) {
        int iA = b.a(i11, i13);
        int iA2 = b.a(i12, i13);
        int iCompare = Integer.compare(iA ^ Integer.MIN_VALUE, iA2 ^ Integer.MIN_VALUE);
        int iB = UInt.b(iA - iA2);
        return iCompare >= 0 ? iB : UInt.b(iB + i13);
    }

    private static final long b(long j11, long j12, long j13) {
        long jA = f.a(j11, j13);
        long jA2 = f.a(j12, j13);
        int iCompare = Long.compare(jA ^ Long.MIN_VALUE, jA2 ^ Long.MIN_VALUE);
        long jB = ULong.b(jA - jA2);
        return iCompare >= 0 ? jB : ULong.b(jB + j13);
    }

    public static final long c(long j11, long j12, long j13) {
        if (j13 > 0) {
            return Long.compare(j11 ^ Long.MIN_VALUE, j12 ^ Long.MIN_VALUE) >= 0 ? j12 : ULong.b(j12 - b(j12, j11, ULong.b(j13)));
        }
        if (j13 < 0) {
            return Long.compare(j11 ^ Long.MIN_VALUE, j12 ^ Long.MIN_VALUE) <= 0 ? j12 : ULong.b(j12 + b(j11, j12, ULong.b(-j13)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    public static final int d(int i11, int i12, int i13) {
        if (i13 > 0) {
            return Integer.compare(i11 ^ Integer.MIN_VALUE, i12 ^ Integer.MIN_VALUE) >= 0 ? i12 : UInt.b(i12 - a(i12, i11, UInt.b(i13)));
        }
        if (i13 < 0) {
            return Integer.compare(i11 ^ Integer.MIN_VALUE, i12 ^ Integer.MIN_VALUE) <= 0 ? i12 : UInt.b(i12 + a(i11, i12, UInt.b(-i13)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }
}
