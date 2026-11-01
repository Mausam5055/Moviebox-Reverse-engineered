package kotlin.text;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class r extends q {
    public static final Void u(String input) {
        Intrinsics.h(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + '\'');
    }

    public static Integer v(String str) {
        Intrinsics.h(str, "<this>");
        return w(str, 10);
    }

    public static final Integer w(String str, int i11) {
        boolean z10;
        int i12;
        int i13;
        Intrinsics.h(str, "<this>");
        CharsKt.a(i11);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i14 = 0;
        char cCharAt = str.charAt(0);
        int i15 = -2147483647;
        if (Intrinsics.j(cCharAt, 48) < 0) {
            i12 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z10 = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                i15 = Integer.MIN_VALUE;
                z10 = true;
            }
        } else {
            z10 = false;
            i12 = 0;
        }
        int i16 = -59652323;
        while (i12 < length) {
            int iB = b.b(str.charAt(i12), i11);
            if (iB < 0) {
                return null;
            }
            if ((i14 < i16 && (i16 != -59652323 || i14 < (i16 = i15 / i11))) || (i13 = i14 * i11) < i15 + iB) {
                return null;
            }
            i14 = i13 - iB;
            i12++;
        }
        return z10 ? Integer.valueOf(i14) : Integer.valueOf(-i14);
    }

    public static Long x(String str) {
        Intrinsics.h(str, "<this>");
        return y(str, 10);
    }

    public static final Long y(String str, int i11) {
        boolean z10;
        Intrinsics.h(str, "<this>");
        CharsKt.a(i11);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char cCharAt = str.charAt(0);
        int iJ = Intrinsics.j(cCharAt, 48);
        long j11 = C.TIME_UNSET;
        if (iJ < 0) {
            z10 = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z10 = false;
                i12 = 1;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j11 = Long.MIN_VALUE;
                i12 = 1;
            }
        } else {
            z10 = false;
        }
        long j12 = -256204778801521550L;
        long j13 = 0;
        long j14 = -256204778801521550L;
        while (i12 < length) {
            int iB = b.b(str.charAt(i12), i11);
            if (iB < 0) {
                return null;
            }
            if (j13 < j14) {
                if (j14 == j12) {
                    j14 = j11 / ((long) i11);
                    if (j13 < j14) {
                    }
                }
                return null;
            }
            long j15 = j13 * ((long) i11);
            long j16 = iB;
            if (j15 < j11 + j16) {
                return null;
            }
            j13 = j15 - j16;
            i12++;
            j12 = -256204778801521550L;
        }
        return z10 ? Long.valueOf(j13) : Long.valueOf(-j13);
    }
}
