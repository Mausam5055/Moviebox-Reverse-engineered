package com.google.android.libraries.places.internal;

import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzajl {
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (((r0 & 1) & (r7 != java.math.RoundingMode.HALF_EVEN ? 0 : 1)) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r1 > 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r5 > 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
    
        if (r5 < 0) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(int i11, int i12, RoundingMode roundingMode) {
        roundingMode.getClass();
        if (i12 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i13 = i11 / i12;
        int i14 = i11 - (i12 * i13);
        if (i14 != 0) {
            int i15 = ((i11 ^ i12) >> 31) | 1;
            switch (zzajk.zza[roundingMode.ordinal()]) {
                case 1:
                    zzajn.zza(false);
                case 2:
                    return i13;
                case 3:
                    break;
                case 4:
                    return i13 + i15;
                case 5:
                    break;
                case 6:
                case 7:
                case 8:
                    int iAbs = Math.abs(i14);
                    int iAbs2 = iAbs - (Math.abs(i12) - iAbs);
                    if (iAbs2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP) {
                            break;
                        }
                        return i13 + i15;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
        }
        return i13;
    }

    public static int zzb(int i11, RoundingMode roundingMode) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("x (0) must be > 0");
        }
        switch (zzajk.zza[roundingMode.ordinal()]) {
            case 1:
                zzajn.zza(((i11 + (-1)) & i11) == 0);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i11 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i11);
                return (31 - iNumberOfLeadingZeros) + ((((-1257966797) >>> iNumberOfLeadingZeros) - i11) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i11);
    }
}
