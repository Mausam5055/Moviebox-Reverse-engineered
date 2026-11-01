package kotlin.time;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\t\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0003¢\u0006\u0004\b\u0003\u0010\u0004\"\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007\"\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0007\"\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0007\"\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0007¨\u0006\u000e"}, d2 = {"Lkotlin/time/Instant;", "instant", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lkotlin/time/Instant;)Ljava/lang/String;", "", "a", "[I", "POWERS_OF_TEN", "asciiDigitPositionsInIsoStringAfterYear", "c", "colonsInIsoOffsetString", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "asciiDigitsInIsoOffsetString", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InstantKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f67593a = {1, 10, 100, 1000, 10000, DefaultOggSeeker.MATCH_BYTE_RANGE, 1000000, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f67594b = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f67595c = {3, 6};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f67596d = {1, 2, 4, 5, 7, 8};

    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(Instant instant) throws IOException {
        int[] iArr;
        StringBuilder sb2 = new StringBuilder();
        UnboundLocalDateTime unboundLocalDateTimeA = UnboundLocalDateTime.f67605h.a(instant);
        int iG = unboundLocalDateTimeA.g();
        int i11 = 0;
        if (Math.abs(iG) < 1000) {
            StringBuilder sb3 = new StringBuilder();
            if (iG >= 0) {
                sb3.append(iG + 10000);
                Intrinsics.g(sb3.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb3.append(iG - 10000);
                Intrinsics.g(sb3.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb2.append((CharSequence) sb3);
        } else {
            if (iG >= 10000) {
                sb2.append('+');
            }
            sb2.append(iG);
        }
        sb2.append('-');
        c(sb2, sb2, unboundLocalDateTimeA.d());
        sb2.append('-');
        c(sb2, sb2, unboundLocalDateTimeA.a());
        sb2.append('T');
        c(sb2, sb2, unboundLocalDateTimeA.b());
        sb2.append(':');
        c(sb2, sb2, unboundLocalDateTimeA.c());
        sb2.append(':');
        c(sb2, sb2, unboundLocalDateTimeA.f());
        if (unboundLocalDateTimeA.e() != 0) {
            sb2.append('.');
            while (true) {
                int iE = unboundLocalDateTimeA.e();
                iArr = f67593a;
                int i12 = i11 + 1;
                if (iE % iArr[i12] != 0) {
                    break;
                }
                i11 = i12;
            }
            int i13 = i11 - (i11 % 3);
            String strValueOf = String.valueOf((unboundLocalDateTimeA.e() / iArr[i13]) + iArr[9 - i13]);
            Intrinsics.f(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strValueOf.substring(1);
            Intrinsics.g(strSubstring, "substring(...)");
            sb2.append(strSubstring);
        }
        sb2.append('Z');
        return sb2.toString();
    }

    private static final void c(Appendable appendable, StringBuilder sb2, int i11) throws IOException {
        if (i11 < 10) {
            appendable.append('0');
        }
        sb2.append(i11);
    }
}
