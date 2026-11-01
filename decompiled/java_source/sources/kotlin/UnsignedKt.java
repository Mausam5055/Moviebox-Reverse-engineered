package kotlin;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001f\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001f\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0005H\u0001¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"", "v1", "v2", "a", "(II)I", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(JJ)I", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "c", "(J)D", "base", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(JI)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class UnsignedKt {
    public static final int a(int i11, int i12) {
        return Intrinsics.j(i11 ^ Integer.MIN_VALUE, i12 ^ Integer.MIN_VALUE);
    }

    public static final int b(long j11, long j12) {
        return Intrinsics.k(j11 ^ Long.MIN_VALUE, j12 ^ Long.MIN_VALUE);
    }

    public static final double c(long j11) {
        return ((j11 >>> 11) * ((double) 2048)) + (j11 & 2047);
    }

    public static final String d(long j11, int i11) {
        if (j11 >= 0) {
            String string = Long.toString(j11, CharsKt.a(i11));
            Intrinsics.g(string, "toString(...)");
            return string;
        }
        long j12 = i11;
        long j13 = ((j11 >>> 1) / j12) << 1;
        long j14 = j11 - (j13 * j12);
        if (j14 >= j12) {
            j14 -= j12;
            j13++;
        }
        StringBuilder sb2 = new StringBuilder();
        String string2 = Long.toString(j13, CharsKt.a(i11));
        Intrinsics.g(string2, "toString(...)");
        sb2.append(string2);
        String string3 = Long.toString(j14, CharsKt.a(i11));
        Intrinsics.g(string3, "toString(...)");
        sb2.append(string3);
        return sb2.toString();
    }
}
