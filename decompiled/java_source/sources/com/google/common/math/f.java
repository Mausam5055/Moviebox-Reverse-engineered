package com.google.common.math;

import com.google.common.base.m;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.math.RoundingMode;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f30902a = {19, 18, 18, 18, 18, 17, 17, 17, 16, 16, 16, 15, 15, 15, 15, 14, 14, 14, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final long[] f30903b = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, C.NANOS_PER_SECOND, RealConnection.IDLE_CONNECTION_HEALTHY_NS, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final long[] f30904c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final long[] f30905d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f30906e = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, 887, 534, 361, 265, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, 169, 143, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f30907f = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, 1313, 684, 419, MBSupportMuteAdType.INTERSTITIAL_VIDEO, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 169, 139, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long[][] f30908g = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f30909a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f30909a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30909a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30909a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30909a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f30909a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f30909a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f30909a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f30909a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static long a(long j11, long j12) {
        long j13 = j11 + j12;
        g.c(((j11 ^ j12) < 0) | ((j11 ^ j13) >= 0), "checkedAdd", j11, j12);
        return j13;
    }

    public static long b(long j11, long j12) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j11) + Long.numberOfLeadingZeros(~j11) + Long.numberOfLeadingZeros(j12) + Long.numberOfLeadingZeros(~j12);
        if (iNumberOfLeadingZeros > 65) {
            return j11 * j12;
        }
        g.c(iNumberOfLeadingZeros >= 64, "checkedMultiply", j11, j12);
        g.c((j11 >= 0) | (j12 != Long.MIN_VALUE), "checkedMultiply", j11, j12);
        long j13 = j11 * j12;
        g.c(j11 == 0 || j13 / j11 == j12, "checkedMultiply", j11, j12);
        return j13;
    }

    public static long c(long j11, long j12, RoundingMode roundingMode) {
        m.o(roundingMode);
        long j13 = j11 / j12;
        long j14 = j11 - (j12 * j13);
        if (j14 == 0) {
            return j13;
        }
        int i11 = ((int) ((j11 ^ j12) >> 63)) | 1;
        switch (a.f30909a[roundingMode.ordinal()]) {
            case 1:
                g.g(j14 == 0);
                return j13;
            case 2:
                return j13;
            case 3:
                if (i11 >= 0) {
                    return j13;
                }
                break;
            case 4:
                break;
            case 5:
                if (i11 <= 0) {
                    return j13;
                }
                break;
            case 6:
            case 7:
            case 8:
                long jAbs = Math.abs(j14);
                long jAbs2 = jAbs - (Math.abs(j12) - jAbs);
                if (jAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j13) == 0)) {
                        return j13;
                    }
                } else if (jAbs2 <= 0) {
                    return j13;
                }
            default:
                throw new AssertionError();
        }
        return j13 + ((long) i11);
    }

    public static long d(long j11, long j12) {
        g.e("a", j11);
        g.e(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, j12);
        if (j11 == 0) {
            return j12;
        }
        if (j12 == 0) {
            return j11;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j11);
        long jNumberOfTrailingZeros = j11 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j12);
        long j13 = j12 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j13) {
            long j14 = jNumberOfTrailingZeros - j13;
            long j15 = (j14 >> 63) & j14;
            long j16 = (j14 - j15) - j15;
            j13 += j15;
            jNumberOfTrailingZeros = j16 >> Long.numberOfTrailingZeros(j16);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static long e(long j11, long j12) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j11) + Long.numberOfLeadingZeros(~j11) + Long.numberOfLeadingZeros(j12) + Long.numberOfLeadingZeros(~j12);
        if (iNumberOfLeadingZeros > 65) {
            return j11 * j12;
        }
        long j13 = ((j11 ^ j12) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j12 == Long.MIN_VALUE) & (j11 < 0))) {
            return j13;
        }
        long j14 = j11 * j12;
        return (j11 == 0 || j14 / j11 == j12) ? j14 : j13;
    }
}
