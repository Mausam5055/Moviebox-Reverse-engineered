package g9;

import android.util.Base64;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.vorbis.VorbisComment;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h0 {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f63412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f63413b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long[] f63414c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f63415d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f63416e;

        public a(int i11, int i12, long[] jArr, int i13, boolean z10) {
            this.f63412a = i11;
            this.f63413b = i12;
            this.f63414c = jArr;
            this.f63415d = i13;
            this.f63416e = z10;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f63417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String[] f63418b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f63419c;

        public b(String str, String[] strArr, int i11) {
            this.f63417a = str;
            this.f63418b = strArr;
            this.f63419c = i11;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f63420a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f63421b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f63422c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f63423d;

        public c(boolean z10, int i11, int i12, int i13) {
            this.f63420a = z10;
            this.f63421b = i11;
            this.f63422c = i12;
            this.f63423d = i13;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f63424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f63425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f63426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f63427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f63428e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f63429f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f63430g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f63431h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f63432i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final byte[] f63433j;

        public d(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10, byte[] bArr) {
            this.f63424a = i11;
            this.f63425b = i12;
            this.f63426c = i13;
            this.f63427d = i14;
            this.f63428e = i15;
            this.f63429f = i16;
            this.f63430g = i17;
            this.f63431h = i18;
            this.f63432i = z10;
            this.f63433j = bArr;
        }
    }

    public static int a(int i11) {
        int i12 = 0;
        while (i11 > 0) {
            i12++;
            i11 >>>= 1;
        }
        return i12;
    }

    private static long b(long j11, long j12) {
        return (long) Math.floor(Math.pow(j11, 1.0d / j12));
    }

    public static Metadata c(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            String str = (String) list.get(i11);
            String[] strArrT0 = p0.T0(str, UrlUtils.EQUAL_MARK);
            if (strArrT0.length != 2) {
                com.google.android.exoplayer2.util.s.i("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (strArrT0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.fromPictureBlock(new com.google.android.exoplayer2.util.d0(Base64.decode(strArrT0[1], 0))));
                } catch (RuntimeException e11) {
                    com.google.android.exoplayer2.util.s.j("VorbisUtil", "Failed to parse vorbis picture", e11);
                }
            } else {
                arrayList.add(new VorbisComment(strArrT0[0], strArrT0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static a d(g0 g0Var) throws ParserException {
        if (g0Var.d(24) != 5653314) {
            throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + g0Var.b(), null);
        }
        int iD = g0Var.d(16);
        int iD2 = g0Var.d(24);
        long[] jArr = new long[iD2];
        boolean zC = g0Var.c();
        long jB = 0;
        if (zC) {
            int iD3 = g0Var.d(5) + 1;
            int i11 = 0;
            while (i11 < iD2) {
                int iD4 = g0Var.d(a(iD2 - i11));
                for (int i12 = 0; i12 < iD4 && i11 < iD2; i12++) {
                    jArr[i11] = iD3;
                    i11++;
                }
                iD3++;
            }
        } else {
            boolean zC2 = g0Var.c();
            for (int i13 = 0; i13 < iD2; i13++) {
                if (!zC2) {
                    jArr[i13] = g0Var.d(5) + 1;
                } else if (g0Var.c()) {
                    jArr[i13] = g0Var.d(5) + 1;
                } else {
                    jArr[i13] = 0;
                }
            }
        }
        int iD5 = g0Var.d(4);
        if (iD5 > 2) {
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + iD5, null);
        }
        if (iD5 == 1 || iD5 == 2) {
            g0Var.e(32);
            g0Var.e(32);
            int iD6 = g0Var.d(4) + 1;
            g0Var.e(1);
            if (iD5 != 1) {
                jB = ((long) iD2) * ((long) iD);
            } else if (iD != 0) {
                jB = b(iD2, iD);
            }
            g0Var.e((int) (jB * ((long) iD6)));
        }
        return new a(iD, iD2, jArr, iD5, zC);
    }

    private static void e(g0 g0Var) throws ParserException {
        int iD = g0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            int iD2 = g0Var.d(16);
            if (iD2 == 0) {
                g0Var.e(8);
                g0Var.e(16);
                g0Var.e(16);
                g0Var.e(6);
                g0Var.e(8);
                int iD3 = g0Var.d(4) + 1;
                for (int i12 = 0; i12 < iD3; i12++) {
                    g0Var.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = g0Var.d(5);
                int[] iArr = new int[iD4];
                int i13 = -1;
                for (int i14 = 0; i14 < iD4; i14++) {
                    int iD5 = g0Var.d(4);
                    iArr[i14] = iD5;
                    if (iD5 > i13) {
                        i13 = iD5;
                    }
                }
                int i15 = i13 + 1;
                int[] iArr2 = new int[i15];
                for (int i16 = 0; i16 < i15; i16++) {
                    iArr2[i16] = g0Var.d(3) + 1;
                    int iD6 = g0Var.d(2);
                    if (iD6 > 0) {
                        g0Var.e(8);
                    }
                    for (int i17 = 0; i17 < (1 << iD6); i17++) {
                        g0Var.e(8);
                    }
                }
                g0Var.e(2);
                int iD7 = g0Var.d(4);
                int i18 = 0;
                int i19 = 0;
                for (int i20 = 0; i20 < iD4; i20++) {
                    i18 += iArr2[iArr[i20]];
                    while (i19 < i18) {
                        g0Var.e(iD7);
                        i19++;
                    }
                }
            }
        }
    }

    private static void f(int i11, g0 g0Var) throws ParserException {
        int iD = g0Var.d(6) + 1;
        for (int i12 = 0; i12 < iD; i12++) {
            int iD2 = g0Var.d(16);
            if (iD2 != 0) {
                com.google.android.exoplayer2.util.s.c("VorbisUtil", "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = g0Var.c() ? g0Var.d(4) + 1 : 1;
                if (g0Var.c()) {
                    int iD4 = g0Var.d(8) + 1;
                    for (int i13 = 0; i13 < iD4; i13++) {
                        int i14 = i11 - 1;
                        g0Var.e(a(i14));
                        g0Var.e(a(i14));
                    }
                }
                if (g0Var.d(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i15 = 0; i15 < i11; i15++) {
                        g0Var.e(4);
                    }
                }
                for (int i16 = 0; i16 < iD3; i16++) {
                    g0Var.e(8);
                    g0Var.e(8);
                    g0Var.e(8);
                }
            }
        }
    }

    private static c[] g(g0 g0Var) {
        int iD = g0Var.d(6) + 1;
        c[] cVarArr = new c[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            cVarArr[i11] = new c(g0Var.c(), g0Var.d(16), g0Var.d(16), g0Var.d(8));
        }
        return cVarArr;
    }

    private static void h(g0 g0Var) throws ParserException {
        int iD = g0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            if (g0Var.d(16) > 2) {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            g0Var.e(24);
            g0Var.e(24);
            g0Var.e(24);
            int iD2 = g0Var.d(6) + 1;
            g0Var.e(8);
            int[] iArr = new int[iD2];
            for (int i12 = 0; i12 < iD2; i12++) {
                iArr[i12] = ((g0Var.c() ? g0Var.d(5) : 0) * 8) + g0Var.d(3);
            }
            for (int i13 = 0; i13 < iD2; i13++) {
                for (int i14 = 0; i14 < 8; i14++) {
                    if ((iArr[i13] & (1 << i14)) != 0) {
                        g0Var.e(8);
                    }
                }
            }
        }
    }

    public static b i(com.google.android.exoplayer2.util.d0 d0Var) {
        return j(d0Var, true, true);
    }

    public static b j(com.google.android.exoplayer2.util.d0 d0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            m(3, d0Var, false);
        }
        String strA = d0Var.A((int) d0Var.t());
        int length = strA.length();
        long jT = d0Var.t();
        String[] strArr = new String[(int) jT];
        int length2 = length + 15;
        for (int i11 = 0; i11 < jT; i11++) {
            String strA2 = d0Var.A((int) d0Var.t());
            strArr[i11] = strA2;
            length2 = length2 + 4 + strA2.length();
        }
        if (z11 && (d0Var.D() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new b(strA, strArr, length2 + 1);
    }

    public static d k(com.google.android.exoplayer2.util.d0 d0Var) throws ParserException {
        m(1, d0Var, false);
        int iU = d0Var.u();
        int iD = d0Var.D();
        int iU2 = d0Var.u();
        int iQ = d0Var.q();
        if (iQ <= 0) {
            iQ = -1;
        }
        int iQ2 = d0Var.q();
        if (iQ2 <= 0) {
            iQ2 = -1;
        }
        int iQ3 = d0Var.q();
        if (iQ3 <= 0) {
            iQ3 = -1;
        }
        int iD2 = d0Var.D();
        return new d(iU, iD, iU2, iQ, iQ2, iQ3, (int) Math.pow(2.0d, iD2 & 15), (int) Math.pow(2.0d, (iD2 & 240) >> 4), (d0Var.D() & 1) > 0, Arrays.copyOf(d0Var.d(), d0Var.f()));
    }

    public static c[] l(com.google.android.exoplayer2.util.d0 d0Var, int i11) throws ParserException {
        m(5, d0Var, false);
        int iD = d0Var.D() + 1;
        g0 g0Var = new g0(d0Var.d());
        g0Var.e(d0Var.e() * 8);
        for (int i12 = 0; i12 < iD; i12++) {
            d(g0Var);
        }
        int iD2 = g0Var.d(6) + 1;
        for (int i13 = 0; i13 < iD2; i13++) {
            if (g0Var.d(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(g0Var);
        h(g0Var);
        f(i11, g0Var);
        c[] cVarArrG = g(g0Var);
        if (g0Var.c()) {
            return cVarArrG;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    public static boolean m(int i11, com.google.android.exoplayer2.util.d0 d0Var, boolean z10) throws ParserException {
        if (d0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + d0Var.a(), null);
        }
        if (d0Var.D() != i11) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i11), null);
        }
        if (d0Var.D() == 118 && d0Var.D() == 111 && d0Var.D() == 114 && d0Var.D() == 98 && d0Var.D() == 105 && d0Var.D() == 115) {
            return true;
        }
        if (z10) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }
}
