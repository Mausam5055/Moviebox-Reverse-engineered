package com.alibaba.fastjson.util;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Array;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[][] f18261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[][] f18262b;

    static {
        Class cls = Integer.TYPE;
        f18261a = (int[][]) Array.newInstance((Class<?>) cls, 326, 4);
        f18262b = (int[][]) Array.newInstance((Class<?>) cls, 291, 4);
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerSubtract = bigInteger.shiftLeft(31).subtract(bigInteger);
        BigInteger bigIntegerSubtract2 = bigInteger.shiftLeft(31).subtract(bigInteger);
        int i11 = 0;
        while (i11 < 326) {
            BigInteger bigIntegerPow = BigInteger.valueOf(5L).pow(i11);
            int iBitLength = bigIntegerPow.bitLength();
            int i12 = i11 == 0 ? 1 : (int) (((((long) i11) * 23219280) + 9999999) / 10000000);
            if (i12 != iBitLength) {
                throw new IllegalStateException(iBitLength + " != " + i12);
            }
            if (i11 < f18261a.length) {
                for (int i13 = 0; i13 < 4; i13++) {
                    f18261a[i11][i13] = bigIntegerPow.shiftRight((iBitLength - 121) + ((3 - i13) * 31)).and(bigIntegerSubtract).intValue();
                }
            }
            if (i11 < f18262b.length) {
                int i14 = iBitLength + Sdk$SDKError.Reason.TPAT_ERROR_VALUE;
                BigInteger bigInteger2 = BigInteger.ONE;
                BigInteger bigIntegerAdd = bigInteger2.shiftLeft(i14).divide(bigIntegerPow).add(bigInteger2);
                for (int i15 = 0; i15 < 4; i15++) {
                    if (i15 == 0) {
                        f18262b[i11][i15] = bigIntegerAdd.shiftRight((3 - i15) * 31).intValue();
                    } else {
                        f18262b[i11][i15] = bigIntegerAdd.shiftRight((3 - i15) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            i11++;
        }
    }

    public static int a(double d11, char[] cArr, int i11) {
        int i12;
        boolean z10;
        int i13;
        long j11;
        boolean z11;
        boolean z12;
        long j12;
        long j13;
        long j14;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z13;
        boolean z14;
        int i19;
        int i20;
        int i21;
        int i22;
        if (Double.isNaN(d11)) {
            cArr[i11] = 'N';
            cArr[i11 + 1] = 'a';
            i22 = i11 + 3;
            cArr[i11 + 2] = 'N';
        } else {
            if (d11 == Double.POSITIVE_INFINITY) {
                cArr[i11] = 'I';
                cArr[i11 + 1] = 'n';
                cArr[i11 + 2] = 'f';
                cArr[i11 + 3] = 'i';
                cArr[i11 + 4] = 'n';
                cArr[i11 + 5] = 'i';
                cArr[i11 + 6] = 't';
                cArr[i11 + 7] = 'y';
                return (i11 + 8) - i11;
            }
            if (d11 == Double.NEGATIVE_INFINITY) {
                cArr[i11] = '-';
                cArr[i11 + 1] = 'I';
                cArr[i11 + 2] = 'n';
                cArr[i11 + 3] = 'f';
                cArr[i11 + 4] = 'i';
                cArr[i11 + 5] = 'n';
                cArr[i11 + 6] = 'i';
                cArr[i11 + 7] = 't';
                i22 = i11 + 9;
                cArr[i11 + 8] = 'y';
            } else {
                long jDoubleToLongBits = Double.doubleToLongBits(d11);
                if (jDoubleToLongBits != 0) {
                    if (jDoubleToLongBits == Long.MIN_VALUE) {
                        cArr[i11] = '-';
                        cArr[i11 + 1] = '0';
                        cArr[i11 + 2] = '.';
                        i18 = i11 + 4;
                        cArr[i11 + 3] = '0';
                    } else {
                        int i23 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                        long j15 = jDoubleToLongBits & 4503599627370495L;
                        if (i23 == 0) {
                            i12 = -1074;
                        } else {
                            i12 = i23 - 1075;
                            j15 |= 4503599627370496L;
                        }
                        boolean z15 = jDoubleToLongBits < 0;
                        boolean z16 = (j15 & 1) == 0;
                        long j16 = 4 * j15;
                        long j17 = j16 + 2;
                        int i24 = (j15 != 4503599627370496L || i23 <= 1) ? 1 : 0;
                        long j18 = (j16 - 1) - ((long) i24);
                        int i25 = i12 - 2;
                        int i26 = 3;
                        if (i25 >= 0) {
                            int iMax = Math.max(0, ((int) ((((long) i25) * 3010299) / 10000000)) - 1);
                            int i27 = (((-i25) + iMax) + ((iMax == 0 ? 1 : (int) (((((long) iMax) * 23219280) + 9999999) / 10000000)) + Sdk$SDKError.Reason.TPAT_ERROR_VALUE)) - 114;
                            if (i27 < 0) {
                                throw new IllegalArgumentException("" + i27);
                            }
                            int[] iArr = f18262b[iMax];
                            long j19 = j16 >>> 31;
                            long j20 = j16 & 2147483647L;
                            int i28 = iArr[0];
                            int i29 = iArr[1];
                            int i30 = iArr[2];
                            z10 = z16;
                            int i31 = iArr[3];
                            long j21 = ((((((((((((j20 * ((long) i31)) >>> 31) + (((long) i30) * j20)) + (j19 * ((long) i31))) >>> 31) + (((long) i29) * j20)) + (((long) i30) * j19)) >>> 31) + (((long) i28) * j20)) + (((long) i29) * j19)) >>> 21) + ((((long) i28) * j19) << 10)) >>> i27;
                            long j22 = j17 >>> 31;
                            long j23 = j17 & 2147483647L;
                            long j24 = ((((((((((((j23 * ((long) i31)) >>> 31) + (((long) i30) * j23)) + (j22 * ((long) i31))) >>> 31) + (((long) i29) * j23)) + (((long) i30) * j22)) >>> 31) + (((long) i28) * j23)) + (((long) i29) * j22)) >>> 21) + ((((long) i28) * j22) << 10)) >>> i27;
                            long j25 = j18 >>> 31;
                            long j26 = j18 & 2147483647L;
                            j11 = j24;
                            long j27 = ((((((((((((j26 * ((long) i31)) >>> 31) + (((long) i30) * j26)) + (j25 * ((long) i31))) >>> 31) + (((long) i29) * j26)) + (((long) i30) * j25)) >>> 31) + (((long) i28) * j26)) + (((long) i29) * j25)) >>> 21) + ((((long) i28) * j25) << 10)) >>> i27;
                            if (iMax <= 21) {
                                long j28 = j16 % 5;
                                if (j28 == 0) {
                                    if (j28 != 0) {
                                        i21 = 0;
                                    } else if (j16 % 25 != 0) {
                                        i21 = 1;
                                    } else if (j16 % 125 != 0) {
                                        i21 = 2;
                                    } else if (j16 % 625 != 0) {
                                        i21 = 3;
                                    } else {
                                        long j29 = j16 / 625;
                                        i21 = 4;
                                        for (long j30 = 0; j29 > j30 && j29 % 5 == j30; j30 = 0) {
                                            j29 /= 5;
                                            i21++;
                                        }
                                    }
                                    z14 = i21 >= iMax;
                                    z13 = false;
                                } else if (z10) {
                                    if (j18 % 5 != 0) {
                                        i20 = 0;
                                    } else if (j18 % 25 != 0) {
                                        i20 = 1;
                                    } else if (j18 % 125 != 0) {
                                        i20 = 2;
                                    } else if (j18 % 625 != 0) {
                                        i20 = 3;
                                    } else {
                                        long j31 = j18 / 625;
                                        i20 = 4;
                                        for (long j32 = 0; j31 > j32 && j31 % 5 == j32; j32 = 0) {
                                            j31 /= 5;
                                            i20++;
                                        }
                                    }
                                    z13 = i20 >= iMax;
                                    z14 = false;
                                } else {
                                    if (j17 % 5 != 0) {
                                        i19 = 0;
                                    } else if (j17 % 25 != 0) {
                                        i19 = 1;
                                    } else if (j17 % 125 != 0) {
                                        i19 = 2;
                                    } else if (j17 % 625 != 0) {
                                        i19 = 3;
                                    } else {
                                        long j33 = j17 / 625;
                                        i19 = 4;
                                        for (long j34 = 0; j33 > j34 && j33 % 5 == j34; j34 = 0) {
                                            j33 /= 5;
                                            i19++;
                                        }
                                    }
                                    if (i19 >= iMax) {
                                        j11--;
                                    }
                                }
                                z13 = false;
                            } else {
                                z13 = false;
                            }
                            z12 = z14;
                            z11 = z13;
                            i13 = iMax;
                            j12 = j27;
                            j13 = j21;
                        } else {
                            z10 = z16;
                            int i32 = -i25;
                            int iMax2 = Math.max(0, ((int) ((((long) i32) * 6989700) / 10000000)) - 1);
                            int i33 = i32 - iMax2;
                            int i34 = (iMax2 - ((i33 == 0 ? 1 : (int) (((((long) i33) * 23219280) + 9999999) / 10000000)) - Sdk$SDKError.Reason.TPAT_ERROR_VALUE)) - 114;
                            if (i34 < 0) {
                                throw new IllegalArgumentException("" + i34);
                            }
                            int[] iArr2 = f18261a[i33];
                            long j35 = j16 >>> 31;
                            long j36 = j16 & 2147483647L;
                            int i35 = iArr2[0];
                            int i36 = iArr2[1];
                            int i37 = i24;
                            int i38 = iArr2[2];
                            int i39 = iArr2[3];
                            long j37 = ((((((((((((j36 * ((long) i39)) >>> 31) + (((long) i38) * j36)) + (j35 * ((long) i39))) >>> 31) + (((long) i36) * j36)) + (((long) i38) * j35)) >>> 31) + (((long) i35) * j36)) + (((long) i36) * j35)) >>> 21) + ((((long) i35) * j35) << 10)) >>> i34;
                            long j38 = j17 >>> 31;
                            long j39 = j17 & 2147483647L;
                            long j40 = ((((((((((((((long) i39) * j39) >>> 31) + (((long) i38) * j39)) + (j38 * ((long) i39))) >>> 31) + (((long) i36) * j39)) + (((long) i38) * j38)) >>> 31) + (((long) i35) * j39)) + (((long) i36) * j38)) >>> 21) + ((((long) i35) * j38) << 10)) >>> i34;
                            long j41 = j18 >>> 31;
                            long j42 = j18 & 2147483647L;
                            long j43 = ((((((((((((((long) i39) * j42) >>> 31) + (((long) i38) * j42)) + (j41 * ((long) i39))) >>> 31) + (((long) i36) * j42)) + (((long) i38) * j41)) >>> 31) + (((long) i35) * j42)) + (((long) i36) * j41)) >>> 21) + ((((long) i35) * j41) << 10)) >>> i34;
                            i13 = iMax2 + i25;
                            if (iMax2 <= 1) {
                                if (z10) {
                                    i13 = i13;
                                    z12 = true;
                                    j11 = j40;
                                    z11 = i37 == 1;
                                } else {
                                    j11 = j40 - 1;
                                    z12 = true;
                                    z11 = false;
                                }
                            } else if (iMax2 < 63) {
                                z12 = (j16 & ((1 << (iMax2 - 1)) - 1)) == 0;
                                j11 = j40;
                                z11 = false;
                            } else {
                                i13 = i13;
                                j11 = j40;
                                z11 = false;
                                z12 = false;
                            }
                            j12 = j43;
                            j13 = j37;
                        }
                        if (j11 >= 1000000000000000000L) {
                            i26 = 19;
                        } else if (j11 >= 100000000000000000L) {
                            i26 = 18;
                        } else if (j11 >= 10000000000000000L) {
                            i26 = 17;
                        } else if (j11 >= 1000000000000000L) {
                            i26 = 16;
                        } else if (j11 >= 100000000000000L) {
                            i26 = 15;
                        } else if (j11 >= 10000000000000L) {
                            i26 = 14;
                        } else if (j11 >= 1000000000000L) {
                            i26 = 13;
                        } else if (j11 >= 100000000000L) {
                            i26 = 12;
                        } else if (j11 >= RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                            i26 = 11;
                        } else if (j11 >= C.NANOS_PER_SECOND) {
                            i26 = 10;
                        } else if (j11 >= 100000000) {
                            i26 = 9;
                        } else if (j11 >= 10000000) {
                            i26 = 8;
                        } else if (j11 >= 1000000) {
                            i26 = 7;
                        } else if (j11 >= 100000) {
                            i26 = 6;
                        } else if (j11 >= 10000) {
                            i26 = 5;
                        } else if (j11 >= 1000) {
                            i26 = 4;
                        } else if (j11 < 100) {
                            i26 = j11 >= 10 ? 2 : 1;
                        }
                        int i40 = i13 + i26;
                        int i41 = i40 - 1;
                        boolean z17 = i41 < -3 || i41 >= 7;
                        if (z11 || z12) {
                            boolean z18 = z11;
                            boolean z19 = z12;
                            int i42 = 0;
                            int i43 = 0;
                            while (true) {
                                long j44 = j11 / 10;
                                long j45 = j12 / 10;
                                if (j44 <= j45 || (j11 < 100 && z17)) {
                                    break;
                                }
                                z18 &= j12 % 10 == 0;
                                z19 &= i42 == 0;
                                i42 = (int) (j13 % 10);
                                j13 /= 10;
                                i43++;
                                j11 = j44;
                                j12 = j45;
                            }
                            if (z18 && z10) {
                                while (j12 % 10 == 0 && (j11 >= 100 || !z17)) {
                                    z19 &= i42 == 0;
                                    i42 = (int) (j13 % 10);
                                    j11 /= 10;
                                    j13 /= 10;
                                    j12 /= 10;
                                    i43++;
                                }
                            }
                            if (z19 && i42 == 5 && j13 % 2 == 0) {
                                i42 = 4;
                            }
                            j14 = j13 + ((long) (((j13 != j12 || (z18 && z10)) && i42 < 5) ? 0 : 1));
                            i14 = i43;
                        } else {
                            i14 = 0;
                            int i44 = 0;
                            while (true) {
                                long j46 = j11 / 10;
                                long j47 = j12 / 10;
                                if (j46 <= j47 || (j11 < 100 && z17)) {
                                    break;
                                }
                                i44 = (int) (j13 % 10);
                                j13 /= 10;
                                i14++;
                                j11 = j46;
                                j12 = j47;
                            }
                            j14 = j13 + ((long) ((j13 == j12 || i44 >= 5) ? 1 : 0));
                        }
                        int i45 = i26 - i14;
                        if (z15) {
                            i15 = i11 + 1;
                            cArr[i11] = '-';
                        } else {
                            i15 = i11;
                        }
                        if (!z17) {
                            char c11 = '0';
                            if (i41 < 0) {
                                int i46 = i15 + 1;
                                cArr[i15] = '0';
                                int i47 = i15 + 2;
                                cArr[i46] = '.';
                                int i48 = -1;
                                while (i48 > i41) {
                                    cArr[i47] = c11;
                                    i48--;
                                    i47++;
                                    c11 = '0';
                                }
                                i16 = i47;
                                for (int i49 = 0; i49 < i45; i49++) {
                                    cArr[((i47 + i45) - i49) - 1] = (char) ((j14 % 10) + 48);
                                    j14 /= 10;
                                    i16++;
                                }
                            } else if (i40 >= i45) {
                                for (int i50 = 0; i50 < i45; i50++) {
                                    cArr[((i15 + i45) - i50) - 1] = (char) ((j14 % 10) + 48);
                                    j14 /= 10;
                                }
                                int i51 = i15 + i45;
                                while (i45 < i40) {
                                    cArr[i51] = '0';
                                    i45++;
                                    i51++;
                                }
                                cArr[i51] = '.';
                                i16 = i51 + 2;
                                cArr[i51 + 1] = '0';
                            } else {
                                int i52 = i15 + 1;
                                for (int i53 = 0; i53 < i45; i53++) {
                                    if ((i45 - i53) - 1 == i41) {
                                        cArr[((i52 + i45) - i53) - 1] = '.';
                                        i52--;
                                    }
                                    cArr[((i52 + i45) - i53) - 1] = (char) ((j14 % 10) + 48);
                                    j14 /= 10;
                                }
                                i16 = i15 + i45 + 1;
                            }
                            return i16 - i11;
                        }
                        for (int i54 = 0; i54 < i45 - 1; i54++) {
                            int i55 = (int) (j14 % 10);
                            j14 /= 10;
                            cArr[(i15 + i45) - i54] = (char) (i55 + 48);
                        }
                        cArr[i15] = (char) ((j14 % 10) + 48);
                        cArr[i15 + 1] = '.';
                        int i56 = i15 + i45 + 1;
                        if (i45 == 1) {
                            cArr[i56] = '0';
                            i56++;
                        }
                        int i57 = i56 + 1;
                        cArr[i56] = 'E';
                        if (i41 < 0) {
                            cArr[i57] = '-';
                            i41 = -i41;
                            i57 = i56 + 2;
                        }
                        if (i41 >= 100) {
                            int i58 = i57 + 1;
                            i17 = 48;
                            cArr[i57] = (char) ((i41 / 100) + 48);
                            i41 %= 100;
                            i57 += 2;
                            cArr[i58] = (char) ((i41 / 10) + 48);
                        } else {
                            i17 = 48;
                            if (i41 >= 10) {
                                cArr[i57] = (char) ((i41 / 10) + 48);
                                i57++;
                            }
                        }
                        i18 = i57 + 1;
                        cArr[i57] = (char) ((i41 % 10) + i17);
                    }
                    return i18 - i11;
                }
                cArr[i11] = '0';
                cArr[i11 + 1] = '.';
                i22 = i11 + 3;
                cArr[i11 + 2] = '0';
            }
        }
        return i22 - i11;
    }

    public static String b(double d11) {
        char[] cArr = new char[24];
        return new String(cArr, 0, a(d11, cArr, 0));
    }
}
