package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.Rgb;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public abstract class w1 {
    /* JADX WARN: Code duplicated, block: B:102:0x0141  */
    /* JADX WARN: Code duplicated, block: B:103:0x0143  */
    /* JADX WARN: Code duplicated, block: B:105:0x0149  */
    /* JADX WARN: Code duplicated, block: B:107:0x0153  */
    /* JADX WARN: Code duplicated, block: B:112:0x016b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0172  */
    /* JADX WARN: Code duplicated, block: B:119:0x017f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x0182  */
    /* JADX WARN: Code duplicated, block: B:123:0x0187  */
    /* JADX WARN: Code duplicated, block: B:125:0x018b  */
    /* JADX WARN: Code duplicated, block: B:127:0x0190 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0192 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0194  */
    /* JADX WARN: Code duplicated, block: B:131:0x019d  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:134:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:136:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:138:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:143:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:147:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x0109  */
    /* JADX WARN: Code duplicated, block: B:85:0x0110  */
    /* JADX WARN: Code duplicated, block: B:88:0x011e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x0120  */
    /* JADX WARN: Code duplicated, block: B:90:0x0123  */
    /* JADX WARN: Code duplicated, block: B:92:0x0126  */
    /* JADX WARN: Code duplicated, block: B:94:0x012a  */
    /* JADX WARN: Code duplicated, block: B:95:0x012e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0132  */
    /* JADX WARN: Code duplicated, block: B:99:0x013b  */
    public static final long a(float f11, float f12, float f13, float f14, androidx.compose.ui.graphics.colorspace.c cVar) {
        int i11;
        int i12;
        int i13;
        float fD;
        float fC;
        int iFloatToRawIntBits;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        float fD2;
        float fC2;
        int iFloatToRawIntBits2;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        float f15;
        if (cVar.g()) {
            float f16 = f14 < 0.0f ? 0.0f : f14;
            if (f16 > 1.0f) {
                f16 = 1.0f;
            }
            int i30 = ((int) ((f16 * 255.0f) + 0.5f)) << 24;
            float f17 = f11 < 0.0f ? 0.0f : f11;
            if (f17 > 1.0f) {
                f17 = 1.0f;
            }
            int i31 = i30 | (((int) ((f17 * 255.0f) + 0.5f)) << 16);
            float f18 = f12 < 0.0f ? 0.0f : f12;
            if (f18 > 1.0f) {
                f18 = 1.0f;
            }
            int i32 = i31 | (((int) ((f18 * 255.0f) + 0.5f)) << 8);
            f15 = f13 >= 0.0f ? f13 : 0.0f;
            return u1.h(ULong.b(ULong.b(i32 | ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 255.0f) + 0.5f))) << 32));
        }
        if (!(cVar.a() == 3)) {
            h4.a("Color only works with ColorSpaces with 3 components");
        }
        int iB = cVar.b();
        if (!(iB != -1)) {
            h4.a("Unknown color space, please use a color space in ColorSpaces");
        }
        float fD3 = cVar.d(0);
        float fC3 = cVar.c(0);
        if (f11 >= fD3) {
            fD3 = f11;
        }
        if (fD3 <= fC3) {
            fC3 = fD3;
        }
        int iFloatToRawIntBits3 = Float.floatToRawIntBits(fC3);
        int i33 = iFloatToRawIntBits3 >>> 31;
        int i34 = (iFloatToRawIntBits3 >>> 23) & 255;
        int i35 = iFloatToRawIntBits3 & 8388607;
        int i36 = 31;
        if (i34 == 255) {
            i12 = i35 != 0 ? 512 : 0;
            i11 = 31;
        } else {
            i11 = i34 - 112;
            if (i11 >= 31) {
                i11 = 49;
                i12 = 0;
            } else {
                if (i11 > 0) {
                    int i37 = i35 >> 13;
                    if ((iFloatToRawIntBits3 & 4096) != 0) {
                        i13 = (((i11 << 10) | i37) + 1) | (i33 << 15);
                    } else {
                        i12 = i37;
                    }
                    short s11 = (short) i13;
                    fD = cVar.d(1);
                    fC = cVar.c(1);
                    if (f12 >= fD) {
                        fD = f12;
                    }
                    if (fD <= fC) {
                        fC = fD;
                    }
                    iFloatToRawIntBits = Float.floatToRawIntBits(fC);
                    i14 = iFloatToRawIntBits >>> 31;
                    i15 = (iFloatToRawIntBits >>> 23) & 255;
                    i16 = iFloatToRawIntBits & 8388607;
                    if (i15 == 255) {
                        if (i16 != 0) {
                            i19 = 512;
                        } else {
                            i19 = 0;
                        }
                        i17 = 31;
                    } else {
                        i17 = i15 - 112;
                        if (i17 >= 31) {
                            i17 = 49;
                            i19 = 0;
                        } else {
                            if (i17 <= 0) {
                                i18 = i16 >> 13;
                                if ((iFloatToRawIntBits & 4096) != 0) {
                                    i20 = (((i17 << 10) | i18) + 1) | (i14 << 15);
                                } else {
                                    i19 = i18;
                                }
                                short s12 = (short) i20;
                                fD2 = cVar.d(2);
                                fC2 = cVar.c(2);
                                if (f13 >= fD2) {
                                    fD2 = f13;
                                }
                                if (fD2 <= fC2) {
                                    fC2 = fD2;
                                }
                                iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
                                i22 = iFloatToRawIntBits2 >>> 31;
                                i23 = (iFloatToRawIntBits2 >>> 23) & 255;
                                i24 = 8388607 & iFloatToRawIntBits2;
                                if (i23 == 255) {
                                    i27 = i24 == 0 ? 0 : 512;
                                } else {
                                    i25 = i23 - 112;
                                    if (i25 >= 31) {
                                        i36 = 49;
                                    } else {
                                        if (i25 <= 0) {
                                            i26 = i24 >> 13;
                                            if ((iFloatToRawIntBits2 & 4096) != 0) {
                                                i28 = (((i25 << 10) | i26) + 1) | (i22 << 15);
                                            } else {
                                                i27 = i26;
                                                i36 = i25;
                                            }
                                            short s13 = (short) i28;
                                            f15 = f14 >= 0.0f ? f14 : 0.0f;
                                            return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s12) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s13)) << 16)));
                                        }
                                        if (i25 >= -10) {
                                            i29 = (i24 | 8388608) >> (1 - i25);
                                            if ((i29 & 4096) != 0) {
                                                i29 += 8192;
                                            }
                                            i27 = i29 >> 13;
                                            i36 = 0;
                                        } else {
                                            i36 = 0;
                                        }
                                    }
                                    i27 = 0;
                                }
                                i28 = (i22 << 15) | (i36 << 10) | i27;
                                short s14 = (short) i28;
                                if (f14 >= 0.0f) {
                                }
                                return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s12) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s14)) << 16)));
                            }
                            if (i17 >= -10) {
                                i21 = (i16 | 8388608) >> (1 - i17);
                                if ((i21 & 4096) != 0) {
                                    i21 += 8192;
                                }
                                i19 = i21 >> 13;
                            } else {
                                i19 = 0;
                            }
                            i17 = 0;
                        }
                    }
                    i20 = i19 | (i14 << 15) | (i17 << 10);
                    short s15 = (short) i20;
                    fD2 = cVar.d(2);
                    fC2 = cVar.c(2);
                    if (f13 >= fD2) {
                        fD2 = f13;
                    }
                    if (fD2 <= fC2) {
                        fC2 = fD2;
                    }
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
                    i22 = iFloatToRawIntBits2 >>> 31;
                    i23 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i24 = 8388607 & iFloatToRawIntBits2;
                    if (i23 == 255) {
                        i27 = i24 == 0 ? 0 : 512;
                    } else {
                        i25 = i23 - 112;
                        if (i25 >= 31) {
                            i36 = 49;
                        } else {
                            if (i25 <= 0) {
                                i26 = i24 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i28 = (((i25 << 10) | i26) + 1) | (i22 << 15);
                                } else {
                                    i27 = i26;
                                    i36 = i25;
                                }
                                short s16 = (short) i28;
                                if (f14 >= 0.0f) {
                                }
                                return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s15) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s16)) << 16)));
                            }
                            if (i25 >= -10) {
                                i29 = (i24 | 8388608) >> (1 - i25);
                                if ((i29 & 4096) != 0) {
                                    i29 += 8192;
                                }
                                i27 = i29 >> 13;
                                i36 = 0;
                            } else {
                                i36 = 0;
                            }
                        }
                        i27 = 0;
                    }
                    i28 = (i22 << 15) | (i36 << 10) | i27;
                    short s17 = (short) i28;
                    if (f14 >= 0.0f) {
                    }
                    return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s15) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s17)) << 16)));
                }
                if (i11 >= -10) {
                    int i38 = (i35 | 8388608) >> (1 - i11);
                    if ((i38 & 4096) != 0) {
                        i38 += 8192;
                    }
                    i12 = i38 >> 13;
                } else {
                    i12 = 0;
                }
                i11 = 0;
            }
        }
        i13 = i12 | (i33 << 15) | (i11 << 10);
        short s18 = (short) i13;
        fD = cVar.d(1);
        fC = cVar.c(1);
        if (f12 >= fD) {
            fD = f12;
        }
        if (fD <= fC) {
            fC = fD;
        }
        iFloatToRawIntBits = Float.floatToRawIntBits(fC);
        i14 = iFloatToRawIntBits >>> 31;
        i15 = (iFloatToRawIntBits >>> 23) & 255;
        i16 = iFloatToRawIntBits & 8388607;
        if (i15 == 255) {
            if (i16 != 0) {
                i19 = 512;
            } else {
                i19 = 0;
            }
            i17 = 31;
        } else {
            i17 = i15 - 112;
            if (i17 >= 31) {
                i17 = 49;
                i19 = 0;
            } else {
                if (i17 <= 0) {
                    i18 = i16 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i20 = (((i17 << 10) | i18) + 1) | (i14 << 15);
                    } else {
                        i19 = i18;
                    }
                    short s19 = (short) i20;
                    fD2 = cVar.d(2);
                    fC2 = cVar.c(2);
                    if (f13 >= fD2) {
                        fD2 = f13;
                    }
                    if (fD2 <= fC2) {
                        fC2 = fD2;
                    }
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
                    i22 = iFloatToRawIntBits2 >>> 31;
                    i23 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i24 = 8388607 & iFloatToRawIntBits2;
                    if (i23 == 255) {
                        i27 = i24 == 0 ? 0 : 512;
                    } else {
                        i25 = i23 - 112;
                        if (i25 >= 31) {
                            i36 = 49;
                        } else {
                            if (i25 <= 0) {
                                i26 = i24 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i28 = (((i25 << 10) | i26) + 1) | (i22 << 15);
                                } else {
                                    i27 = i26;
                                    i36 = i25;
                                }
                                short s110 = (short) i28;
                                if (f14 >= 0.0f) {
                                }
                                return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s18) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s19) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s110)) << 16)));
                            }
                            if (i25 >= -10) {
                                i29 = (i24 | 8388608) >> (1 - i25);
                                if ((i29 & 4096) != 0) {
                                    i29 += 8192;
                                }
                                i27 = i29 >> 13;
                                i36 = 0;
                            } else {
                                i36 = 0;
                            }
                        }
                        i27 = 0;
                    }
                    i28 = (i22 << 15) | (i36 << 10) | i27;
                    short s111 = (short) i28;
                    if (f14 >= 0.0f) {
                    }
                    return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s18) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s19) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s111)) << 16)));
                }
                if (i17 >= -10) {
                    i21 = (i16 | 8388608) >> (1 - i17);
                    if ((i21 & 4096) != 0) {
                        i21 += 8192;
                    }
                    i19 = i21 >> 13;
                } else {
                    i19 = 0;
                }
                i17 = 0;
            }
        }
        i20 = i19 | (i14 << 15) | (i17 << 10);
        short s112 = (short) i20;
        fD2 = cVar.d(2);
        fC2 = cVar.c(2);
        if (f13 >= fD2) {
            fD2 = f13;
        }
        if (fD2 <= fC2) {
            fC2 = fD2;
        }
        iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
        i22 = iFloatToRawIntBits2 >>> 31;
        i23 = (iFloatToRawIntBits2 >>> 23) & 255;
        i24 = 8388607 & iFloatToRawIntBits2;
        if (i23 == 255) {
            i27 = i24 == 0 ? 0 : 512;
        } else {
            i25 = i23 - 112;
            if (i25 >= 31) {
                i36 = 49;
            } else {
                if (i25 <= 0) {
                    i26 = i24 >> 13;
                    if ((iFloatToRawIntBits2 & 4096) != 0) {
                        i28 = (((i25 << 10) | i26) + 1) | (i22 << 15);
                    } else {
                        i27 = i26;
                        i36 = i25;
                    }
                    short s113 = (short) i28;
                    if (f14 >= 0.0f) {
                    }
                    return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s18) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s112) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s113)) << 16)));
                }
                if (i25 >= -10) {
                    i29 = (i24 | 8388608) >> (1 - i25);
                    if ((i29 & 4096) != 0) {
                        i29 += 8192;
                    }
                    i27 = i29 >> 13;
                    i36 = 0;
                } else {
                    i36 = 0;
                }
            }
            i27 = 0;
        }
        i28 = (i22 << 15) | (i36 << 10) | i27;
        short s114 = (short) i28;
        if (f14 >= 0.0f) {
        }
        return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f15 <= 1.0f ? f15 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s18) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s112) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s114)) << 16)));
    }

    public static final long b(int i11) {
        return u1.h(ULong.b(ULong.b(i11) << 32));
    }

    public static final long c(int i11, int i12, int i13, int i14) {
        return b(((i11 & 255) << 16) | ((i14 & 255) << 24) | ((i12 & 255) << 8) | (i13 & 255));
    }

    public static final long d(long j11) {
        return u1.h(ULong.b(j11 << 32));
    }

    public static /* synthetic */ long e(float f11, float f12, float f13, float f14, androidx.compose.ui.graphics.colorspace.c cVar, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            f14 = 1.0f;
        }
        if ((i11 & 16) != 0) {
            cVar = androidx.compose.ui.graphics.colorspace.g.f4353a.w();
        }
        return a(f11, f12, f13, f14, cVar);
    }

    public static /* synthetic */ long f(int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 8) != 0) {
            i14 = 255;
        }
        return c(i11, i12, i13, i14);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00af  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00be  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:63:0x0102  */
    /* JADX WARN: Code duplicated, block: B:65:0x0109  */
    /* JADX WARN: Code duplicated, block: B:66:0x010b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0111  */
    public static final long g(float f11, float f12, float f13, float f14, androidx.compose.ui.graphics.colorspace.c cVar) {
        int i11;
        int i12;
        int i13;
        int iFloatToRawIntBits;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int iFloatToRawIntBits2;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        if (cVar.g()) {
            return u1.h(ULong.b(ULong.b((((((int) ((f14 * 255.0f) + 0.5f)) << 24) | (((int) ((f11 * 255.0f) + 0.5f)) << 16)) | (((int) ((f12 * 255.0f) + 0.5f)) << 8)) | ((int) ((255.0f * f13) + 0.5f))) << 32));
        }
        int iFloatToRawIntBits3 = Float.floatToRawIntBits(f11);
        int i28 = iFloatToRawIntBits3 >>> 31;
        int i29 = (iFloatToRawIntBits3 >>> 23) & 255;
        int i30 = iFloatToRawIntBits3 & 8388607;
        int i31 = 0;
        if (i29 == 255) {
            i12 = i30 != 0 ? 512 : 0;
            i11 = 31;
        } else {
            i11 = i29 - 112;
            if (i11 >= 31) {
                i12 = 0;
                i11 = 49;
            } else {
                if (i11 > 0) {
                    int i32 = i30 >> 13;
                    if ((iFloatToRawIntBits3 & 4096) != 0) {
                        i13 = (((i11 << 10) | i32) + 1) | (i28 << 15);
                    } else {
                        i12 = i32;
                    }
                    short s11 = (short) i13;
                    iFloatToRawIntBits = Float.floatToRawIntBits(f12);
                    i14 = iFloatToRawIntBits >>> 31;
                    i15 = (iFloatToRawIntBits >>> 23) & 255;
                    i16 = iFloatToRawIntBits & 8388607;
                    if (i15 == 255) {
                        if (i16 != 0) {
                            i19 = 512;
                        } else {
                            i19 = 0;
                        }
                        i17 = 31;
                    } else {
                        i17 = i15 - 112;
                        if (i17 >= 31) {
                            i19 = 0;
                            i17 = 49;
                        } else {
                            if (i17 <= 0) {
                                i18 = i16 >> 13;
                                if ((iFloatToRawIntBits & 4096) != 0) {
                                    i20 = (((i17 << 10) | i18) + 1) | (i14 << 15);
                                } else {
                                    i19 = i18;
                                }
                                short s12 = (short) i20;
                                iFloatToRawIntBits2 = Float.floatToRawIntBits(f13);
                                i22 = iFloatToRawIntBits2 >>> 31;
                                i23 = (iFloatToRawIntBits2 >>> 23) & 255;
                                i24 = 8388607 & iFloatToRawIntBits2;
                                if (i23 == 255) {
                                    i31 = i24 == 0 ? 0 : 512;
                                    i25 = 31;
                                } else {
                                    i25 = i23 - 112;
                                    if (i25 >= 31) {
                                        i25 = 49;
                                    } else {
                                        if (i25 <= 0) {
                                            i31 = i24 >> 13;
                                            if ((iFloatToRawIntBits2 & 4096) != 0) {
                                                i26 = (((i25 << 10) | i31) + 1) | (i22 << 15);
                                            }
                                            return u1.h(ULong.b(((((long) s12) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                                        }
                                        if (i25 >= -10) {
                                            i27 = (i24 | 8388608) >> (1 - i25);
                                            if ((i27 & 4096) != 0) {
                                                i27 += 8192;
                                            }
                                            i25 = 0;
                                            i31 = i27 >> 13;
                                        } else {
                                            i25 = 0;
                                        }
                                    }
                                }
                                i26 = (i22 << 15) | (i25 << 10) | i31;
                                return u1.h(ULong.b(((((long) s12) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                            }
                            if (i17 >= -10) {
                                i21 = (i16 | 8388608) >> (1 - i17);
                                if ((i21 & 4096) != 0) {
                                    i21 += 8192;
                                }
                                i19 = i21 >> 13;
                                i17 = 0;
                            } else {
                                i19 = 0;
                                i17 = 0;
                            }
                        }
                    }
                    i20 = i19 | (i14 << 15) | (i17 << 10);
                    short s13 = (short) i20;
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(f13);
                    i22 = iFloatToRawIntBits2 >>> 31;
                    i23 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i24 = 8388607 & iFloatToRawIntBits2;
                    if (i23 == 255) {
                        i31 = i24 == 0 ? 0 : 512;
                        i25 = 31;
                    } else {
                        i25 = i23 - 112;
                        if (i25 >= 31) {
                            i25 = 49;
                        } else {
                            if (i25 <= 0) {
                                i31 = i24 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i26 = (((i25 << 10) | i31) + 1) | (i22 << 15);
                                }
                                return u1.h(ULong.b(((((long) s13) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                            }
                            if (i25 >= -10) {
                                i27 = (i24 | 8388608) >> (1 - i25);
                                if ((i27 & 4096) != 0) {
                                    i27 += 8192;
                                }
                                i25 = 0;
                                i31 = i27 >> 13;
                            } else {
                                i25 = 0;
                            }
                        }
                    }
                    i26 = (i22 << 15) | (i25 << 10) | i31;
                    return u1.h(ULong.b(((((long) s13) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                }
                if (i11 >= -10) {
                    int i33 = (i30 | 8388608) >> (1 - i11);
                    if ((i33 & 4096) != 0) {
                        i33 += 8192;
                    }
                    i12 = i33 >> 13;
                    i11 = 0;
                } else {
                    i12 = 0;
                    i11 = 0;
                }
            }
        }
        i13 = i12 | (i28 << 15) | (i11 << 10);
        short s14 = (short) i13;
        iFloatToRawIntBits = Float.floatToRawIntBits(f12);
        i14 = iFloatToRawIntBits >>> 31;
        i15 = (iFloatToRawIntBits >>> 23) & 255;
        i16 = iFloatToRawIntBits & 8388607;
        if (i15 == 255) {
            if (i16 != 0) {
                i19 = 512;
            } else {
                i19 = 0;
            }
            i17 = 31;
        } else {
            i17 = i15 - 112;
            if (i17 >= 31) {
                i19 = 0;
                i17 = 49;
            } else {
                if (i17 <= 0) {
                    i18 = i16 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i20 = (((i17 << 10) | i18) + 1) | (i14 << 15);
                    } else {
                        i19 = i18;
                    }
                    short s15 = (short) i20;
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(f13);
                    i22 = iFloatToRawIntBits2 >>> 31;
                    i23 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i24 = 8388607 & iFloatToRawIntBits2;
                    if (i23 == 255) {
                        i31 = i24 == 0 ? 0 : 512;
                        i25 = 31;
                    } else {
                        i25 = i23 - 112;
                        if (i25 >= 31) {
                            i25 = 49;
                        } else {
                            if (i25 <= 0) {
                                i31 = i24 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i26 = (((i25 << 10) | i31) + 1) | (i22 << 15);
                                }
                                return u1.h(ULong.b(((((long) s15) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                            }
                            if (i25 >= -10) {
                                i27 = (i24 | 8388608) >> (1 - i25);
                                if ((i27 & 4096) != 0) {
                                    i27 += 8192;
                                }
                                i25 = 0;
                                i31 = i27 >> 13;
                            } else {
                                i25 = 0;
                            }
                        }
                    }
                    i26 = (i22 << 15) | (i25 << 10) | i31;
                    return u1.h(ULong.b(((((long) s15) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                }
                if (i17 >= -10) {
                    i21 = (i16 | 8388608) >> (1 - i17);
                    if ((i21 & 4096) != 0) {
                        i21 += 8192;
                    }
                    i19 = i21 >> 13;
                    i17 = 0;
                } else {
                    i19 = 0;
                    i17 = 0;
                }
            }
        }
        i20 = i19 | (i14 << 15) | (i17 << 10);
        short s16 = (short) i20;
        iFloatToRawIntBits2 = Float.floatToRawIntBits(f13);
        i22 = iFloatToRawIntBits2 >>> 31;
        i23 = (iFloatToRawIntBits2 >>> 23) & 255;
        i24 = 8388607 & iFloatToRawIntBits2;
        if (i23 == 255) {
            i31 = i24 == 0 ? 0 : 512;
            i25 = 31;
        } else {
            i25 = i23 - 112;
            if (i25 >= 31) {
                i25 = 49;
            } else {
                if (i25 <= 0) {
                    i31 = i24 >> 13;
                    if ((iFloatToRawIntBits2 & 4096) != 0) {
                        i26 = (((i25 << 10) | i31) + 1) | (i22 << 15);
                    }
                    return u1.h(ULong.b(((((long) s16) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                }
                if (i25 >= -10) {
                    i27 = (i24 | 8388608) >> (1 - i25);
                    if ((i27 & 4096) != 0) {
                        i27 += 8192;
                    }
                    i25 = 0;
                    i31 = i27 >> 13;
                } else {
                    i25 = 0;
                }
            }
        }
        i26 = (i22 << 15) | (i25 << 10) | i31;
        return u1.h(ULong.b(((((long) s16) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i26)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f14, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
    }

    public static final long h(long j11, long j12) {
        long jI = u1.i(j11, u1.p(j12));
        float fN = u1.n(j12);
        float fN2 = u1.n(jI);
        float f11 = 1.0f - fN2;
        float f12 = (fN * f11) + fN2;
        return g(f12 == 0.0f ? 0.0f : ((u1.r(jI) * fN2) + ((u1.r(j12) * fN) * f11)) / f12, f12 == 0.0f ? 0.0f : ((u1.q(jI) * fN2) + ((u1.q(j12) * fN) * f11)) / f12, f12 != 0.0f ? ((u1.o(jI) * fN2) + ((u1.o(j12) * fN) * f11)) / f12 : 0.0f, f12, u1.p(j12));
    }

    public static final float i(long j11) {
        androidx.compose.ui.graphics.colorspace.c cVarP = u1.p(j11);
        if (!androidx.compose.ui.graphics.colorspace.b.e(cVarP.e(), androidx.compose.ui.graphics.colorspace.b.f4344a.b())) {
            h4.a("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) androidx.compose.ui.graphics.colorspace.b.h(cVarP.e())));
        }
        Intrinsics.f(cVarP, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
        androidx.compose.ui.graphics.colorspace.j jVarE = ((Rgb) cVarP).E();
        float fA = (float) ((jVarE.a(u1.r(j11)) * 0.2126d) + (jVarE.a(u1.q(j11)) * 0.7152d) + (jVarE.a(u1.o(j11)) * 0.0722d));
        if (fA < 0.0f) {
            fA = 0.0f;
        }
        if (fA > 1.0f) {
            return 1.0f;
        }
        return fA;
    }

    public static final int j(long j11) {
        return (int) ULong.b(u1.i(j11, androidx.compose.ui.graphics.colorspace.g.f4353a.w()) >>> 32);
    }
}
