package kotlin.time;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0007\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\n\u001a\u00020\u0003*\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0016\u001a\u0017\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0016\u001a\u0017\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0016\u001a\u001f\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u001f\u0010 \u001a\u0017\u0010!\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0016\u001a\u0017\u0010\"\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0016¨\u0006#"}, d2 = {"", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/Duration;", "s", "(ILkotlin/time/DurationUnit;)J", "", "t", "(JLkotlin/time/DurationUnit;)J", "", CampaignEx.JSON_KEY_AD_R, "(DLkotlin/time/DurationUnit;)J", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "strictIso", TtmlNode.TAG_P, "(Ljava/lang/String;Z)J", CampaignEx.JSON_KEY_AD_Q, "(Ljava/lang/String;)J", "nanos", "o", "(J)J", "millis", "n", "normalNanos", "l", "normalMillis", "j", "normalValue", "unitDiscriminator", "i", "(JI)J", "m", CampaignEx.JSON_KEY_AD_K, "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DurationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long i(long j11, int i11) {
        return Duration.j((j11 << 1) + ((long) i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long j(long j11) {
        return Duration.j((j11 << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long k(long j11) {
        return (-4611686018426L > j11 || j11 >= 4611686018427L) ? j(RangesKt.n(j11, -4611686018427387903L, 4611686018427387903L)) : l(n(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long l(long j11) {
        return Duration.j(j11 << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long m(long j11) {
        return (-4611686018426999999L > j11 || j11 >= 4611686018427000000L) ? j(o(j11)) : l(j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long n(long j11) {
        return j11 * ((long) 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long o(long j11) {
        return j11 / ((long) 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long p(String str, boolean z10) {
        char cCharAt;
        char cCharAt2;
        char cCharAt3;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        Duration.Companion companion = Duration.INSTANCE;
        long jC = companion.c();
        char cCharAt4 = str.charAt(0);
        boolean z11 = true;
        int length2 = (cCharAt4 == '+' || cCharAt4 == '-') ? 1 : 0;
        boolean z12 = length2 > 0;
        boolean z13 = z12 && StringsKt.V0(str, '-', false, 2, null);
        if (length <= length2) {
            throw new IllegalArgumentException("No components");
        }
        char c11 = ':';
        char c12 = '0';
        if (str.charAt(length2) == 'P') {
            int i11 = length2 + 1;
            if (i11 == length) {
                throw new IllegalArgumentException();
            }
            DurationUnit durationUnit = null;
            boolean z14 = false;
            while (i11 < length) {
                if (str.charAt(i11) != 'T') {
                    int i12 = i11;
                    while (i12 < str.length() && ((c12 <= (cCharAt3 = str.charAt(i12)) && cCharAt3 < c11) || StringsKt.b0("+-.", cCharAt3, false, 2, null))) {
                        i12++;
                        c11 = ':';
                        c12 = '0';
                    }
                    Intrinsics.f(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring = str.substring(i11, i12);
                    Intrinsics.g(strSubstring, "substring(...)");
                    if (strSubstring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = i11 + strSubstring.length();
                    if (length3 < 0 || length3 >= str.length()) {
                        throw new IllegalArgumentException("Missing unit for value " + strSubstring);
                    }
                    char cCharAt5 = str.charAt(length3);
                    int i13 = length3 + 1;
                    DurationUnit durationUnitD = DurationUnitKt__DurationUnitKt.d(cCharAt5, z14);
                    if (durationUnit != null && durationUnit.compareTo(durationUnitD) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iN0 = StringsKt.n0(strSubstring, '.', 0, false, 6, null);
                    if (durationUnitD != DurationUnit.SECONDS || iN0 <= 0) {
                        jC = Duration.G(jC, t(q(strSubstring), durationUnitD));
                    } else {
                        Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring2 = strSubstring.substring(0, iN0);
                        Intrinsics.g(strSubstring2, "substring(...)");
                        long jG = Duration.G(jC, t(q(strSubstring2), durationUnitD));
                        Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring3 = strSubstring.substring(iN0);
                        Intrinsics.g(strSubstring3, "substring(...)");
                        jC = Duration.G(jG, r(Double.parseDouble(strSubstring3), durationUnitD));
                    }
                    i11 = i13;
                    durationUnit = durationUnitD;
                    c11 = ':';
                    c12 = '0';
                    z11 = true;
                } else {
                    if (z14 || (i11 = i11 + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z14 = z11;
                }
            }
        } else {
            if (z10) {
                throw new IllegalArgumentException();
            }
            String str2 = "Unexpected order of duration components";
            long jG2 = jC;
            if (StringsKt.K(str, length2, "Infinity", 0, Math.max(length - length2, 8), true)) {
                jC = companion.a();
            } else {
                boolean z15 = !z12;
                if (z12 && str.charAt(length2) == '(' && StringsKt.w1(str) == ')') {
                    length2++;
                    length--;
                    if (length2 == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    z15 = true;
                }
                DurationUnit durationUnit2 = null;
                boolean z16 = false;
                while (length2 < length) {
                    if (z16 && z15) {
                        while (length2 < str.length() && str.charAt(length2) == ' ') {
                            length2++;
                        }
                    }
                    int i14 = length2;
                    while (i14 < str.length() && (('0' <= (cCharAt2 = str.charAt(i14)) && cCharAt2 < ':') || cCharAt2 == '.')) {
                        i14++;
                    }
                    Intrinsics.f(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring4 = str.substring(length2, i14);
                    Intrinsics.g(strSubstring4, "substring(...)");
                    if (strSubstring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length4 = length2 + strSubstring4.length();
                    int i15 = length4;
                    while (i15 < str.length() && 'a' <= (cCharAt = str.charAt(i15)) && cCharAt < '{') {
                        i15++;
                    }
                    Intrinsics.f(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring5 = str.substring(length4, i15);
                    Intrinsics.g(strSubstring5, "substring(...)");
                    length2 = length4 + strSubstring5.length();
                    DurationUnit durationUnitE = DurationUnitKt__DurationUnitKt.e(strSubstring5);
                    if (durationUnit2 != null && durationUnit2.compareTo(durationUnitE) <= 0) {
                        throw new IllegalArgumentException(str2);
                    }
                    String str3 = str2;
                    int iN1 = StringsKt.n0(strSubstring4, '.', 0, false, 6, null);
                    if (iN1 > 0) {
                        Intrinsics.f(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring6 = strSubstring4.substring(0, iN1);
                        Intrinsics.g(strSubstring6, "substring(...)");
                        long jG3 = Duration.G(jG2, t(Long.parseLong(strSubstring6), durationUnitE));
                        Intrinsics.f(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring7 = strSubstring4.substring(iN1);
                        Intrinsics.g(strSubstring7, "substring(...)");
                        jG2 = Duration.G(jG3, r(Double.parseDouble(strSubstring7), durationUnitE));
                        if (length2 < length) {
                            length2 = length2;
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                        length2 = length2;
                    } else {
                        jG2 = Duration.G(jG2, t(Long.parseLong(strSubstring4), durationUnitE));
                    }
                    str2 = str3;
                    durationUnit2 = durationUnitE;
                    z16 = true;
                }
                jC = jG2;
            }
        }
        return z13 ? Duration.K(jC) : jC;
    }

    private static final long q(String str) {
        char cCharAt;
        int length = str.length();
        int i11 = (length <= 0 || !StringsKt.b0("+-", str.charAt(0), false, 2, null)) ? 0 : 1;
        if (length - i11 > 16) {
            int i12 = i11;
            while (true) {
                if (i11 >= length) {
                    if (length - i12 <= 16) {
                        break;
                    }
                    return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                char cCharAt2 = str.charAt(i11);
                if (cCharAt2 == '0') {
                    if (i12 == i11) {
                        i12++;
                    }
                } else if ('1' > cCharAt2 || cCharAt2 >= ':') {
                    break;
                }
                i11++;
            }
        }
        if (StringsKt.W(str, "+", false, 2, null) && length > 1 && '0' <= (cCharAt = str.charAt(1)) && cCharAt < ':') {
            str = StringsKt.t1(str, 1);
        }
        return Long.parseLong(str);
    }

    public static final long r(double d11, DurationUnit unit) {
        Intrinsics.h(unit, "unit");
        double dA = DurationUnitKt__DurationUnitJvmKt.a(d11, unit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dA)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long jE = MathKt.e(dA);
        return (-4611686018426999999L > jE || jE >= 4611686018427000000L) ? k(MathKt.e(DurationUnitKt__DurationUnitJvmKt.a(d11, unit, DurationUnit.MILLISECONDS))) : l(jE);
    }

    public static final long s(int i11, DurationUnit unit) {
        Intrinsics.h(unit, "unit");
        return unit.compareTo(DurationUnit.SECONDS) <= 0 ? l(DurationUnitKt__DurationUnitJvmKt.c(i11, unit, DurationUnit.NANOSECONDS)) : t(i11, unit);
    }

    public static final long t(long j11, DurationUnit unit) {
        Intrinsics.h(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long jC = DurationUnitKt__DurationUnitJvmKt.c(4611686018426999999L, durationUnit, unit);
        return ((-jC) > j11 || j11 > jC) ? j(RangesKt.n(DurationUnitKt__DurationUnitJvmKt.b(j11, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L)) : l(DurationUnitKt__DurationUnitJvmKt.c(j11, unit, durationUnit));
    }
}
