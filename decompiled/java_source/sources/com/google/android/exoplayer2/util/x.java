package com.google.android.exoplayer2.util;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f27664a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f27665b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f27666c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int[] f27667d = new int[10];

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f27669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f27670c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27671d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f27672e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f27673f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f27674g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f27675h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f27676i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float f27677j;

        public a(int i11, boolean z10, int i12, int i13, int[] iArr, int i14, int i15, int i16, int i17, float f11) {
            this.f27668a = i11;
            this.f27669b = z10;
            this.f27670c = i12;
            this.f27671d = i13;
            this.f27672e = iArr;
            this.f27673f = i14;
            this.f27674g = i15;
            this.f27675h = i16;
            this.f27676i = i17;
            this.f27677j = f11;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f27680c;

        public b(int i11, int i12, boolean z10) {
            this.f27678a = i11;
            this.f27679b = i12;
            this.f27680c = z10;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f27683c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27684d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f27685e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f27686f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f27687g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f27688h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f27689i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f27690j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f27691k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f27692l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f27693m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final boolean f27694n;

        public c(int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f11, boolean z10, boolean z11, int i18, int i19, int i20, boolean z12) {
            this.f27681a = i11;
            this.f27682b = i12;
            this.f27683c = i13;
            this.f27684d = i14;
            this.f27685e = i15;
            this.f27686f = i16;
            this.f27687g = i17;
            this.f27688h = f11;
            this.f27689i = z10;
            this.f27690j = z11;
            this.f27691k = i18;
            this.f27692l = i19;
            this.f27693m = i20;
            this.f27694n = z12;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i11 + 1;
            if (i13 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i14 = byteBuffer.get(i11) & 255;
            if (i12 == 3) {
                if (i14 == 1 && (byteBuffer.get(i13) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i11 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i14 == 0) {
                i12++;
            }
            if (i14 != 0) {
                i12 = 0;
            }
            i11 = i13;
        }
    }

    public static int c(byte[] bArr, int i11, int i12, boolean[] zArr) {
        int i13 = i12 - i11;
        com.google.android.exoplayer2.util.a.g(i13 >= 0);
        if (i13 == 0) {
            return i12;
        }
        if (zArr[0]) {
            a(zArr);
            return i11 - 3;
        }
        if (i13 > 1 && zArr[1] && bArr[i11] == 1) {
            a(zArr);
            return i11 - 2;
        }
        if (i13 > 2 && zArr[2] && bArr[i11] == 0 && bArr[i11 + 1] == 1) {
            a(zArr);
            return i11 - 1;
        }
        int i14 = i12 - 1;
        int i15 = i11 + 2;
        while (i15 < i14) {
            byte b11 = bArr[i15];
            if ((b11 & 254) == 0) {
                int i16 = i15 - 2;
                if (bArr[i16] == 0 && bArr[i15 - 1] == 0 && b11 == 1) {
                    a(zArr);
                    return i16;
                }
                i15 -= 2;
            }
            i15 += 3;
        }
        zArr[0] = i13 <= 2 ? !(i13 != 2 ? !(zArr[1] && bArr[i14] == 1) : !(zArr[2] && bArr[i12 + (-2)] == 0 && bArr[i14] == 1)) : bArr[i12 + (-3)] == 0 && bArr[i12 + (-2)] == 0 && bArr[i14] == 1;
        zArr[1] = i13 <= 1 ? zArr[2] && bArr[i14] == 0 : bArr[i12 + (-2)] == 0 && bArr[i14] == 0;
        zArr[2] = bArr[i14] == 0;
        return i12;
    }

    private static int d(byte[] bArr, int i11, int i12) {
        while (i11 < i12 - 2) {
            if (bArr[i11] == 0 && bArr[i11 + 1] == 0 && bArr[i11 + 2] == 3) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static int e(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 126) >> 1;
    }

    public static int f(byte[] bArr, int i11) {
        return bArr[i11 + 3] & 31;
    }

    public static boolean g(String str, byte b11) {
        if (MimeTypes.VIDEO_H264.equals(str) && (b11 & 31) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(str) && ((b11 & 126) >> 1) == 39;
    }

    public static a h(byte[] bArr, int i11, int i12) {
        return i(bArr, i11 + 2, i12);
    }

    public static a i(byte[] bArr, int i11, int i12) {
        e0 e0Var = new e0(bArr, i11, i12);
        e0Var.l(4);
        int iE = e0Var.e(3);
        e0Var.k();
        int iE2 = e0Var.e(2);
        boolean zD = e0Var.d();
        int iE3 = e0Var.e(5);
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i14 >= 32) {
                break;
            }
            if (e0Var.d()) {
                i13 |= 1 << i14;
            }
            i14++;
        }
        int[] iArr = new int[6];
        for (int i15 = 0; i15 < 6; i15++) {
            iArr[i15] = e0Var.e(8);
        }
        int iE4 = e0Var.e(8);
        int i16 = 0;
        for (int i17 = 0; i17 < iE; i17++) {
            if (e0Var.d()) {
                i16 += 89;
            }
            if (e0Var.d()) {
                i16 += 8;
            }
        }
        e0Var.l(i16);
        if (iE > 0) {
            e0Var.l((8 - iE) * 2);
        }
        int iH = e0Var.h();
        int iH2 = e0Var.h();
        if (iH2 == 3) {
            e0Var.k();
        }
        int iH3 = e0Var.h();
        int iH4 = e0Var.h();
        if (e0Var.d()) {
            int iH5 = e0Var.h();
            int iH6 = e0Var.h();
            int iH7 = e0Var.h();
            int iH8 = e0Var.h();
            iH3 -= ((iH2 == 1 || iH2 == 2) ? 2 : 1) * (iH5 + iH6);
            iH4 -= (iH2 == 1 ? 2 : 1) * (iH7 + iH8);
        }
        int i18 = iH3;
        e0Var.h();
        e0Var.h();
        int iH9 = e0Var.h();
        for (int i19 = e0Var.d() ? 0 : iE; i19 <= iE; i19++) {
            e0Var.h();
            e0Var.h();
            e0Var.h();
        }
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        if (e0Var.d() && e0Var.d()) {
            n(e0Var);
        }
        e0Var.l(2);
        if (e0Var.d()) {
            e0Var.l(8);
            e0Var.h();
            e0Var.h();
            e0Var.k();
        }
        p(e0Var);
        if (e0Var.d()) {
            for (int i20 = 0; i20 < e0Var.h(); i20++) {
                e0Var.l(iH9 + 5);
            }
        }
        e0Var.l(2);
        float f11 = 1.0f;
        if (e0Var.d()) {
            if (e0Var.d()) {
                int iE5 = e0Var.e(8);
                if (iE5 == 255) {
                    int iE6 = e0Var.e(16);
                    int iE7 = e0Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f11 = iE6 / iE7;
                    }
                } else {
                    float[] fArr = f27665b;
                    if (iE5 < fArr.length) {
                        f11 = fArr[iE5];
                    } else {
                        s.i("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (e0Var.d()) {
                e0Var.k();
            }
            if (e0Var.d()) {
                e0Var.l(4);
                if (e0Var.d()) {
                    e0Var.l(24);
                }
            }
            if (e0Var.d()) {
                e0Var.h();
                e0Var.h();
            }
            e0Var.k();
            if (e0Var.d()) {
                iH4 *= 2;
            }
        }
        return new a(iE2, zD, iE3, i13, iArr, iE4, iH, i18, iH4, f11);
    }

    public static b j(byte[] bArr, int i11, int i12) {
        return k(bArr, i11 + 1, i12);
    }

    public static b k(byte[] bArr, int i11, int i12) {
        e0 e0Var = new e0(bArr, i11, i12);
        int iH = e0Var.h();
        int iH2 = e0Var.h();
        e0Var.k();
        return new b(iH, iH2, e0Var.d());
    }

    public static c l(byte[] bArr, int i11, int i12) {
        return m(bArr, i11 + 1, i12);
    }

    public static c m(byte[] bArr, int i11, int i12) {
        int iH;
        boolean zD;
        boolean z10;
        int iH2;
        float f11;
        int i13;
        e0 e0Var = new e0(bArr, i11, i12);
        int iE = e0Var.e(8);
        int iE2 = e0Var.e(8);
        int iE3 = e0Var.e(8);
        int iH3 = e0Var.h();
        int i14 = 1;
        if (iE == 100 || iE == 110 || iE == 122 || iE == 244 || iE == 44 || iE == 83 || iE == 86 || iE == 118 || iE == 128 || iE == 138) {
            iH = e0Var.h();
            zD = iH == 3 ? e0Var.d() : false;
            e0Var.h();
            e0Var.h();
            e0Var.k();
            if (e0Var.d()) {
                int i15 = iH != 3 ? 8 : 12;
                int i16 = 0;
                while (i16 < i15) {
                    if (e0Var.d()) {
                        o(e0Var, i16 < 6 ? 16 : 64);
                    }
                    i16++;
                }
            }
        } else {
            iH = 1;
            zD = false;
        }
        int iH4 = e0Var.h() + 4;
        int iH5 = e0Var.h();
        if (iH5 == 0) {
            iH = iH;
            zD = zD;
            iH2 = e0Var.h() + 4;
            z10 = false;
        } else {
            if (iH5 == 1) {
                boolean zD2 = e0Var.d();
                e0Var.g();
                e0Var.g();
                long jH = e0Var.h();
                for (int i17 = 0; i17 < jH; i17++) {
                    e0Var.h();
                }
                z10 = zD2;
            } else {
                z10 = false;
            }
            iH2 = 0;
        }
        int iH6 = e0Var.h();
        e0Var.k();
        int iH7 = e0Var.h() + 1;
        int iH8 = e0Var.h() + 1;
        boolean zD3 = e0Var.d();
        int i18 = (2 - (zD3 ? 1 : 0)) * iH8;
        if (!zD3) {
            e0Var.k();
        }
        e0Var.k();
        int i19 = iH7 * 16;
        int i20 = i18 * 16;
        if (e0Var.d()) {
            int iH9 = e0Var.h();
            int iH10 = e0Var.h();
            int iH11 = e0Var.h();
            int iH12 = e0Var.h();
            if (iH == 0) {
                i13 = 2 - (zD3 ? 1 : 0);
            } else {
                int i21 = iH;
                i14 = i21 == 3 ? 1 : 2;
                i13 = (2 - (zD3 ? 1 : 0)) * (i21 == 1 ? 2 : 1);
            }
            i19 -= (iH9 + iH10) * i14;
            i20 -= (iH11 + iH12) * i13;
        }
        int i22 = i19;
        int i23 = i20;
        float f12 = 1.0f;
        if (e0Var.d() && e0Var.d()) {
            int iE4 = e0Var.e(8);
            if (iE4 == 255) {
                int iE5 = e0Var.e(16);
                int iE6 = e0Var.e(16);
                if (iE5 != 0 && iE6 != 0) {
                    f12 = iE5 / iE6;
                }
            } else {
                float[] fArr = f27665b;
                if (iE4 < fArr.length) {
                    f11 = fArr[iE4];
                } else {
                    s.i("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iE4);
                }
            }
            f11 = f12;
        } else {
            f11 = f12;
        }
        return new c(iE, iE2, iE3, iH3, iH6, i22, i23, f11, zD, zD3, iH4, iH5, iH2, z10);
    }

    private static void n(e0 e0Var) {
        for (int i11 = 0; i11 < 4; i11++) {
            int i12 = 0;
            while (i12 < 6) {
                int i13 = 1;
                if (e0Var.d()) {
                    int iMin = Math.min(64, 1 << ((i11 << 1) + 4));
                    if (i11 > 1) {
                        e0Var.g();
                    }
                    for (int i14 = 0; i14 < iMin; i14++) {
                        e0Var.g();
                    }
                } else {
                    e0Var.h();
                }
                if (i11 == 3) {
                    i13 = 3;
                }
                i12 += i13;
            }
        }
    }

    private static void o(e0 e0Var, int i11) {
        int iG = 8;
        int i12 = 8;
        for (int i13 = 0; i13 < i11; i13++) {
            if (iG != 0) {
                iG = ((e0Var.g() + i12) + 256) % 256;
            }
            if (iG != 0) {
                i12 = iG;
            }
        }
    }

    private static void p(e0 e0Var) {
        int iH = e0Var.h();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < iH; i13++) {
            if (i13 == 0 || !e0Var.d()) {
                int iH2 = e0Var.h();
                int iH3 = e0Var.h();
                int[] iArr2 = new int[iH2];
                for (int i14 = 0; i14 < iH2; i14++) {
                    iArr2[i14] = e0Var.h() + 1;
                    e0Var.k();
                }
                int[] iArr3 = new int[iH3];
                for (int i15 = 0; i15 < iH3; i15++) {
                    iArr3[i15] = e0Var.h() + 1;
                    e0Var.k();
                }
                i11 = iH2;
                iArr = iArr2;
                i12 = iH3;
                iArrCopyOf = iArr3;
            } else {
                int i16 = i11 + i12;
                int iH4 = (1 - ((e0Var.d() ? 1 : 0) * 2)) * (e0Var.h() + 1);
                int i17 = i16 + 1;
                boolean[] zArr = new boolean[i17];
                for (int i18 = 0; i18 <= i16; i18++) {
                    if (e0Var.d()) {
                        zArr[i18] = true;
                    } else {
                        zArr[i18] = e0Var.d();
                    }
                }
                int[] iArr4 = new int[i17];
                int[] iArr5 = new int[i17];
                int i19 = 0;
                for (int i20 = i12 - 1; i20 >= 0; i20--) {
                    int i21 = iArrCopyOf[i20] + iH4;
                    if (i21 < 0 && zArr[i11 + i20]) {
                        iArr4[i19] = i21;
                        i19++;
                    }
                }
                if (iH4 < 0 && zArr[i16]) {
                    iArr4[i19] = iH4;
                    i19++;
                }
                for (int i22 = 0; i22 < i11; i22++) {
                    int i23 = iArr[i22] + iH4;
                    if (i23 < 0 && zArr[i22]) {
                        iArr4[i19] = i23;
                        i19++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i19);
                int i24 = 0;
                for (int i25 = i11 - 1; i25 >= 0; i25--) {
                    int i26 = iArr[i25] + iH4;
                    if (i26 > 0 && zArr[i25]) {
                        iArr5[i24] = i26;
                        i24++;
                    }
                }
                if (iH4 > 0 && zArr[i16]) {
                    iArr5[i24] = iH4;
                    i24++;
                }
                for (int i27 = 0; i27 < i12; i27++) {
                    int i28 = iArrCopyOf[i27] + iH4;
                    if (i28 > 0 && zArr[i11 + i27]) {
                        iArr5[i24] = i28;
                        i24++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i24);
                iArr = iArrCopyOf2;
                i11 = i19;
                i12 = i24;
            }
        }
    }

    public static int q(byte[] bArr, int i11) {
        int i12;
        synchronized (f27666c) {
            int iD = 0;
            int i13 = 0;
            while (iD < i11) {
                try {
                    iD = d(bArr, iD, i11);
                    if (iD < i11) {
                        int[] iArr = f27667d;
                        if (iArr.length <= i13) {
                            f27667d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f27667d[i13] = iD;
                        iD += 3;
                        i13++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i12 = i11 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = f27667d[i16] - i15;
                System.arraycopy(bArr, i15, bArr, i14, i17);
                int i18 = i14 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i14 = i18 + 2;
                bArr[i19] = 0;
                i15 += i17 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i14, i12 - i14);
        }
        return i12;
    }
}
