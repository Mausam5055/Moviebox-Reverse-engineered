package org.brotli.dec;

import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f71627a = {1, 2, 3, 4, 0, 5, 17, 6, 16, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f71628b = {3, 2, 1, 0, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f71629c = {0, 0, 0, 0, -1, 1, -2, 2, -3, 3, -1, 1, -2, 2, -3, 3};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f71630d = {131072, 131076, 131075, 196610, 131072, 131076, 131075, 262145, 131072, 131076, 131075, 196610, 131072, 131076, 131075, 262149};

    private static void a(j jVar) {
        a aVar = jVar.f71649c;
        byte[] bArr = jVar.f71650d;
        int i11 = jVar.f71653g;
        if (i11 <= 0) {
            a.k(aVar);
            jVar.f71647a = 1;
            return;
        }
        int iMin = Math.min(jVar.Q - jVar.f71664r, i11);
        a.c(aVar, bArr, jVar.f71664r, iMin);
        jVar.f71653g -= iMin;
        int i12 = jVar.f71664r + iMin;
        jVar.f71664r = i12;
        int i13 = jVar.Q;
        if (i12 != i13) {
            a.k(aVar);
            jVar.f71647a = 1;
        } else {
            jVar.f71648b = 5;
            jVar.Y = i13;
            jVar.X = 0;
            jVar.f71647a = 12;
        }
    }

    private static void b(j jVar, int i11) {
        int i12;
        a aVar = jVar.f71649c;
        int[] iArr = jVar.f71662p;
        int i13 = i11 * 2;
        a.d(aVar);
        int i14 = i11 * 1080;
        int iR = r(jVar.f71651e, i14, aVar);
        jVar.f71660n[i11] = m(jVar.f71652f, i14, aVar);
        if (iR == 1) {
            i12 = iArr[i13 + 1] + 1;
        } else {
            i12 = iR == 0 ? iArr[i13] : iR - 2;
        }
        int i15 = jVar.f71661o[i11];
        if (i12 >= i15) {
            i12 -= i15;
        }
        int i16 = i13 + 1;
        iArr[i13] = iArr[i16];
        iArr[i16] = i12;
    }

    private static void c(j jVar) {
        b(jVar, 1);
        jVar.F = jVar.f71658l.f71636c[jVar.f71662p[3]];
    }

    private static int d(int i11, byte[] bArr, a aVar) {
        a.j(aVar);
        int iH = h(aVar) + 1;
        if (iH == 1) {
            l.a(bArr, 0, i11);
            return iH;
        }
        int i12 = a.i(aVar, 1) == 1 ? a.i(aVar, 4) + 1 : 0;
        int[] iArr = new int[1080];
        n(iH + i12, iArr, 0, aVar);
        int i13 = 0;
        while (i13 < i11) {
            a.j(aVar);
            a.d(aVar);
            int iR = r(iArr, 0, aVar);
            if (iR == 0) {
                bArr[i13] = 0;
            } else if (iR <= i12) {
                for (int i14 = (1 << iR) + a.i(aVar, iR); i14 != 0; i14--) {
                    if (i13 >= i11) {
                        throw new BrotliRuntimeException("Corrupted context map");
                    }
                    bArr[i13] = 0;
                    i13++;
                }
            } else {
                bArr[i13] = (byte) (iR - i12);
            }
            i13++;
        }
        if (a.i(aVar, 1) == 1) {
            j(bArr, i11);
        }
        return iH;
    }

    private static void e(j jVar) {
        b(jVar, 2);
        jVar.C = jVar.f71662p[5] << 2;
    }

    private static void f(j jVar) {
        b(jVar, 0);
        int i11 = jVar.f71662p[1];
        int i12 = i11 << 6;
        jVar.B = i12;
        int i13 = jVar.A[i12] & 255;
        jVar.f71668v = i13;
        jVar.f71669w = jVar.f71657k.f71636c[i13];
        byte b11 = jVar.f71672z[i11];
        int[] iArr = c.f71626b;
        jVar.D = iArr[b11];
        jVar.E = iArr[b11 + 1];
    }

    private static void g(a aVar, j jVar) {
        boolean z10 = a.i(aVar, 1) == 1;
        jVar.f71654h = z10;
        jVar.f71653g = 0;
        jVar.f71655i = false;
        jVar.f71656j = false;
        if (!z10 || a.i(aVar, 1) == 0) {
            int i11 = a.i(aVar, 2) + 4;
            if (i11 == 7) {
                jVar.f71656j = true;
                if (a.i(aVar, 1) != 0) {
                    throw new BrotliRuntimeException("Corrupted reserved bit");
                }
                int i12 = a.i(aVar, 2);
                if (i12 == 0) {
                    return;
                }
                for (int i13 = 0; i13 < i12; i13++) {
                    int i14 = a.i(aVar, 8);
                    if (i14 == 0 && i13 + 1 == i12 && i12 > 1) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    jVar.f71653g = (i14 << (i13 * 8)) | jVar.f71653g;
                }
            } else {
                for (int i15 = 0; i15 < i11; i15++) {
                    int i16 = a.i(aVar, 4);
                    if (i16 == 0 && i15 + 1 == i11 && i11 > 4) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    jVar.f71653g = (i16 << (i15 * 4)) | jVar.f71653g;
                }
            }
            jVar.f71653g++;
            if (jVar.f71654h) {
                return;
            }
            jVar.f71655i = a.i(aVar, 1) == 1;
        }
    }

    private static int h(a aVar) {
        if (a.i(aVar, 1) == 0) {
            return 0;
        }
        int i11 = a.i(aVar, 3);
        if (i11 == 0) {
            return 1;
        }
        return a.i(aVar, i11) + (1 << i11);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x029f  */
    /* JADX WARN: Code duplicated, block: B:103:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:111:0x02de  */
    /* JADX WARN: Code duplicated, block: B:161:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0202 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x01fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x0311 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x028a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0284 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x030b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x0173 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:? A[LOOP:2: B:48:0x013b->B:191:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x02f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x02d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:? A[LOOP:4: B:109:0x02d8->B:196:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x01db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:48:0x013b A[LOOP:2: B:48:0x013b->B:191:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:50:0x0141  */
    /* JADX WARN: Code duplicated, block: B:52:0x014a  */
    /* JADX WARN: Code duplicated, block: B:56:0x017e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0193  */
    /* JADX WARN: Code duplicated, block: B:61:0x019c  */
    /* JADX WARN: Code duplicated, block: B:65:0x01e6 A[LOOP:5: B:57:0x018d->B:65:0x01e6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0206  */
    /* JADX WARN: Code duplicated, block: B:76:0x0210  */
    /* JADX WARN: Code duplicated, block: B:79:0x022c  */
    /* JADX WARN: Code duplicated, block: B:80:0x022e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0241  */
    /* JADX WARN: Code duplicated, block: B:86:0x026d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0273  */
    /* JADX WARN: Code duplicated, block: B:91:0x027a  */
    /* JADX WARN: Code duplicated, block: B:97:0x028e  */
    static void i(j jVar) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iR;
        int i18;
        int i19;
        int iT;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int iR2;
        int i25;
        int i26;
        int i27;
        int i28 = jVar.f71647a;
        if (i28 == 0) {
            throw new IllegalStateException("Can't decompress until initialized");
        }
        if (i28 == 11) {
            throw new IllegalStateException("Can't decompress after close");
        }
        a aVar = jVar.f71649c;
        int i29 = jVar.Q - 1;
        byte[] bArr = jVar.f71650d;
        while (true) {
            int i30 = jVar.f71647a;
            if (i30 == 10) {
                if (i30 == 10) {
                    if (jVar.f71653g < 0) {
                        throw new BrotliRuntimeException("Invalid metablock length");
                    }
                    a.g(aVar);
                    a.a(jVar.f71649c, true);
                    return;
                }
                return;
            }
            if (i30 != 12) {
                int i31 = 0;
                switch (i30) {
                    case 1:
                        if (jVar.f71653g < 0) {
                            throw new BrotliRuntimeException("Invalid metablock length");
                        }
                        q(jVar);
                        i29 = jVar.Q - 1;
                        bArr = jVar.f71650d;
                        break;
                        break;
                    case 2:
                        p(jVar);
                        jVar.f71647a = 3;
                        if (jVar.f71653g <= 0) {
                            jVar.f71647a = 1;
                        } else {
                            a.j(aVar);
                            if (jVar.f71660n[1] == 0) {
                                c(jVar);
                            }
                            int[] iArr = jVar.f71660n;
                            iArr[1] = iArr[1] - 1;
                            a.d(aVar);
                            int iR3 = r(jVar.f71658l.f71635b, jVar.F, aVar);
                            i27 = iR3 >>> 6;
                            jVar.G = 0;
                            if (i27 >= 2) {
                                i27 -= 2;
                                jVar.G = -1;
                            }
                            int i32 = i.f71645g[i27] + ((iR3 >>> 3) & 7);
                            int i33 = i.f71646h[i27] + (iR3 & 7);
                            jVar.f71671y = i.f71641c[i32] + a.i(aVar, i.f71642d[i32]);
                            jVar.M = i.f71643e[i33] + a.i(aVar, i.f71644f[i33]);
                            jVar.f71670x = 0;
                            jVar.f71647a = 6;
                            if (jVar.f71667u) {
                                while (jVar.f71670x < jVar.f71671y) {
                                    a.j(aVar);
                                    if (jVar.f71660n[0] == 0) {
                                        f(jVar);
                                    }
                                    int[] iArr2 = jVar.f71660n;
                                    iArr2[0] = iArr2[0] - 1;
                                    a.d(aVar);
                                    bArr[jVar.f71664r] = (byte) r(jVar.f71657k.f71635b, jVar.f71669w, aVar);
                                    jVar.f71670x++;
                                    i26 = jVar.f71664r;
                                    jVar.f71664r = i26 + 1;
                                    if (i26 == i29) {
                                        jVar.f71648b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f71647a = 12;
                                    }
                                }
                            } else {
                                int i34 = jVar.f71664r;
                                i16 = bArr[(i34 - 1) & i29] & 255;
                                i17 = bArr[(i34 - 2) & i29] & 255;
                                while (jVar.f71670x < jVar.f71671y) {
                                    a.j(aVar);
                                    if (jVar.f71660n[0] == 0) {
                                        f(jVar);
                                    }
                                    byte[] bArr2 = jVar.A;
                                    int i35 = jVar.B;
                                    int[] iArr3 = c.f71625a;
                                    int i36 = bArr2[i35 + (iArr3[jVar.E + i17] | iArr3[jVar.D + i16])] & 255;
                                    int[] iArr4 = jVar.f71660n;
                                    iArr4[0] = iArr4[0] - 1;
                                    a.d(aVar);
                                    g gVar = jVar.f71657k;
                                    iR = r(gVar.f71635b, gVar.f71636c[i36], aVar);
                                    i18 = jVar.f71664r;
                                    bArr[i18] = (byte) iR;
                                    jVar.f71670x++;
                                    jVar.f71664r = i18 + 1;
                                    if (i18 == i29) {
                                        jVar.f71648b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f71647a = 12;
                                    } else {
                                        int i37 = i16;
                                        i16 = iR;
                                        i17 = i37;
                                    }
                                }
                            }
                            if (jVar.f71647a != 6) {
                                continue;
                            } else {
                                i19 = jVar.f71653g - jVar.f71671y;
                                jVar.f71653g = i19;
                                if (i19 <= 0) {
                                    jVar.f71647a = 3;
                                } else {
                                    if (jVar.G < 0) {
                                        a.j(aVar);
                                        if (jVar.f71660n[2] == 0) {
                                            e(jVar);
                                        }
                                        int[] iArr5 = jVar.f71660n;
                                        iArr5[2] = iArr5[2] - 1;
                                        a.d(aVar);
                                        g gVar2 = jVar.f71659m;
                                        int[] iArr6 = gVar2.f71635b;
                                        int[] iArr7 = gVar2.f71636c;
                                        byte[] bArr3 = jVar.H;
                                        int i38 = jVar.C;
                                        i23 = jVar.M;
                                        if (i23 > 4) {
                                            i24 = 3;
                                        } else {
                                            i24 = i23 - 2;
                                        }
                                        iR2 = r(iArr6, iArr7[bArr3[i38 + i24] & 255], aVar);
                                        jVar.G = iR2;
                                        i25 = jVar.I;
                                        if (iR2 >= i25) {
                                            int i39 = iR2 - i25;
                                            int i40 = jVar.J & i39;
                                            int i41 = i39 >>> jVar.K;
                                            jVar.G = i41;
                                            int i42 = (i41 >>> 1) + 1;
                                            jVar.G = i25 + i40 + ((((((i41 & 1) + 2) << i42) - 4) + a.i(aVar, i42)) << jVar.K);
                                        }
                                    }
                                    iT = t(jVar.G, jVar.f71663q, jVar.f71666t);
                                    jVar.L = iT;
                                    if (iT < 0) {
                                        throw new BrotliRuntimeException("Negative distance");
                                    }
                                    i20 = jVar.f71665s;
                                    i21 = jVar.O;
                                    if (i20 != i21 || (i22 = jVar.f71664r) >= i21) {
                                        jVar.f71665s = i21;
                                    } else {
                                        jVar.f71665s = i22;
                                    }
                                    jVar.N = jVar.f71664r;
                                    if (iT > jVar.f71665s) {
                                        jVar.f71647a = 9;
                                    } else {
                                        if (jVar.G > 0) {
                                            int[] iArr8 = jVar.f71663q;
                                            int i43 = jVar.f71666t;
                                            iArr8[i43 & 3] = iT;
                                            jVar.f71666t = i43 + 1;
                                        }
                                        if (jVar.M > jVar.f71653g) {
                                            throw new BrotliRuntimeException("Invalid backward reference");
                                        }
                                        jVar.f71670x = 0;
                                        jVar.f71647a = 7;
                                        int i44 = jVar.f71664r;
                                        i11 = (i44 - jVar.L) & i29;
                                        i12 = jVar.M - jVar.f71670x;
                                        if (i11 + i12 < i29 || i44 + i12 >= i29) {
                                            while (true) {
                                                i13 = jVar.f71670x;
                                                if (i13 < jVar.M) {
                                                    i14 = jVar.f71664r;
                                                    bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                                    jVar.f71653g--;
                                                    jVar.f71670x = i13 + 1;
                                                    jVar.f71664r = i14 + 1;
                                                    if (i14 == i29) {
                                                        i15 = 7;
                                                        jVar.f71648b = 7;
                                                        jVar.Y = jVar.Q;
                                                        jVar.X = 0;
                                                        jVar.f71647a = 12;
                                                    }
                                                }
                                            }
                                            if (jVar.f71647a == i15) {
                                                jVar.f71647a = 3;
                                            }
                                        } else {
                                            while (i31 < i12) {
                                                bArr[i44] = bArr[i11];
                                                i31++;
                                                i44++;
                                                i11++;
                                            }
                                            jVar.f71670x += i12;
                                            jVar.f71653g -= i12;
                                            jVar.f71664r += i12;
                                        }
                                        i15 = 7;
                                        if (jVar.f71647a == i15) {
                                            jVar.f71647a = 3;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 3:
                        if (jVar.f71653g <= 0) {
                            jVar.f71647a = 1;
                        } else {
                            a.j(aVar);
                            if (jVar.f71660n[1] == 0) {
                                c(jVar);
                            }
                            int[] iArr9 = jVar.f71660n;
                            iArr9[1] = iArr9[1] - 1;
                            a.d(aVar);
                            int iR4 = r(jVar.f71658l.f71635b, jVar.F, aVar);
                            i27 = iR4 >>> 6;
                            jVar.G = 0;
                            if (i27 >= 2) {
                                i27 -= 2;
                                jVar.G = -1;
                            }
                            int i310 = i.f71645g[i27] + ((iR4 >>> 3) & 7);
                            int i311 = i.f71646h[i27] + (iR4 & 7);
                            jVar.f71671y = i.f71641c[i310] + a.i(aVar, i.f71642d[i310]);
                            jVar.M = i.f71643e[i311] + a.i(aVar, i.f71644f[i311]);
                            jVar.f71670x = 0;
                            jVar.f71647a = 6;
                            if (jVar.f71667u) {
                                while (jVar.f71670x < jVar.f71671y) {
                                    a.j(aVar);
                                    if (jVar.f71660n[0] == 0) {
                                        f(jVar);
                                    }
                                    int[] iArr10 = jVar.f71660n;
                                    iArr10[0] = iArr10[0] - 1;
                                    a.d(aVar);
                                    bArr[jVar.f71664r] = (byte) r(jVar.f71657k.f71635b, jVar.f71669w, aVar);
                                    jVar.f71670x++;
                                    i26 = jVar.f71664r;
                                    jVar.f71664r = i26 + 1;
                                    if (i26 == i29) {
                                        jVar.f71648b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f71647a = 12;
                                    }
                                }
                            } else {
                                int i312 = jVar.f71664r;
                                i16 = bArr[(i312 - 1) & i29] & 255;
                                i17 = bArr[(i312 - 2) & i29] & 255;
                                while (jVar.f71670x < jVar.f71671y) {
                                    a.j(aVar);
                                    if (jVar.f71660n[0] == 0) {
                                        f(jVar);
                                    }
                                    byte[] bArr4 = jVar.A;
                                    int i313 = jVar.B;
                                    int[] iArr11 = c.f71625a;
                                    int i314 = bArr4[i313 + (iArr11[jVar.E + i17] | iArr11[jVar.D + i16])] & 255;
                                    int[] iArr12 = jVar.f71660n;
                                    iArr12[0] = iArr12[0] - 1;
                                    a.d(aVar);
                                    g gVar3 = jVar.f71657k;
                                    iR = r(gVar3.f71635b, gVar3.f71636c[i314], aVar);
                                    i18 = jVar.f71664r;
                                    bArr[i18] = (byte) iR;
                                    jVar.f71670x++;
                                    jVar.f71664r = i18 + 1;
                                    if (i18 == i29) {
                                        jVar.f71648b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f71647a = 12;
                                    } else {
                                        int i315 = i16;
                                        i16 = iR;
                                        i17 = i315;
                                    }
                                }
                            }
                            if (jVar.f71647a != 6) {
                                continue;
                            } else {
                                i19 = jVar.f71653g - jVar.f71671y;
                                jVar.f71653g = i19;
                                if (i19 <= 0) {
                                    jVar.f71647a = 3;
                                } else {
                                    if (jVar.G < 0) {
                                        a.j(aVar);
                                        if (jVar.f71660n[2] == 0) {
                                            e(jVar);
                                        }
                                        int[] iArr13 = jVar.f71660n;
                                        iArr13[2] = iArr13[2] - 1;
                                        a.d(aVar);
                                        g gVar4 = jVar.f71659m;
                                        int[] iArr14 = gVar4.f71635b;
                                        int[] iArr15 = gVar4.f71636c;
                                        byte[] bArr5 = jVar.H;
                                        int i316 = jVar.C;
                                        i23 = jVar.M;
                                        if (i23 > 4) {
                                            i24 = 3;
                                        } else {
                                            i24 = i23 - 2;
                                        }
                                        iR2 = r(iArr14, iArr15[bArr5[i316 + i24] & 255], aVar);
                                        jVar.G = iR2;
                                        i25 = jVar.I;
                                        if (iR2 >= i25) {
                                            int i317 = iR2 - i25;
                                            int i45 = jVar.J & i317;
                                            int i46 = i317 >>> jVar.K;
                                            jVar.G = i46;
                                            int i47 = (i46 >>> 1) + 1;
                                            jVar.G = i25 + i45 + ((((((i46 & 1) + 2) << i47) - 4) + a.i(aVar, i47)) << jVar.K);
                                        }
                                    }
                                    iT = t(jVar.G, jVar.f71663q, jVar.f71666t);
                                    jVar.L = iT;
                                    if (iT < 0) {
                                        throw new BrotliRuntimeException("Negative distance");
                                    }
                                    i20 = jVar.f71665s;
                                    i21 = jVar.O;
                                    if (i20 != i21) {
                                        jVar.f71665s = i21;
                                    } else {
                                        jVar.f71665s = i21;
                                    }
                                    jVar.N = jVar.f71664r;
                                    if (iT > jVar.f71665s) {
                                        jVar.f71647a = 9;
                                    } else {
                                        if (jVar.G > 0) {
                                            int[] iArr16 = jVar.f71663q;
                                            int i48 = jVar.f71666t;
                                            iArr16[i48 & 3] = iT;
                                            jVar.f71666t = i48 + 1;
                                        }
                                        if (jVar.M > jVar.f71653g) {
                                            throw new BrotliRuntimeException("Invalid backward reference");
                                        }
                                        jVar.f71670x = 0;
                                        jVar.f71647a = 7;
                                        int i49 = jVar.f71664r;
                                        i11 = (i49 - jVar.L) & i29;
                                        i12 = jVar.M - jVar.f71670x;
                                        if (i11 + i12 < i29) {
                                            while (true) {
                                                i13 = jVar.f71670x;
                                                if (i13 < jVar.M) {
                                                    i14 = jVar.f71664r;
                                                    bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                                    jVar.f71653g--;
                                                    jVar.f71670x = i13 + 1;
                                                    jVar.f71664r = i14 + 1;
                                                    if (i14 == i29) {
                                                        i15 = 7;
                                                        jVar.f71648b = 7;
                                                        jVar.Y = jVar.Q;
                                                        jVar.X = 0;
                                                        jVar.f71647a = 12;
                                                    }
                                                } else {
                                                    i15 = 7;
                                                }
                                            }
                                        } else {
                                            while (true) {
                                                i13 = jVar.f71670x;
                                                if (i13 < jVar.M) {
                                                    i14 = jVar.f71664r;
                                                    bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                                    jVar.f71653g--;
                                                    jVar.f71670x = i13 + 1;
                                                    jVar.f71664r = i14 + 1;
                                                    if (i14 == i29) {
                                                        i15 = 7;
                                                        jVar.f71648b = 7;
                                                        jVar.Y = jVar.Q;
                                                        jVar.X = 0;
                                                        jVar.f71647a = 12;
                                                    }
                                                } else {
                                                    i15 = 7;
                                                }
                                            }
                                        }
                                        if (jVar.f71647a == i15) {
                                            jVar.f71647a = 3;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 4:
                        while (jVar.f71653g > 0) {
                            a.j(aVar);
                            a.i(aVar, 8);
                            jVar.f71653g--;
                        }
                        jVar.f71647a = 1;
                        break;
                    case 5:
                        a(jVar);
                        break;
                    case 6:
                        if (jVar.f71667u) {
                            while (jVar.f71670x < jVar.f71671y) {
                                a.j(aVar);
                                if (jVar.f71660n[0] == 0) {
                                    f(jVar);
                                }
                                int[] iArr17 = jVar.f71660n;
                                iArr17[0] = iArr17[0] - 1;
                                a.d(aVar);
                                bArr[jVar.f71664r] = (byte) r(jVar.f71657k.f71635b, jVar.f71669w, aVar);
                                jVar.f71670x++;
                                i26 = jVar.f71664r;
                                jVar.f71664r = i26 + 1;
                                if (i26 == i29) {
                                    jVar.f71648b = 6;
                                    jVar.Y = jVar.Q;
                                    jVar.X = 0;
                                    jVar.f71647a = 12;
                                }
                            }
                        } else {
                            int i318 = jVar.f71664r;
                            i16 = bArr[(i318 - 1) & i29] & 255;
                            i17 = bArr[(i318 - 2) & i29] & 255;
                            while (jVar.f71670x < jVar.f71671y) {
                                a.j(aVar);
                                if (jVar.f71660n[0] == 0) {
                                    f(jVar);
                                }
                                byte[] bArr6 = jVar.A;
                                int i319 = jVar.B;
                                int[] iArr18 = c.f71625a;
                                int i3110 = bArr6[i319 + (iArr18[jVar.E + i17] | iArr18[jVar.D + i16])] & 255;
                                int[] iArr19 = jVar.f71660n;
                                iArr19[0] = iArr19[0] - 1;
                                a.d(aVar);
                                g gVar5 = jVar.f71657k;
                                iR = r(gVar5.f71635b, gVar5.f71636c[i3110], aVar);
                                i18 = jVar.f71664r;
                                bArr[i18] = (byte) iR;
                                jVar.f71670x++;
                                jVar.f71664r = i18 + 1;
                                if (i18 == i29) {
                                    jVar.f71648b = 6;
                                    jVar.Y = jVar.Q;
                                    jVar.X = 0;
                                    jVar.f71647a = 12;
                                } else {
                                    int i3111 = i16;
                                    i16 = iR;
                                    i17 = i3111;
                                }
                            }
                        }
                        if (jVar.f71647a != 6) {
                            continue;
                        } else {
                            i19 = jVar.f71653g - jVar.f71671y;
                            jVar.f71653g = i19;
                            if (i19 <= 0) {
                                jVar.f71647a = 3;
                            } else {
                                if (jVar.G < 0) {
                                    a.j(aVar);
                                    if (jVar.f71660n[2] == 0) {
                                        e(jVar);
                                    }
                                    int[] iArr110 = jVar.f71660n;
                                    iArr110[2] = iArr110[2] - 1;
                                    a.d(aVar);
                                    g gVar6 = jVar.f71659m;
                                    int[] iArr111 = gVar6.f71635b;
                                    int[] iArr112 = gVar6.f71636c;
                                    byte[] bArr7 = jVar.H;
                                    int i3112 = jVar.C;
                                    i23 = jVar.M;
                                    if (i23 > 4) {
                                        i24 = 3;
                                    } else {
                                        i24 = i23 - 2;
                                    }
                                    iR2 = r(iArr111, iArr112[bArr7[i3112 + i24] & 255], aVar);
                                    jVar.G = iR2;
                                    i25 = jVar.I;
                                    if (iR2 >= i25) {
                                        int i3113 = iR2 - i25;
                                        int i410 = jVar.J & i3113;
                                        int i411 = i3113 >>> jVar.K;
                                        jVar.G = i411;
                                        int i412 = (i411 >>> 1) + 1;
                                        jVar.G = i25 + i410 + ((((((i411 & 1) + 2) << i412) - 4) + a.i(aVar, i412)) << jVar.K);
                                    }
                                }
                                iT = t(jVar.G, jVar.f71663q, jVar.f71666t);
                                jVar.L = iT;
                                if (iT < 0) {
                                    throw new BrotliRuntimeException("Negative distance");
                                }
                                i20 = jVar.f71665s;
                                i21 = jVar.O;
                                if (i20 != i21) {
                                    jVar.f71665s = i21;
                                } else {
                                    jVar.f71665s = i21;
                                }
                                jVar.N = jVar.f71664r;
                                if (iT > jVar.f71665s) {
                                    jVar.f71647a = 9;
                                } else {
                                    if (jVar.G > 0) {
                                        int[] iArr113 = jVar.f71663q;
                                        int i413 = jVar.f71666t;
                                        iArr113[i413 & 3] = iT;
                                        jVar.f71666t = i413 + 1;
                                    }
                                    if (jVar.M > jVar.f71653g) {
                                        throw new BrotliRuntimeException("Invalid backward reference");
                                    }
                                    jVar.f71670x = 0;
                                    jVar.f71647a = 7;
                                    int i414 = jVar.f71664r;
                                    i11 = (i414 - jVar.L) & i29;
                                    i12 = jVar.M - jVar.f71670x;
                                    if (i11 + i12 < i29) {
                                        while (true) {
                                            i13 = jVar.f71670x;
                                            if (i13 < jVar.M) {
                                                i14 = jVar.f71664r;
                                                bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                                jVar.f71653g--;
                                                jVar.f71670x = i13 + 1;
                                                jVar.f71664r = i14 + 1;
                                                if (i14 == i29) {
                                                    i15 = 7;
                                                    jVar.f71648b = 7;
                                                    jVar.Y = jVar.Q;
                                                    jVar.X = 0;
                                                    jVar.f71647a = 12;
                                                }
                                            } else {
                                                i15 = 7;
                                            }
                                        }
                                    } else {
                                        while (true) {
                                            i13 = jVar.f71670x;
                                            if (i13 < jVar.M) {
                                                i14 = jVar.f71664r;
                                                bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                                jVar.f71653g--;
                                                jVar.f71670x = i13 + 1;
                                                jVar.f71664r = i14 + 1;
                                                if (i14 == i29) {
                                                    i15 = 7;
                                                    jVar.f71648b = 7;
                                                    jVar.Y = jVar.Q;
                                                    jVar.X = 0;
                                                    jVar.f71647a = 12;
                                                }
                                            } else {
                                                i15 = 7;
                                            }
                                        }
                                    }
                                    if (jVar.f71647a == i15) {
                                        jVar.f71647a = 3;
                                    }
                                }
                            }
                        }
                        break;
                    case 7:
                        int i415 = jVar.f71664r;
                        i11 = (i415 - jVar.L) & i29;
                        i12 = jVar.M - jVar.f71670x;
                        if (i11 + i12 < i29) {
                            while (true) {
                                i13 = jVar.f71670x;
                                if (i13 < jVar.M) {
                                    i14 = jVar.f71664r;
                                    bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                    jVar.f71653g--;
                                    jVar.f71670x = i13 + 1;
                                    jVar.f71664r = i14 + 1;
                                    if (i14 == i29) {
                                        i15 = 7;
                                        jVar.f71648b = 7;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f71647a = 12;
                                    }
                                } else {
                                    i15 = 7;
                                }
                            }
                        } else {
                            while (true) {
                                i13 = jVar.f71670x;
                                if (i13 < jVar.M) {
                                    i14 = jVar.f71664r;
                                    bArr[i14] = bArr[(i14 - jVar.L) & i29];
                                    jVar.f71653g--;
                                    jVar.f71670x = i13 + 1;
                                    jVar.f71664r = i14 + 1;
                                    if (i14 == i29) {
                                        i15 = 7;
                                        jVar.f71648b = 7;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f71647a = 12;
                                    }
                                } else {
                                    i15 = 7;
                                }
                            }
                        }
                        if (jVar.f71647a == i15) {
                            jVar.f71647a = 3;
                        }
                        break;
                    case 8:
                        int i50 = jVar.Q;
                        System.arraycopy(bArr, i50, bArr, 0, jVar.N - i50);
                        jVar.f71647a = 3;
                        break;
                    case 9:
                        int i51 = jVar.M;
                        if (i51 < 4 || i51 > 24) {
                            throw new BrotliRuntimeException("Invalid backward reference");
                        }
                        int i52 = e.f71631a[i51];
                        int i53 = (jVar.L - jVar.f71665s) - 1;
                        int i54 = e.f71632b[i51];
                        int i55 = ((1 << i54) - 1) & i53;
                        int i56 = i53 >>> i54;
                        int i57 = i52 + (i55 * i51);
                        k[] kVarArr = k.f71673d;
                        if (i56 >= kVarArr.length) {
                            throw new BrotliRuntimeException("Invalid backward reference");
                        }
                        int iB = k.b(bArr, jVar.N, e.a(), i57, jVar.M, kVarArr[i56]);
                        int i58 = jVar.N + iB;
                        jVar.N = i58;
                        jVar.f71664r += iB;
                        jVar.f71653g -= iB;
                        int i59 = jVar.Q;
                        if (i58 < i59) {
                            jVar.f71647a = 3;
                        } else {
                            jVar.f71648b = 8;
                            jVar.Y = i59;
                            jVar.X = 0;
                            jVar.f71647a = 12;
                        }
                        break;
                        break;
                    default:
                        throw new BrotliRuntimeException("Unexpected state " + jVar.f71647a);
                }
            } else {
                if (!u(jVar)) {
                    return;
                }
                int i60 = jVar.f71664r;
                int i61 = jVar.O;
                if (i60 >= i61) {
                    jVar.f71665s = i61;
                }
                jVar.f71664r = i60 & i29;
                jVar.f71647a = jVar.f71648b;
            }
        }
    }

    private static void j(byte[] bArr, int i11) {
        int[] iArr = new int[256];
        for (int i12 = 0; i12 < 256; i12++) {
            iArr[i12] = i12;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = bArr[i13] & 255;
            bArr[i13] = (byte) iArr[i14];
            if (i14 != 0) {
                l(iArr, i14);
            }
        }
    }

    private static void k(j jVar) {
        int i11;
        int i12 = jVar.P;
        long j11 = i12;
        long j12 = jVar.R;
        if (j11 > j12) {
            while (true) {
                int i13 = i12 >> 1;
                if (i13 <= ((int) j12) + jVar.S.length) {
                    break;
                } else {
                    i12 = i13;
                }
            }
            if (!jVar.f71654h && i12 < 16384 && jVar.P >= 16384) {
                i12 = 16384;
            }
        }
        int i14 = jVar.Q;
        if (i12 <= i14) {
            return;
        }
        byte[] bArr = new byte[i12 + 37];
        byte[] bArr2 = jVar.f71650d;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, 0, i14);
        } else {
            byte[] bArr3 = jVar.S;
            if (bArr3.length != 0) {
                int length = bArr3.length;
                int i15 = jVar.O;
                if (length > i15) {
                    i11 = length - i15;
                } else {
                    i15 = length;
                    i11 = 0;
                }
                System.arraycopy(bArr3, i11, bArr, 0, i15);
                jVar.f71664r = i15;
                jVar.T = i15;
            }
        }
        jVar.f71650d = bArr;
        jVar.Q = i12;
    }

    private static void l(int[] iArr, int i11) {
        int i12 = iArr[i11];
        while (i11 > 0) {
            iArr[i11] = iArr[i11 - 1];
            i11--;
        }
        iArr[0] = i12;
    }

    private static int m(int[] iArr, int i11, a aVar) {
        a.d(aVar);
        int iR = r(iArr, i11, aVar);
        return i.f71639a[iR] + a.i(aVar, i.f71640b[iR]);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ca  */
    static void n(int i11, int[] iArr, int i12, a aVar) {
        int i13;
        int i14;
        int i15;
        a.j(aVar);
        int[] iArr2 = new int[i11];
        int i16 = a.i(aVar, 2);
        boolean z10 = false;
        boolean z11 = true;
        if (i16 == 1) {
            int i17 = i11 - 1;
            int[] iArr3 = new int[4];
            int i18 = a.i(aVar, 2) + 1;
            int i19 = 0;
            while (i17 != 0) {
                i17 >>= 1;
                i19++;
            }
            for (int i20 = 0; i20 < i18; i20++) {
                int i21 = a.i(aVar, i19) % i11;
                iArr3[i20] = i21;
                iArr2[i21] = 2;
            }
            iArr2[iArr3[0]] = 1;
            if (i18 != 1) {
                if (i18 == 2) {
                    int i22 = iArr3[0];
                    int i23 = iArr3[1];
                    z10 = i22 != i23;
                    iArr2[i23] = 1;
                } else if (i18 != 3) {
                    int i24 = iArr3[0];
                    int i25 = iArr3[1];
                    boolean z12 = (i24 == i25 || i24 == (i14 = iArr3[2]) || i24 == (i15 = iArr3[3]) || i25 == i14 || i25 == i15 || i14 == i15) ? false : true;
                    if (a.i(aVar, 1) == 1) {
                        iArr2[iArr3[2]] = 3;
                        iArr2[iArr3[3]] = 3;
                    } else {
                        iArr2[iArr3[0]] = 2;
                    }
                    z11 = z12;
                } else {
                    int i26 = iArr3[0];
                    int i27 = iArr3[1];
                    if (i26 != i27 && i26 != (i13 = iArr3[2]) && i27 != i13) {
                        z10 = true;
                    }
                }
            }
            if (z11) {
                throw new BrotliRuntimeException("Can't readHuffmanCode");
            }
            f.a(iArr, i12, 8, iArr2, i11);
        }
        int[] iArr4 = new int[18];
        int i28 = 0;
        int i29 = 32;
        while (i16 < 18 && i29 > 0) {
            int i30 = f71627a[i16];
            a.d(aVar);
            long j11 = aVar.f71617f;
            int i31 = aVar.f71618g;
            int i32 = f71630d[((int) (j11 >>> i31)) & 15];
            aVar.f71618g = i31 + (i32 >> 16);
            int i33 = i32 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            iArr4[i30] = i33;
            if (i33 != 0) {
                i29 -= 32 >> i33;
                i28++;
            }
            i16++;
        }
        z10 = i28 == 1 || i29 == 0;
        o(iArr4, i11, iArr2, aVar);
        z11 = z10;
        if (z11) {
            throw new BrotliRuntimeException("Can't readHuffmanCode");
        }
        f.a(iArr, i12, 8, iArr2, i11);
    }

    private static void o(int[] iArr, int i11, int[] iArr2, a aVar) {
        int[] iArr3 = new int[32];
        f.a(iArr3, 0, 5, iArr, 18);
        int i12 = 8;
        int i13 = 32768;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < i11 && i13 > 0) {
            a.j(aVar);
            a.d(aVar);
            long j11 = aVar.f71617f;
            int i17 = aVar.f71618g;
            int i18 = iArr3[((int) (j11 >>> i17)) & 31];
            aVar.f71618g = i17 + (i18 >> 16);
            int i19 = i18 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            if (i19 < 16) {
                i14++;
                iArr2[i14] = i19;
                if (i19 != 0) {
                    i13 -= 32768 >> i19;
                    i12 = i19;
                }
                i16 = 0;
            } else {
                int i20 = i19 - 14;
                int i21 = i19 == 16 ? i12 : 0;
                if (i15 != i21) {
                    i16 = 0;
                    i15 = i21;
                }
                int i22 = (i16 > 0 ? (i16 - 2) << i20 : i16) + a.i(aVar, i20) + 3;
                int i23 = i22 - i16;
                if (i14 + i23 > i11) {
                    throw new BrotliRuntimeException("symbol + repeatDelta > numSymbols");
                }
                int i24 = 0;
                while (i24 < i23) {
                    iArr2[i14] = i15;
                    i24++;
                    i14++;
                }
                if (i15 != 0) {
                    i13 -= i23 << (15 - i15);
                }
                i16 = i22;
            }
        }
        if (i13 != 0) {
            throw new BrotliRuntimeException("Unused space");
        }
        l.b(iArr2, i14, i11 - i14);
    }

    private static void p(j jVar) {
        int i11;
        int[] iArr;
        a aVar = jVar.f71649c;
        for (int i12 = 0; i12 < 3; i12++) {
            jVar.f71661o[i12] = h(aVar) + 1;
            jVar.f71660n[i12] = 268435456;
            int i13 = jVar.f71661o[i12];
            if (i13 > 1) {
                int i14 = i12 * 1080;
                n(i13 + 2, jVar.f71651e, i14, aVar);
                n(26, jVar.f71652f, i14, aVar);
                jVar.f71660n[i12] = m(jVar.f71652f, i14, aVar);
            }
        }
        a.j(aVar);
        jVar.K = a.i(aVar, 2);
        int i15 = a.i(aVar, 4);
        int i16 = jVar.K;
        int i17 = (i15 << i16) + 16;
        jVar.I = i17;
        jVar.J = (1 << i16) - 1;
        int i18 = i17 + (48 << i16);
        jVar.f71672z = new byte[jVar.f71661o[0]];
        int i19 = 0;
        while (true) {
            i11 = jVar.f71661o[0];
            if (i19 >= i11) {
                break;
            }
            int iMin = Math.min(i19 + 96, i11);
            while (i19 < iMin) {
                jVar.f71672z[i19] = (byte) (a.i(aVar, 2) << 1);
                i19++;
            }
            a.j(aVar);
        }
        byte[] bArr = new byte[i11 << 6];
        jVar.A = bArr;
        int iD = d(i11 << 6, bArr, aVar);
        jVar.f71667u = true;
        int i20 = 0;
        while (true) {
            iArr = jVar.f71661o;
            if (i20 >= (iArr[0] << 6)) {
                break;
            }
            if (jVar.A[i20] != (i20 >> 6)) {
                jVar.f71667u = false;
                break;
            }
            i20++;
        }
        int i21 = iArr[2];
        byte[] bArr2 = new byte[i21 << 2];
        jVar.H = bArr2;
        int iD2 = d(i21 << 2, bArr2, aVar);
        g.b(jVar.f71657k, 256, iD);
        g.b(jVar.f71658l, 704, jVar.f71661o[1]);
        g.b(jVar.f71659m, i18, iD2);
        g.a(jVar.f71657k, aVar);
        g.a(jVar.f71658l, aVar);
        g.a(jVar.f71659m, aVar);
        jVar.B = 0;
        jVar.C = 0;
        int[] iArr2 = c.f71626b;
        byte b11 = jVar.f71672z[0];
        jVar.D = iArr2[b11];
        jVar.E = iArr2[b11 + 1];
        jVar.f71668v = 0;
        jVar.f71669w = jVar.f71657k.f71636c[0];
        jVar.F = jVar.f71658l.f71636c[0];
        int[] iArr3 = jVar.f71662p;
        iArr3[4] = 1;
        iArr3[2] = 1;
        iArr3[0] = 1;
        iArr3[5] = 0;
        iArr3[3] = 0;
        iArr3[1] = 0;
    }

    private static void q(j jVar) {
        a aVar = jVar.f71649c;
        if (jVar.f71654h) {
            jVar.f71648b = 10;
            jVar.Y = jVar.f71664r;
            jVar.X = 0;
            jVar.f71647a = 12;
            return;
        }
        g gVar = jVar.f71657k;
        gVar.f71635b = null;
        gVar.f71636c = null;
        g gVar2 = jVar.f71658l;
        gVar2.f71635b = null;
        gVar2.f71636c = null;
        g gVar3 = jVar.f71659m;
        gVar3.f71635b = null;
        gVar3.f71636c = null;
        a.j(aVar);
        g(aVar, jVar);
        if (jVar.f71653g != 0 || jVar.f71656j) {
            if (jVar.f71655i || jVar.f71656j) {
                a.g(aVar);
                jVar.f71647a = jVar.f71656j ? 4 : 5;
            } else {
                jVar.f71647a = 2;
            }
            if (jVar.f71656j) {
                return;
            }
            jVar.R += (long) jVar.f71653g;
            if (jVar.Q < jVar.P) {
                k(jVar);
            }
        }
    }

    private static int r(int[] iArr, int i11, a aVar) {
        long j11 = aVar.f71617f;
        int i12 = aVar.f71618g;
        int i13 = (int) (j11 >>> i12);
        int i14 = i11 + (i13 & 255);
        int i15 = iArr[i14];
        int i16 = i15 >> 16;
        int i17 = i15 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        if (i16 <= 8) {
            aVar.f71618g = i12 + i16;
            return i17;
        }
        int i18 = iArr[i14 + i17 + ((i13 & ((1 << i16) - 1)) >>> 8)];
        aVar.f71618g = i12 + (i18 >> 16) + 8;
        return i18 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    static void s(j jVar, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        jVar.S = bArr;
    }

    private static int t(int i11, int[] iArr, int i12) {
        return i11 < 16 ? iArr[(i12 + f71628b[i11]) & 3] + f71629c[i11] : i11 - 15;
    }

    private static boolean u(j jVar) {
        int i11 = jVar.T;
        if (i11 != 0) {
            jVar.X += i11;
            jVar.T = 0;
        }
        int iMin = Math.min(jVar.V - jVar.W, jVar.Y - jVar.X);
        if (iMin != 0) {
            System.arraycopy(jVar.f71650d, jVar.X, jVar.Z, jVar.U + jVar.W, iMin);
            jVar.W += iMin;
            jVar.X += iMin;
        }
        return jVar.W < jVar.V;
    }
}
