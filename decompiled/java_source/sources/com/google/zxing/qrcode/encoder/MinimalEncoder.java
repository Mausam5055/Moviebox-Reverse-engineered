package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import id.g;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class MinimalEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f33028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f33029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ErrorCorrectionLevel f33030d;

    private enum VersionSize {
        SMALL("version 1-9"),
        MEDIUM("version 10-26"),
        LARGE("version 27-40");

        private final String description;

        VersionSize(String str) {
            this.description = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.description;
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f33031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f33032b;

        static {
            int[] iArr = new int[Mode.values().length];
            f33032b = iArr;
            try {
                iArr[Mode.KANJI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33032b[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33032b[Mode.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33032b[Mode.BYTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33032b[Mode.ECI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[VersionSize.values().length];
            f33031a = iArr2;
            try {
                iArr2[VersionSize.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33031a[VersionSize.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33031a[VersionSize.LARGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Mode f33033a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f33034b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f33035c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f33036d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final b f33037e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f33038f;

        private b(Mode mode, int i11, int i12, int i13, b bVar, com.google.zxing.qrcode.decoder.g gVar) {
            this.f33033a = mode;
            this.f33034b = i11;
            Mode mode2 = Mode.BYTE;
            int i14 = (mode == mode2 || bVar == null) ? i12 : bVar.f33035c;
            this.f33035c = i14;
            this.f33036d = i13;
            this.f33037e = bVar;
            boolean z10 = false;
            int characterCountBits = bVar != null ? bVar.f33038f : 0;
            if ((mode == mode2 && bVar == null && i14 != 0) || (bVar != null && i14 != bVar.f33035c)) {
                z10 = true;
            }
            characterCountBits = (bVar == null || mode != bVar.f33033a || z10) ? characterCountBits + mode.getCharacterCountBits(gVar) + 4 : characterCountBits;
            int i15 = a.f33032b[mode.ordinal()];
            if (i15 == 1) {
                characterCountBits += 13;
            } else if (i15 == 2) {
                characterCountBits += i13 == 1 ? 6 : 11;
            } else if (i15 == 3) {
                characterCountBits += i13 != 1 ? i13 == 2 ? 7 : 10 : 4;
            } else if (i15 == 4) {
                characterCountBits += MinimalEncoder.this.f33029c.c(MinimalEncoder.this.f33027a.substring(i11, i13 + i11), i12).length * 8;
                if (z10) {
                    characterCountBits += 12;
                }
            }
            this.f33038f = characterCountBits;
        }

        /* synthetic */ b(MinimalEncoder minimalEncoder, Mode mode, int i11, int i12, int i13, b bVar, com.google.zxing.qrcode.decoder.g gVar, a aVar) {
            this(mode, i11, i12, i13, bVar, gVar);
        }
    }

    final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f33040a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.zxing.qrcode.decoder.g f33041b;

        final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Mode f33043a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f33044b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final int f33045c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final int f33046d;

            a(Mode mode, int i11, int i12, int i13) {
                this.f33043a = mode;
                this.f33044b = i11;
                this.f33045c = i12;
                this.f33046d = i13;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void d(id.a aVar) {
                aVar.c(this.f33043a.getBits(), 4);
                if (this.f33046d > 0) {
                    aVar.c(e(), this.f33043a.getCharacterCountBits(c.this.f33041b));
                }
                if (this.f33043a == Mode.ECI) {
                    aVar.c(MinimalEncoder.this.f33029c.e(this.f33045c), 8);
                } else if (this.f33046d > 0) {
                    String str = MinimalEncoder.this.f33027a;
                    int i11 = this.f33044b;
                    com.google.zxing.qrcode.encoder.b.c(str.substring(i11, this.f33046d + i11), this.f33043a, aVar, MinimalEncoder.this.f33029c.d(this.f33045c));
                }
            }

            private int e() {
                if (this.f33043a != Mode.BYTE) {
                    return this.f33046d;
                }
                g gVar = MinimalEncoder.this.f33029c;
                String str = MinimalEncoder.this.f33027a;
                int i11 = this.f33044b;
                return gVar.c(str.substring(i11, this.f33046d + i11), this.f33045c).length;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int f(com.google.zxing.qrcode.decoder.g gVar) {
                int iE;
                int i11;
                int characterCountBits = this.f33043a.getCharacterCountBits(gVar);
                int i12 = characterCountBits + 4;
                int i13 = a.f33032b[this.f33043a.ordinal()];
                if (i13 != 1) {
                    int i14 = 0;
                    if (i13 == 2) {
                        int i15 = this.f33046d;
                        i11 = i12 + ((i15 / 2) * 11);
                        if (i15 % 2 == 1) {
                            i14 = 6;
                        }
                    } else if (i13 == 3) {
                        int i16 = this.f33046d;
                        i11 = i12 + ((i16 / 3) * 10);
                        int i17 = i16 % 3;
                        if (i17 == 1) {
                            i14 = 4;
                        } else if (i17 == 2) {
                            i14 = 7;
                        }
                    } else {
                        if (i13 != 4) {
                            return i13 != 5 ? i12 : characterCountBits + 12;
                        }
                        iE = e() * 8;
                    }
                    return i11 + i14;
                }
                iE = this.f33046d * 13;
                return i12 + iE;
            }

            private String g(String str) {
                StringBuilder sb2 = new StringBuilder();
                for (int i11 = 0; i11 < str.length(); i11++) {
                    if (str.charAt(i11) < ' ' || str.charAt(i11) > '~') {
                        sb2.append('.');
                    } else {
                        sb2.append(str.charAt(i11));
                    }
                }
                return sb2.toString();
            }

            public String toString() {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f33043a);
                sb2.append('(');
                if (this.f33043a == Mode.ECI) {
                    sb2.append(MinimalEncoder.this.f33029c.d(this.f33045c).displayName());
                } else {
                    String str = MinimalEncoder.this.f33027a;
                    int i11 = this.f33044b;
                    sb2.append(g(str.substring(i11, this.f33046d + i11)));
                }
                sb2.append(')');
                return sb2.toString();
            }
        }

        c(com.google.zxing.qrcode.decoder.g gVar, b bVar) {
            int i11;
            int i12;
            int i13 = 0;
            boolean z10 = false;
            while (true) {
                i11 = 1;
                if (bVar == null) {
                    break;
                }
                int i14 = i13 + bVar.f33036d;
                b bVar2 = bVar.f33037e;
                boolean z11 = (bVar.f33033a == Mode.BYTE && bVar2 == null && bVar.f33035c != 0) || !(bVar2 == null || bVar.f33035c == bVar2.f33035c);
                z10 = z11 ? true : z10;
                if (bVar2 == null || bVar2.f33033a != bVar.f33033a || z11) {
                    this.f33040a.add(0, new a(bVar.f33033a, bVar.f33034b, bVar.f33035c, i14));
                    i14 = 0;
                }
                if (z11) {
                    this.f33040a.add(0, new a(Mode.ECI, bVar.f33034b, bVar.f33035c, 0));
                }
                bVar = bVar2;
                i13 = i14;
            }
            if (MinimalEncoder.this.f33028b) {
                a aVar = (a) this.f33040a.get(0);
                if (aVar != null) {
                    Mode mode = aVar.f33043a;
                    Mode mode2 = Mode.ECI;
                    if (mode != mode2 && z10) {
                        this.f33040a.add(0, new a(mode2, 0, 0, 0));
                    }
                }
                this.f33040a.add(((a) this.f33040a.get(0)).f33043a == Mode.ECI ? 1 : 0, new a(Mode.FNC1_FIRST_POSITION, 0, 0, 0));
            }
            int iJ = gVar.j();
            int i15 = a.f33031a[MinimalEncoder.m(gVar).ordinal()];
            if (i15 == 1) {
                i12 = 9;
            } else if (i15 != 2) {
                i11 = 27;
                i12 = 40;
            } else {
                i11 = 10;
                i12 = 26;
            }
            int iD = d(gVar);
            while (iJ < i12 && !com.google.zxing.qrcode.encoder.b.v(iD, com.google.zxing.qrcode.decoder.g.i(iJ), MinimalEncoder.this.f33030d)) {
                iJ++;
            }
            while (iJ > i11 && com.google.zxing.qrcode.encoder.b.v(iD, com.google.zxing.qrcode.decoder.g.i(iJ - 1), MinimalEncoder.this.f33030d)) {
                iJ--;
            }
            this.f33041b = com.google.zxing.qrcode.decoder.g.i(iJ);
        }

        private int d(com.google.zxing.qrcode.decoder.g gVar) {
            Iterator it = this.f33040a.iterator();
            int iF = 0;
            while (it.hasNext()) {
                iF += ((a) it.next()).f(gVar);
            }
            return iF;
        }

        void b(id.a aVar) {
            Iterator it = this.f33040a.iterator();
            while (it.hasNext()) {
                ((a) it.next()).d(aVar);
            }
        }

        int c() {
            return d(this.f33041b);
        }

        com.google.zxing.qrcode.decoder.g e() {
            return this.f33041b;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            a aVar = null;
            for (a aVar2 : this.f33040a) {
                if (aVar != null) {
                    sb2.append(",");
                }
                sb2.append(aVar2.toString());
                aVar = aVar2;
            }
            return sb2.toString();
        }
    }

    MinimalEncoder(String str, Charset charset, boolean z10, ErrorCorrectionLevel errorCorrectionLevel) {
        this.f33027a = str;
        this.f33028b = z10;
        this.f33029c = new g(str, charset, -1);
        this.f33030d = errorCorrectionLevel;
    }

    static c i(String str, com.google.zxing.qrcode.decoder.g gVar, Charset charset, boolean z10, ErrorCorrectionLevel errorCorrectionLevel) {
        return new MinimalEncoder(str, charset, z10, errorCorrectionLevel).h(gVar);
    }

    static int k(Mode mode) {
        int i11;
        if (mode == null || (i11 = a.f33032b[mode.ordinal()]) == 1) {
            return 0;
        }
        if (i11 == 2) {
            return 1;
        }
        if (i11 == 3) {
            return 2;
        }
        if (i11 == 4) {
            return 3;
        }
        throw new IllegalStateException("Illegal mode " + mode);
    }

    static com.google.zxing.qrcode.decoder.g l(VersionSize versionSize) {
        int i11 = a.f33031a[versionSize.ordinal()];
        if (i11 != 1) {
            return i11 != 2 ? com.google.zxing.qrcode.decoder.g.i(40) : com.google.zxing.qrcode.decoder.g.i(26);
        }
        return com.google.zxing.qrcode.decoder.g.i(9);
    }

    static VersionSize m(com.google.zxing.qrcode.decoder.g gVar) {
        if (gVar.j() <= 9) {
            return VersionSize.SMALL;
        }
        return gVar.j() <= 26 ? VersionSize.MEDIUM : VersionSize.LARGE;
    }

    static boolean n(char c11) {
        return com.google.zxing.qrcode.encoder.b.p(c11) != -1;
    }

    static boolean o(char c11) {
        return com.google.zxing.qrcode.encoder.b.s(String.valueOf(c11));
    }

    static boolean p(char c11) {
        return c11 >= '0' && c11 <= '9';
    }

    void e(b[][][] bVarArr, int i11, b bVar) {
        b[] bVarArr2 = bVarArr[i11 + bVar.f33036d][bVar.f33035c];
        int iK = k(bVar.f33033a);
        b bVar2 = bVarArr2[iK];
        if (bVar2 == null || bVar2.f33038f > bVar.f33038f) {
            bVarArr2[iK] = bVar;
        }
    }

    void f(com.google.zxing.qrcode.decoder.g gVar, b[][][] bVarArr, int i11, b bVar) {
        int i12;
        int iG = this.f33029c.g();
        int iF = this.f33029c.f();
        if (iF < 0 || !this.f33029c.a(this.f33027a.charAt(i11), iF)) {
            iF = 0;
        } else {
            iG = iF + 1;
        }
        int i13 = iG;
        for (int i14 = iF; i14 < i13; i14++) {
            if (this.f33029c.a(this.f33027a.charAt(i11), i14)) {
                e(bVarArr, i11, new b(this, Mode.BYTE, i11, i14, 1, bVar, gVar, null));
            }
        }
        Mode mode = Mode.KANJI;
        if (g(mode, this.f33027a.charAt(i11))) {
            e(bVarArr, i11, new b(this, mode, i11, 0, 1, bVar, gVar, null));
        }
        int length = this.f33027a.length();
        Mode mode2 = Mode.ALPHANUMERIC;
        if (g(mode2, this.f33027a.charAt(i11))) {
            int i15 = i11 + 1;
            e(bVarArr, i11, new b(this, mode2, i11, 0, (i15 >= length || !g(mode2, this.f33027a.charAt(i15))) ? 1 : 2, bVar, gVar, null));
        }
        Mode mode3 = Mode.NUMERIC;
        if (g(mode3, this.f33027a.charAt(i11))) {
            int i16 = i11 + 1;
            if (i16 >= length || !g(mode3, this.f33027a.charAt(i16))) {
                i12 = 1;
            } else {
                int i17 = i11 + 2;
                i12 = (i17 >= length || !g(mode3, this.f33027a.charAt(i17))) ? 2 : 3;
            }
            e(bVarArr, i11, new b(this, mode3, i11, 0, i12, bVar, gVar, null));
        }
    }

    boolean g(Mode mode, char c11) {
        int i11 = a.f33032b[mode.ordinal()];
        if (i11 == 1) {
            return o(c11);
        }
        if (i11 == 2) {
            return n(c11);
        }
        if (i11 != 3) {
            return i11 == 4;
        }
        return p(c11);
    }

    c h(com.google.zxing.qrcode.decoder.g gVar) throws WriterException {
        if (gVar != null) {
            c cVarJ = j(gVar);
            if (com.google.zxing.qrcode.encoder.b.v(cVarJ.c(), l(m(cVarJ.e())), this.f33030d)) {
                return cVarJ;
            }
            throw new WriterException("Data too big for version" + gVar);
        }
        com.google.zxing.qrcode.decoder.g[] gVarArr = {l(VersionSize.SMALL), l(VersionSize.MEDIUM), l(VersionSize.LARGE)};
        c[] cVarArr = {j(gVarArr[0]), j(gVarArr[1]), j(gVarArr[2])};
        int i11 = Integer.MAX_VALUE;
        int i12 = -1;
        for (int i13 = 0; i13 < 3; i13++) {
            int iC = cVarArr[i13].c();
            if (com.google.zxing.qrcode.encoder.b.v(iC, gVarArr[i13], this.f33030d) && iC < i11) {
                i12 = i13;
                i11 = iC;
            }
        }
        if (i12 >= 0) {
            return cVarArr[i12];
        }
        throw new WriterException("Data too big for any version");
    }

    c j(com.google.zxing.qrcode.decoder.g gVar) throws WriterException {
        int length = this.f33027a.length();
        b[][][] bVarArr = (b[][][]) Array.newInstance((Class<?>) b.class, length + 1, this.f33029c.g(), 4);
        f(gVar, bVarArr, 0, null);
        for (int i11 = 1; i11 <= length; i11++) {
            for (int i12 = 0; i12 < this.f33029c.g(); i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    b bVar = bVarArr[i11][i12][i13];
                    if (bVar != null && i11 < length) {
                        f(gVar, bVarArr, i11, bVar);
                    }
                }
            }
        }
        int i14 = -1;
        int i15 = Integer.MAX_VALUE;
        int i16 = -1;
        for (int i17 = 0; i17 < this.f33029c.g(); i17++) {
            for (int i18 = 0; i18 < 4; i18++) {
                b bVar2 = bVarArr[length][i17][i18];
                if (bVar2 != null && bVar2.f33038f < i15) {
                    i15 = bVar2.f33038f;
                    i14 = i17;
                    i16 = i18;
                }
            }
        }
        if (i14 >= 0) {
            return new c(gVar, bVarArr[length][i14][i16]);
        }
        throw new WriterException("Internal error: failed to encode \"" + this.f33027a + "\"");
    }
}
