package l2;

import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class v0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String[] f68696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68697c;

        public a(String str, String[] strArr, int i11) {
            this.f68695a = str;
            this.f68696b = strArr;
            this.f68697c = i11;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f68698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f68699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68700c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f68701d;

        public b(boolean z10, int i11, int i12, int i13) {
            this.f68698a = z10;
            this.f68699b = i11;
            this.f68700c = i12;
            this.f68701d = i13;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f68702a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f68703b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68704c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f68705d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f68706e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f68707f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f68708g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f68709h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f68710i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final byte[] f68711j;

        public c(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10, byte[] bArr) {
            this.f68702a = i11;
            this.f68703b = i12;
            this.f68704c = i13;
            this.f68705d = i14;
            this.f68706e = i15;
            this.f68707f = i16;
            this.f68708g = i17;
            this.f68709h = i18;
            this.f68710i = z10;
            this.f68711j = bArr;
        }
    }

    public static int[] a(int i11) {
        if (i11 == 3) {
            return new int[]{0, 2, 1};
        }
        if (i11 == 5) {
            return new int[]{0, 2, 1, 3, 4};
        }
        if (i11 == 6) {
            return new int[]{0, 2, 1, 5, 3, 4};
        }
        if (i11 == 7) {
            return new int[]{0, 2, 1, 6, 5, 3, 4};
        }
        if (i11 != 8) {
            return null;
        }
        return new int[]{0, 2, 1, 7, 5, 6, 3, 4};
    }

    public static int b(int i11) {
        int i12 = 0;
        while (i11 > 0) {
            i12++;
            i11 >>>= 1;
        }
        return i12;
    }

    private static long c(long j11, long j12) {
        return (long) Math.floor(Math.pow(j11, 1.0d / j12));
    }

    public static androidx.media3.common.x d(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            String str = (String) list.get(i11);
            String[] strArrP1 = a1.p1(str, UrlUtils.EQUAL_MARK);
            if (strArrP1.length != 2) {
                androidx.media3.common.util.u.h("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (strArrP1[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(x2.a.b(new androidx.media3.common.util.j0(Base64.decode(strArrP1[1], 0))));
                } catch (RuntimeException e11) {
                    androidx.media3.common.util.u.i("VorbisUtil", "Failed to parse vorbis picture", e11);
                }
            } else {
                arrayList.add(new c3.a(strArrP1[0], strArrP1[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new androidx.media3.common.x(arrayList);
    }

    public static ImmutableList e(byte[] bArr) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(bArr);
        j0Var.X(1);
        int i11 = 0;
        while (j0Var.a() > 0 && j0Var.j() == 255) {
            i11 += 255;
            j0Var.X(1);
        }
        int iH = i11 + j0Var.H();
        int i12 = 0;
        while (j0Var.a() > 0 && j0Var.j() == 255) {
            i12 += 255;
            j0Var.X(1);
        }
        int iH2 = i12 + j0Var.H();
        byte[] bArr2 = new byte[iH];
        int iF = j0Var.f();
        System.arraycopy(bArr, iF, bArr2, 0, iH);
        int i13 = iF + iH + iH2;
        int length = bArr.length - i13;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, i13, bArr3, 0, length);
        return ImmutableList.of(bArr2, bArr3);
    }

    private static void f(u0 u0Var) throws ParserException {
        int iD = u0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            int iD2 = u0Var.d(16);
            if (iD2 == 0) {
                u0Var.e(8);
                u0Var.e(16);
                u0Var.e(16);
                u0Var.e(6);
                u0Var.e(8);
                int iD3 = u0Var.d(4) + 1;
                for (int i12 = 0; i12 < iD3; i12++) {
                    u0Var.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = u0Var.d(5);
                int[] iArr = new int[iD4];
                int i13 = -1;
                for (int i14 = 0; i14 < iD4; i14++) {
                    int iD5 = u0Var.d(4);
                    iArr[i14] = iD5;
                    if (iD5 > i13) {
                        i13 = iD5;
                    }
                }
                int i15 = i13 + 1;
                int[] iArr2 = new int[i15];
                for (int i16 = 0; i16 < i15; i16++) {
                    iArr2[i16] = u0Var.d(3) + 1;
                    int iD6 = u0Var.d(2);
                    if (iD6 > 0) {
                        u0Var.e(8);
                    }
                    for (int i17 = 0; i17 < (1 << iD6); i17++) {
                        u0Var.e(8);
                    }
                }
                u0Var.e(2);
                int iD7 = u0Var.d(4);
                int i18 = 0;
                int i19 = 0;
                for (int i20 = 0; i20 < iD4; i20++) {
                    i18 += iArr2[iArr[i20]];
                    while (i19 < i18) {
                        u0Var.e(iD7);
                        i19++;
                    }
                }
            }
        }
    }

    private static void g(int i11, u0 u0Var) throws ParserException {
        int iD = u0Var.d(6) + 1;
        for (int i12 = 0; i12 < iD; i12++) {
            int iD2 = u0Var.d(16);
            if (iD2 != 0) {
                androidx.media3.common.util.u.c("VorbisUtil", "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = u0Var.c() ? u0Var.d(4) + 1 : 1;
                if (u0Var.c()) {
                    int iD4 = u0Var.d(8) + 1;
                    for (int i13 = 0; i13 < iD4; i13++) {
                        int i14 = i11 - 1;
                        u0Var.e(b(i14));
                        u0Var.e(b(i14));
                    }
                }
                if (u0Var.d(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i15 = 0; i15 < i11; i15++) {
                        u0Var.e(4);
                    }
                }
                for (int i16 = 0; i16 < iD3; i16++) {
                    u0Var.e(8);
                    u0Var.e(8);
                    u0Var.e(8);
                }
            }
        }
    }

    private static b[] h(u0 u0Var) {
        int iD = u0Var.d(6) + 1;
        b[] bVarArr = new b[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            bVarArr[i11] = new b(u0Var.c(), u0Var.d(16), u0Var.d(16), u0Var.d(8));
        }
        return bVarArr;
    }

    private static void i(u0 u0Var) throws ParserException {
        int iD = u0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            if (u0Var.d(16) > 2) {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            u0Var.e(24);
            u0Var.e(24);
            u0Var.e(24);
            int iD2 = u0Var.d(6) + 1;
            u0Var.e(8);
            int[] iArr = new int[iD2];
            for (int i12 = 0; i12 < iD2; i12++) {
                iArr[i12] = ((u0Var.c() ? u0Var.d(5) : 0) * 8) + u0Var.d(3);
            }
            for (int i13 = 0; i13 < iD2; i13++) {
                for (int i14 = 0; i14 < 8; i14++) {
                    if ((iArr[i13] & (1 << i14)) != 0) {
                        u0Var.e(8);
                    }
                }
            }
        }
    }

    public static a j(androidx.media3.common.util.j0 j0Var) {
        return k(j0Var, true, true);
    }

    public static a k(androidx.media3.common.util.j0 j0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            o(3, j0Var, false);
        }
        String strE = j0Var.E((int) j0Var.x());
        int length = strE.length();
        long jX = j0Var.x();
        String[] strArr = new String[(int) jX];
        int length2 = length + 15;
        for (int i11 = 0; i11 < jX; i11++) {
            String strE2 = j0Var.E((int) j0Var.x());
            strArr[i11] = strE2;
            length2 = length2 + 4 + strE2.length();
        }
        if (z11 && (j0Var.H() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new a(strE, strArr, length2 + 1);
    }

    public static c l(androidx.media3.common.util.j0 j0Var) throws ParserException {
        o(1, j0Var, false);
        int iY = j0Var.y();
        int iH = j0Var.H();
        int iY2 = j0Var.y();
        int iU = j0Var.u();
        if (iU <= 0) {
            iU = -1;
        }
        int iU2 = j0Var.u();
        if (iU2 <= 0) {
            iU2 = -1;
        }
        int iU3 = j0Var.u();
        if (iU3 <= 0) {
            iU3 = -1;
        }
        int iH2 = j0Var.H();
        return new c(iY, iH, iY2, iU, iU2, iU3, (int) Math.pow(2.0d, iH2 & 15), (int) Math.pow(2.0d, (iH2 & 240) >> 4), (j0Var.H() & 1) > 0, Arrays.copyOf(j0Var.e(), j0Var.g()));
    }

    public static b[] m(androidx.media3.common.util.j0 j0Var, int i11) throws ParserException {
        o(5, j0Var, false);
        int iH = j0Var.H() + 1;
        u0 u0Var = new u0(j0Var.e());
        u0Var.e(j0Var.f() * 8);
        for (int i12 = 0; i12 < iH; i12++) {
            n(u0Var);
        }
        int iD = u0Var.d(6) + 1;
        for (int i13 = 0; i13 < iD; i13++) {
            if (u0Var.d(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        f(u0Var);
        i(u0Var);
        g(i11, u0Var);
        b[] bVarArrH = h(u0Var);
        if (u0Var.c()) {
            return bVarArrH;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    private static void n(u0 u0Var) throws ParserException {
        long jC;
        if (u0Var.d(24) != 5653314) {
            throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + u0Var.b(), null);
        }
        int iD = u0Var.d(16);
        int iD2 = u0Var.d(24);
        int iD3 = 0;
        if (u0Var.c()) {
            u0Var.e(5);
            while (iD3 < iD2) {
                iD3 += u0Var.d(b(iD2 - iD3));
            }
        } else {
            boolean zC = u0Var.c();
            while (iD3 < iD2) {
                if (!zC) {
                    u0Var.e(5);
                } else if (u0Var.c()) {
                    u0Var.e(5);
                }
                iD3++;
            }
        }
        int iD4 = u0Var.d(4);
        if (iD4 > 2) {
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + iD4, null);
        }
        if (iD4 == 1 || iD4 == 2) {
            u0Var.e(32);
            u0Var.e(32);
            int iD5 = u0Var.d(4) + 1;
            u0Var.e(1);
            if (iD4 == 1) {
                jC = iD != 0 ? c(iD2, iD) : 0L;
            } else {
                jC = ((long) iD) * ((long) iD2);
            }
            u0Var.e((int) (jC * ((long) iD5)));
        }
    }

    public static boolean o(int i11, androidx.media3.common.util.j0 j0Var, boolean z10) throws ParserException {
        if (j0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + j0Var.a(), null);
        }
        if (j0Var.H() != i11) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i11), null);
        }
        if (j0Var.H() == 118 && j0Var.H() == 111 && j0Var.H() == 114 && j0Var.H() == 98 && j0Var.H() == 105 && j0Var.H() == 115) {
            return true;
        }
        if (z10) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }
}
