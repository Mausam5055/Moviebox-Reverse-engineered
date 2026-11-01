package com.alibaba.fastjson.util;

import okhttp3.internal.http2.Http2Connection;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[][] f18263a = {new int[]{ASTNode.DISCARD, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{Http2Connection.DEGRADED_PONG_TIMEOUT_NS, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, 1073741824}, new int[]{762939453, ASTNode.DEOP}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[][] f18264b = {new int[]{ASTNode.DEOP, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static int a(float f11, char[] cArr, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        if (!Float.isNaN(f11)) {
            if (f11 == Float.POSITIVE_INFINITY) {
                cArr[i11] = 'I';
                cArr[i11 + 1] = 'n';
                cArr[i11 + 2] = 'f';
                cArr[i11 + 3] = 'i';
                cArr[i11 + 4] = 'n';
                cArr[i11 + 5] = 'i';
                cArr[i11 + 6] = 't';
                i26 = i11 + 8;
                cArr[i11 + 7] = 'y';
            } else if (f11 == Float.NEGATIVE_INFINITY) {
                cArr[i11] = '-';
                cArr[i11 + 1] = 'I';
                cArr[i11 + 2] = 'n';
                cArr[i11 + 3] = 'f';
                cArr[i11 + 4] = 'i';
                cArr[i11 + 5] = 'n';
                cArr[i11 + 6] = 'i';
                cArr[i11 + 7] = 't';
                i27 = i11 + 9;
                cArr[i11 + 8] = 'y';
            } else {
                int iFloatToIntBits = Float.floatToIntBits(f11);
                if (iFloatToIntBits == 0) {
                    cArr[i11] = '0';
                    cArr[i11 + 1] = '.';
                    i27 = i11 + 3;
                    cArr[i11 + 2] = '0';
                } else {
                    if (iFloatToIntBits != Integer.MIN_VALUE) {
                        int i28 = (iFloatToIntBits >> 23) & 255;
                        int i29 = 8388607 & iFloatToIntBits;
                        if (i28 == 0) {
                            i12 = -149;
                        } else {
                            i12 = i28 - 150;
                            i29 |= 8388608;
                        }
                        boolean z10 = iFloatToIntBits < 0;
                        boolean z11 = (i29 & 1) == 0;
                        int i30 = i29 * 4;
                        int i31 = i30 + 2;
                        int i32 = i30 - ((((long) i29) != 8388608 || i28 <= 1) ? 2 : 1);
                        int i33 = i12 - 2;
                        if (i33 >= 0) {
                            i19 = (int) ((((long) i33) * 3010299) / 10000000);
                            int i34 = i19 == 0 ? 1 : (int) (((((long) i19) * 23219280) + 9999999) / 10000000);
                            int i35 = (-i33) + i19;
                            int[][] iArr = f18264b;
                            int[] iArr2 = iArr[i19];
                            long j11 = iArr2[0];
                            long j12 = iArr2[1];
                            long j13 = i30;
                            int i36 = ((i34 + 58) + i35) - 31;
                            i13 = (int) (((j13 * j11) + ((j13 * j12) >> 31)) >> i36);
                            long j14 = i31;
                            i22 = (int) (((j14 * j11) + ((j14 * j12) >> 31)) >> i36);
                            int i37 = i32;
                            long j15 = i37;
                            i14 = (int) (((j11 * j15) + ((j15 * j12) >> 31)) >> i36);
                            if (i19 == 0 || (i22 - 1) / 10 > i14 / 10) {
                                i18 = 0;
                            } else {
                                int i38 = i19 - 1;
                                int i39 = (i35 - 1) + (i38 == 0 ? 1 : (int) (((((long) i38) * 23219280) + 9999999) / 10000000)) + 58;
                                int[] iArr3 = iArr[i38];
                                i18 = (int) ((((((long) iArr3[0]) * j13) + ((j13 * ((long) iArr3[1])) >> 31)) >> (i39 - 31)) % 10);
                            }
                            int i40 = 0;
                            while (i31 > 0 && i31 % 5 == 0) {
                                i31 /= 5;
                                i40++;
                            }
                            int i41 = i30;
                            int i42 = 0;
                            while (i41 > 0 && i41 % 5 == 0) {
                                i41 /= 5;
                                i42++;
                            }
                            int i43 = 0;
                            while (i37 > 0 && i37 % 5 == 0) {
                                i37 /= 5;
                                i43++;
                            }
                            i20 = i40 >= i19 ? 1 : 0;
                            int i44 = i42 >= i19 ? 1 : 0;
                            i21 = i43 >= i19 ? 1 : 0;
                            i17 = i44;
                            i15 = 0;
                        } else {
                            int i45 = -i33;
                            int i46 = (int) ((((long) i45) * 6989700) / 10000000);
                            int i47 = i45 - i46;
                            int i48 = i47 == 0 ? 1 : (int) (((((long) i47) * 23219280) + 9999999) / 10000000);
                            int[][] iArr4 = f18263a;
                            int[] iArr5 = iArr4[i47];
                            long j16 = iArr5[0];
                            long j17 = iArr5[1];
                            int i49 = (i46 - (i48 - 61)) - 31;
                            long j18 = i30;
                            long j19 = i31;
                            int i50 = (int) (((j19 * j16) + ((j19 * j17) >> 31)) >> i49);
                            i13 = (int) (((j18 * j16) + ((j18 * j17) >> 31)) >> i49);
                            long j20 = i32;
                            i14 = (int) (((j16 * j20) + ((j20 * j17) >> 31)) >> i49);
                            if (i46 == 0 || (i50 - 1) / 10 > i14 / 10) {
                                i15 = 0;
                                i16 = 0;
                            } else {
                                int i51 = i47 + 1;
                                int i52 = (i46 - 1) - ((i51 == 0 ? 1 : (int) (((((long) i51) * 23219280) + 9999999) / 10000000)) - 61);
                                int[] iArr6 = iArr4[i51];
                                i15 = 0;
                                i16 = (int) ((((((long) iArr6[0]) * j18) + ((j18 * ((long) iArr6[1])) >> 31)) >> (i52 - 31)) % 10);
                            }
                            int i53 = i33 + i46;
                            int i54 = 1 >= i46 ? 1 : i15;
                            i17 = (i46 >= 23 || (i30 & ((1 << (i46 + (-1))) - 1)) != 0) ? i15 : 1;
                            int i55 = (i32 % 2 == 1 ? i15 : 1) >= i46 ? 1 : i15;
                            i18 = i16;
                            i19 = i53;
                            i20 = i54;
                            i21 = i55;
                            i22 = i50;
                        }
                        int i56 = Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
                        int i57 = 10;
                        while (i57 > 0 && i22 < i56) {
                            i56 /= 10;
                            i57--;
                        }
                        int i58 = i19 + i57;
                        int i59 = i58 - 1;
                        int i60 = (i59 < -3 || i59 >= 7) ? 1 : i15;
                        if (i20 != 0 && !z11) {
                            i22--;
                        }
                        int i61 = i15;
                        while (true) {
                            int i62 = i22 / 10;
                            int i63 = i14 / 10;
                            if (i62 <= i63 || (i22 < 100 && i60 != 0)) {
                                break;
                            }
                            i21 &= i14 % 10 == 0 ? 1 : i15;
                            i18 = i13 % 10;
                            i13 /= 10;
                            i61++;
                            i22 = i62;
                            i14 = i63;
                        }
                        if (i21 != 0 && z11 != 0) {
                            while (i14 % 10 == 0 && (i22 >= 100 || i60 == 0)) {
                                i22 /= 10;
                                i18 = i13 % 10;
                                i13 /= 10;
                                i14 /= 10;
                                i61++;
                            }
                        }
                        int i64 = i13;
                        if (i17 != 0 && i18 == 5 && i64 % 2 == 0) {
                            i18 = 4;
                        }
                        int i65 = ((!(i64 == i14 && (i21 == 0 || z11 == 0)) && i18 < 5) ? i15 : 1) + i64;
                        int i66 = i57 - i61;
                        if (z10) {
                            i23 = i11 + 1;
                            cArr[i11] = '-';
                        } else {
                            i23 = i11;
                        }
                        if (i60 != 0) {
                            while (i15 < i66 - 1) {
                                int i67 = i65 % 10;
                                i65 /= 10;
                                cArr[(i23 + i66) - i15] = (char) (i67 + 48);
                                i15++;
                            }
                            cArr[i23] = (char) ((i65 % 10) + 48);
                            cArr[i23 + 1] = '.';
                            int i68 = i23 + i66 + 1;
                            if (i66 == 1) {
                                cArr[i68] = '0';
                                i68++;
                            }
                            int i69 = i68 + 1;
                            cArr[i68] = 'E';
                            if (i59 < 0) {
                                cArr[i69] = '-';
                                i59 = -i59;
                                i69 = i68 + 2;
                            }
                            if (i59 >= 10) {
                                i25 = 48;
                                cArr[i69] = (char) ((i59 / 10) + 48);
                                i69++;
                            } else {
                                i25 = 48;
                            }
                            i24 = i69 + 1;
                            cArr[i69] = (char) ((i59 % 10) + i25);
                        } else {
                            int i70 = 48;
                            if (i59 < 0) {
                                int i71 = i23 + 1;
                                cArr[i23] = '0';
                                int i72 = i23 + 2;
                                cArr[i71] = '.';
                                int i73 = -1;
                                while (i73 > i59) {
                                    cArr[i72] = '0';
                                    i73--;
                                    i72++;
                                }
                                int i74 = i72;
                                int i75 = i15;
                                while (i75 < i66) {
                                    cArr[((i72 + i66) - i75) - 1] = (char) ((i65 % 10) + i70);
                                    i65 /= 10;
                                    i74++;
                                    i75++;
                                    i70 = 48;
                                }
                                i24 = i74;
                            } else if (i58 >= i66) {
                                for (int i76 = i15; i76 < i66; i76++) {
                                    cArr[((i23 + i66) - i76) - 1] = (char) ((i65 % 10) + 48);
                                    i65 /= 10;
                                }
                                int i77 = i23 + i66;
                                while (i66 < i58) {
                                    cArr[i77] = '0';
                                    i66++;
                                    i77++;
                                }
                                int i78 = i77 + 1;
                                cArr[i77] = '.';
                                i24 = i77 + 2;
                                cArr[i78] = '0';
                            } else {
                                int i79 = i23 + 1;
                                while (i15 < i66) {
                                    if ((i66 - i15) - 1 == i59) {
                                        cArr[((i79 + i66) - i15) - 1] = '.';
                                        i79--;
                                    }
                                    cArr[((i79 + i66) - i15) - 1] = (char) ((i65 % 10) + 48);
                                    i65 /= 10;
                                    i15++;
                                }
                                i24 = i23 + i66 + 1;
                            }
                        }
                        return i24 - i11;
                    }
                    cArr[i11] = '-';
                    cArr[i11 + 1] = '0';
                    cArr[i11 + 2] = '.';
                    i26 = i11 + 4;
                    cArr[i11 + 3] = '0';
                }
            }
            return i26 - i11;
        }
        cArr[i11] = 'N';
        cArr[i11 + 1] = 'a';
        i27 = i11 + 3;
        cArr[i11 + 2] = 'N';
        return i27 - i11;
    }

    public static String b(float f11) {
        char[] cArr = new char[15];
        return new String(cArr, 0, a(f11, cArr, 0));
    }
}
