package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import id.m;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MinimalEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char[] f32877a = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};

    enum Mode {
        ASCII,
        C40,
        TEXT,
        X12,
        EDF,
        B256
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f32879b;

        static {
            int[] iArr = new int[SymbolShapeHint.values().length];
            f32879b = iArr;
            try {
                iArr[SymbolShapeHint.FORCE_SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32879b[SymbolShapeHint.FORCE_RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            f32878a = iArr2;
            try {
                iArr2[Mode.ASCII.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32878a[Mode.B256.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32878a[Mode.C40.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32878a[Mode.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32878a[Mode.X12.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32878a[Mode.EDF.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final int[] f32880g = {3, 5, 8, 10, 12, 16, 18, 22, 30, 32, 36, 44, 49, 62, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 144, 174, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final int[] f32881h = {3, 5, 8, 12, 18, 22, 30, 36, 44, 62, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 144, 174, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final int[] f32882i = {5, 10, 16, 33, 32, 49};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f32883a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Mode f32884b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f32885c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f32886d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final b f32887e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f32888f;

        /* JADX WARN: Code duplicated, block: B:42:0x0073 A[PHI: r10
  0x0073: PHI (r10v12 int) = (r10v8 int), (r10v8 int), (r10v8 int), (r10v15 int), (r10v15 int), (r10v15 int) binds: [B:55:0x0093, B:57:0x0097, B:59:0x009b, B:38:0x006b, B:40:0x006f, B:41:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:43:0x0076 A[PHI: r10
  0x0076: PHI (r10v10 int) = (r10v5 int), (r10v5 int), (r10v5 int), (r10v8 int), (r10v15 int), (r10v15 int) binds: [B:69:0x00bb, B:71:0x00bf, B:73:0x00c3, B:52:0x008e, B:32:0x0060, B:34:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
        private b(c cVar, Mode mode, int i11, int i12, b bVar) {
            this.f32883a = cVar;
            this.f32884b = mode;
            this.f32885c = i11;
            this.f32886d = i12;
            this.f32887e = bVar;
            int iJ = bVar != null ? bVar.f32888f : 0;
            Mode modeT = t();
            switch (a.f32878a[mode.ordinal()]) {
                case 1:
                    iJ = (cVar.a(i11) || MinimalEncoder.k(cVar.charAt(i11), cVar.f())) ? iJ + 2 : iJ + 1;
                    if (modeT == Mode.C40 || modeT == Mode.TEXT || modeT == Mode.X12) {
                        iJ++;
                    }
                    break;
                case 2:
                    iJ = (modeT == Mode.B256 && g() != 250) ? iJ + 1 : iJ + 2;
                    if (modeT == Mode.ASCII) {
                        iJ++;
                    } else if (modeT == Mode.C40 || modeT == Mode.TEXT || modeT == Mode.X12) {
                        iJ += 2;
                    }
                    break;
                case 3:
                case 4:
                case 5:
                    Mode mode2 = Mode.X12;
                    if (mode == mode2) {
                        iJ += 2;
                    } else {
                        iJ += MinimalEncoder.j(cVar, i11, mode == Mode.C40, new int[1]) * 2;
                    }
                    if (modeT == Mode.ASCII || modeT == Mode.B256) {
                        iJ++;
                    } else if (modeT != mode && (modeT == Mode.C40 || modeT == Mode.TEXT || modeT == mode2)) {
                        iJ += 2;
                    }
                    break;
                case 6:
                    iJ = (modeT != Mode.ASCII && modeT != Mode.B256) ? (modeT != Mode.C40 && modeT != Mode.TEXT && modeT != Mode.X12) ? iJ + 3 : iJ + 5 : iJ + 4;
                    break;
            }
            this.f32888f = iJ;
        }

        /* synthetic */ b(c cVar, Mode mode, int i11, int i12, b bVar, a aVar) {
            this(cVar, mode, i11, i12, bVar);
        }

        static byte[] h(int i11) {
            return new byte[]{(byte) i11};
        }

        static byte[] i(int i11, int i12) {
            return new byte[]{(byte) i11, (byte) i12};
        }

        private static int j(boolean z10, int i11, char c11, int i12) {
            if (c11 == i12) {
                return 27;
            }
            if (z10) {
                if (c11 <= 31) {
                    return c11;
                }
                if (c11 == ' ') {
                    return 3;
                }
                if (c11 <= '/') {
                    return c11 - '!';
                }
                if (c11 <= '9') {
                    return c11 - ',';
                }
                if (c11 <= '@') {
                    return c11 - '+';
                }
                if (c11 <= 'Z') {
                    return c11 - '3';
                }
                if (c11 <= '_') {
                    return c11 - 'E';
                }
                return c11 <= 127 ? c11 - '`' : c11;
            }
            if (c11 != 0) {
                if (i11 == 0 && c11 <= 3) {
                    return c11 - 1;
                }
                if (i11 == 1 && c11 <= 31) {
                    return c11;
                }
                if (c11 == ' ') {
                    return 3;
                }
                if (c11 >= '!' && c11 <= '/') {
                    return c11 - '!';
                }
                if (c11 >= '0' && c11 <= '9') {
                    return c11 - ',';
                }
                if (c11 >= ':' && c11 <= '@') {
                    return c11 - '+';
                }
                if (c11 >= 'A' && c11 <= 'Z') {
                    return c11 - '@';
                }
                if (c11 >= '[' && c11 <= '_') {
                    return c11 - 'E';
                }
                if (c11 != '`') {
                    if (c11 < 'a' || c11 > 'z') {
                        return (c11 < '{' || c11 > 127) ? c11 : c11 - '`';
                    }
                    return c11 - 'S';
                }
            }
            return 0;
        }

        static int v(char c11, boolean z10, int i11) {
            if (!(z10 && MinimalEncoder.l(c11)) && (z10 || !MinimalEncoder.n(c11))) {
                return (!(z10 && MinimalEncoder.m(c11, i11)) && (z10 || !MinimalEncoder.o(c11, i11))) ? 2 : 1;
            }
            return 0;
        }

        private static int w(char c11) {
            if (c11 == '\r') {
                return 0;
            }
            if (c11 == '*') {
                return 1;
            }
            if (c11 == '>') {
                return 2;
            }
            if (c11 == ' ') {
                return 3;
            }
            if (c11 < '0' || c11 > '9') {
                return (c11 < 'A' || c11 > 'Z') ? c11 : c11 - '3';
            }
            return c11 - ',';
        }

        static void y(byte[] bArr, int i11, int i12, int i13, int i14) {
            int i15 = ((i12 & 255) * 1600) + ((i13 & 255) * 40) + (i14 & 255) + 1;
            bArr[i11] = (byte) (i15 / 256);
            bArr[i11 + 1] = (byte) (i15 % 256);
        }

        int g() {
            int i11 = 0;
            for (b bVar = this; bVar != null && bVar.f32884b == Mode.B256 && i11 <= 250; bVar = bVar.f32887e) {
                i11++;
            }
            return i11;
        }

        byte[] k(boolean z10, int i11) {
            ArrayList arrayList = new ArrayList();
            for (int i12 = 0; i12 < this.f32886d; i12++) {
                char cCharAt = this.f32883a.charAt(this.f32885c + i12);
                if ((z10 && g.h(cCharAt)) || (!z10 && g.j(cCharAt))) {
                    arrayList.add(Byte.valueOf((byte) j(z10, 0, cCharAt, i11)));
                } else if (MinimalEncoder.k(cCharAt, i11)) {
                    char c11 = (char) ((cCharAt & 255) - 128);
                    if (!(z10 && g.h(c11)) && (z10 || !g.j(c11))) {
                        arrayList.add((byte) 1);
                        arrayList.add((byte) 30);
                        int iV = v(c11, z10, i11);
                        arrayList.add(Byte.valueOf((byte) iV));
                        arrayList.add(Byte.valueOf((byte) j(z10, iV, c11, i11)));
                    } else {
                        arrayList.add((byte) 1);
                        arrayList.add((byte) 30);
                        arrayList.add(Byte.valueOf((byte) j(z10, 0, c11, i11)));
                    }
                } else {
                    int iV2 = v(cCharAt, z10, i11);
                    arrayList.add(Byte.valueOf((byte) iV2));
                    arrayList.add(Byte.valueOf((byte) j(z10, iV2, cCharAt, i11)));
                }
            }
            if (arrayList.size() % 3 != 0) {
                arrayList.add((byte) 0);
            }
            byte[] bArr = new byte[(arrayList.size() / 3) * 2];
            int i13 = 0;
            for (int i14 = 0; i14 < arrayList.size(); i14 += 3) {
                y(bArr, i13, ((Byte) arrayList.get(i14)).byteValue() & 255, ((Byte) arrayList.get(i14 + 1)).byteValue() & 255, ((Byte) arrayList.get(i14 + 2)).byteValue() & 255);
                i13 += 2;
            }
            return bArr;
        }

        int l(int i11) {
            return r(i11) - i11;
        }

        byte[] m() {
            switch (a.f32878a[this.f32884b.ordinal()]) {
                case 1:
                    if (this.f32883a.a(this.f32885c)) {
                        return i(241, this.f32883a.b(this.f32885c) + 1);
                    }
                    if (MinimalEncoder.k(this.f32883a.charAt(this.f32885c), this.f32883a.f())) {
                        return i(235, this.f32883a.charAt(this.f32885c) - 127);
                    }
                    if (this.f32886d == 2) {
                        return h(((this.f32883a.charAt(this.f32885c) - '0') * 10) + this.f32883a.charAt(this.f32885c + 1) + 82);
                    }
                    return this.f32883a.h(this.f32885c) ? h(232) : h(this.f32883a.charAt(this.f32885c) + 1);
                case 2:
                    return h(this.f32883a.charAt(this.f32885c));
                case 3:
                    return k(true, this.f32883a.f());
                case 4:
                    return k(false, this.f32883a.f());
                case 5:
                    return x();
                case 6:
                    return n();
                default:
                    return new byte[0];
            }
        }

        byte[] n() {
            int iCeil = (int) Math.ceil(((double) this.f32886d) / 4.0d);
            byte[] bArr = new byte[iCeil * 3];
            int i11 = this.f32885c;
            int iMin = Math.min((this.f32886d + i11) - 1, this.f32883a.length() - 1);
            for (int i12 = 0; i12 < iCeil; i12 += 3) {
                int[] iArr = new int[4];
                for (int i13 = 0; i13 < 4; i13++) {
                    if (i11 <= iMin) {
                        iArr[i13] = this.f32883a.charAt(i11) & '?';
                        i11++;
                    } else {
                        iArr[i13] = i11 == iMin + 1 ? 31 : 0;
                    }
                }
                int i14 = (iArr[0] << 18) | (iArr[1] << 12) | (iArr[2] << 6) | iArr[3];
                bArr[i12] = (byte) ((i14 >> 16) & 255);
                bArr[i12 + 1] = (byte) ((i14 >> 8) & 255);
                bArr[i12 + 2] = (byte) (i14 & 255);
            }
            return bArr;
        }

        Mode o() {
            if (this.f32884b == Mode.EDF) {
                if (this.f32886d < 4) {
                    return Mode.ASCII;
                }
                int iP = p();
                if (iP > 0 && l(this.f32888f + iP) <= 2 - iP) {
                    return Mode.ASCII;
                }
            }
            Mode mode = this.f32884b;
            if (mode == Mode.C40 || mode == Mode.TEXT || mode == Mode.X12) {
                if (this.f32885c + this.f32886d >= this.f32883a.length() && l(this.f32888f) == 0) {
                    return Mode.ASCII;
                }
                if (p() == 1 && l(this.f32888f + 1) == 0) {
                    return Mode.ASCII;
                }
            }
            return this.f32884b;
        }

        int p() {
            int length = this.f32883a.length();
            int i11 = this.f32885c + this.f32886d;
            int i12 = length - i11;
            if (i12 <= 4 && i11 < length) {
                if (i12 == 1) {
                    return MinimalEncoder.k(this.f32883a.charAt(i11), this.f32883a.f()) ? 0 : 1;
                }
                if (i12 == 2) {
                    if (!MinimalEncoder.k(this.f32883a.charAt(i11), this.f32883a.f())) {
                        int i13 = i11 + 1;
                        if (!MinimalEncoder.k(this.f32883a.charAt(i13), this.f32883a.f())) {
                            return (g.f(this.f32883a.charAt(i11)) && g.f(this.f32883a.charAt(i13))) ? 1 : 2;
                        }
                    }
                    return 0;
                }
                if (i12 == 3) {
                    if (g.f(this.f32883a.charAt(i11)) && g.f(this.f32883a.charAt(i11 + 1)) && !MinimalEncoder.k(this.f32883a.charAt(i11 + 2), this.f32883a.f())) {
                        return 2;
                    }
                    return (g.f(this.f32883a.charAt(i11 + 1)) && g.f(this.f32883a.charAt(i11 + 2)) && !MinimalEncoder.k(this.f32883a.charAt(i11), this.f32883a.f())) ? 2 : 0;
                }
                if (g.f(this.f32883a.charAt(i11)) && g.f(this.f32883a.charAt(i11 + 1)) && g.f(this.f32883a.charAt(i11 + 2)) && g.f(this.f32883a.charAt(i11 + 3))) {
                    return 2;
                }
            }
            return 0;
        }

        byte[] q() {
            int[] iArr = a.f32878a;
            switch (iArr[t().ordinal()]) {
                case 1:
                case 2:
                    int i11 = iArr[this.f32884b.ordinal()];
                    if (i11 == 2) {
                        return h(231);
                    }
                    if (i11 == 3) {
                        return h(230);
                    }
                    if (i11 == 4) {
                        return h(239);
                    }
                    if (i11 == 5) {
                        return h(238);
                    }
                    if (i11 == 6) {
                        return h(240);
                    }
                    break;
                case 3:
                case 4:
                case 5:
                    if (this.f32884b != t()) {
                        switch (iArr[this.f32884b.ordinal()]) {
                            case 1:
                                return h(254);
                            case 2:
                                return i(254, 231);
                            case 3:
                                return i(254, 230);
                            case 4:
                                return i(254, 239);
                            case 5:
                                return i(254, 238);
                            case 6:
                                return i(254, 240);
                        }
                    }
                    break;
            }
            return new byte[0];
        }

        int r(int i11) {
            int i12 = a.f32879b[this.f32883a.l().ordinal()];
            if (i12 == 1) {
                for (int i13 : f32881h) {
                    if (i13 >= i11) {
                        return i13;
                    }
                }
            } else if (i12 == 2) {
                for (int i14 : f32882i) {
                    if (i14 >= i11) {
                        return i14;
                    }
                }
            }
            for (int i15 : f32880g) {
                if (i15 >= i11) {
                    return i15;
                }
            }
            int[] iArr = f32880g;
            return iArr[iArr.length - 1];
        }

        Mode s() {
            return this.f32884b;
        }

        Mode t() {
            b bVar = this.f32887e;
            return bVar == null ? Mode.ASCII : bVar.o();
        }

        Mode u() {
            b bVar = this.f32887e;
            return bVar == null ? Mode.ASCII : bVar.f32884b;
        }

        byte[] x() {
            int i11 = (this.f32886d / 3) * 2;
            byte[] bArr = new byte[i11];
            for (int i12 = 0; i12 < i11; i12 += 2) {
                int i13 = (i12 / 2) * 3;
                y(bArr, i12, w(this.f32883a.charAt(this.f32885c + i13)), w(this.f32883a.charAt(this.f32885c + i13 + 1)), w(this.f32883a.charAt(this.f32885c + i13 + 2)));
            }
            return bArr;
        }
    }

    private static final class c extends m {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SymbolShapeHint f32889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f32890d;

        private c(String str, Charset charset, int i11, SymbolShapeHint symbolShapeHint, int i12) {
            super(str, charset, i11);
            this.f32889c = symbolShapeHint;
            this.f32890d = i12;
        }

        /* synthetic */ c(String str, Charset charset, int i11, SymbolShapeHint symbolShapeHint, int i12, a aVar) {
            this(str, charset, i11, symbolShapeHint, i12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int k() {
            return this.f32890d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SymbolShapeHint l() {
            return this.f32889c;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f32891a;

        d(b bVar) {
            int i11;
            c cVar = bVar.f32883a;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i12 = 0;
            int iC = ((bVar.f32884b == Mode.C40 || bVar.f32884b == Mode.TEXT || bVar.f32884b == Mode.X12) && bVar.o() != Mode.ASCII) ? c(b.h(254), arrayList) : 0;
            for (b bVar2 = bVar; bVar2 != null; bVar2 = bVar2.f32887e) {
                iC += c(bVar2.m(), arrayList);
                if (bVar2.f32887e == null || bVar2.u() != bVar2.s()) {
                    if (bVar2.s() == Mode.B256) {
                        if (iC <= 249) {
                            arrayList.add(0, Byte.valueOf((byte) iC));
                            i11 = iC + 1;
                        } else {
                            arrayList.add(0, Byte.valueOf((byte) (iC % 250)));
                            arrayList.add(0, Byte.valueOf((byte) ((iC / 250) + 249)));
                            i11 = iC + 2;
                        }
                        arrayList2.add(Integer.valueOf(arrayList.size()));
                        arrayList3.add(Integer.valueOf(i11));
                    }
                    c(bVar2.q(), arrayList);
                    iC = 0;
                }
            }
            if (cVar.k() == 5) {
                c(b.h(236), arrayList);
            } else if (cVar.k() == 6) {
                c(b.h(237), arrayList);
            }
            if (cVar.f() > 0) {
                c(b.h(232), arrayList);
            }
            for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                a(arrayList, arrayList.size() - ((Integer) arrayList2.get(i13)).intValue(), ((Integer) arrayList3.get(i13)).intValue());
            }
            int iR = bVar.r(arrayList.size());
            if (arrayList.size() < iR) {
                arrayList.add((byte) -127);
            }
            while (arrayList.size() < iR) {
                arrayList.add(Byte.valueOf((byte) d(arrayList.size() + 1)));
            }
            this.f32891a = new byte[arrayList.size()];
            while (true) {
                byte[] bArr = this.f32891a;
                if (i12 >= bArr.length) {
                    return;
                }
                bArr[i12] = ((Byte) arrayList.get(i12)).byteValue();
                i12++;
            }
        }

        static void a(List list, int i11, int i12) {
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = i11 + i13;
                int iByteValue = (((Byte) list.get(i14)).byteValue() & 255) + (((i14 + 1) * 149) % 255) + 1;
                if (iByteValue > 255) {
                    iByteValue += InputDeviceCompat.SOURCE_ANY;
                }
                list.set(i14, Byte.valueOf((byte) iByteValue));
            }
        }

        static int c(byte[] bArr, List list) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                list.add(0, Byte.valueOf(bArr[length]));
            }
            return bArr.length;
        }

        private static int d(int i11) {
            int i12 = (i11 * 149) % 253;
            int i13 = i12 + 130;
            return i13 <= 254 ? i13 : i12 - 124;
        }

        public byte[] b() {
            return this.f32891a;
        }
    }

    static void e(b[][] bVarArr, b bVar) {
        int i11 = bVar.f32885c + bVar.f32886d;
        if (bVarArr[i11][bVar.o().ordinal()] == null || bVarArr[i11][bVar.o().ordinal()].f32888f > bVar.f32888f) {
            bVarArr[i11][bVar.o().ordinal()] = bVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void f(c cVar, b[][] bVarArr, int i11, b bVar) {
        char c11 = 0;
        if (cVar.a(i11)) {
            e(bVarArr, new b(cVar, Mode.ASCII, i11, 1, bVar, null));
            return;
        }
        char cCharAt = cVar.charAt(i11);
        if (bVar == null || bVar.o() != Mode.EDF) {
            if (g.f(cCharAt) && cVar.g(i11, 2) && g.f(cVar.charAt(i11 + 1))) {
                e(bVarArr, new b(cVar, Mode.ASCII, i11, 2, bVar, null));
            } else {
                e(bVarArr, new b(cVar, Mode.ASCII, i11, 1, bVar, null));
            }
            Mode[] modeArr = {Mode.C40, Mode.TEXT};
            int i12 = 0;
            while (i12 < 2) {
                Mode mode = modeArr[i12];
                int[] iArr = new int[1];
                if (j(cVar, i11, mode == Mode.C40 ? 1 : c11, iArr) > 0) {
                    e(bVarArr, new b(cVar, mode, i11, iArr[c11], bVar, null));
                }
                i12++;
                c11 = 0;
            }
            if (cVar.g(i11, 3) && g.k(cVar.charAt(i11)) && g.k(cVar.charAt(i11 + 1)) && g.k(cVar.charAt(i11 + 2))) {
                e(bVarArr, new b(cVar, Mode.X12, i11, 3, bVar, null));
            }
            e(bVarArr, new b(cVar, Mode.B256, i11, 1, bVar, null));
        }
        int i13 = 0;
        while (i13 < 3) {
            int i14 = i11 + i13;
            if (!cVar.g(i14, 1) || !g.i(cVar.charAt(i14))) {
                break;
            }
            i13++;
            e(bVarArr, new b(cVar, Mode.EDF, i11, i13, bVar, null));
        }
        if (i13 == 3 && cVar.g(i11, 4) && g.i(cVar.charAt(i11 + 3))) {
            e(bVarArr, new b(cVar, Mode.EDF, i11, 4, bVar, null));
        }
    }

    static byte[] g(String str, Charset charset, int i11, SymbolShapeHint symbolShapeHint, int i12) {
        return i(new c(str, charset, i11, symbolShapeHint, i12, null)).b();
    }

    public static String h(String str, Charset charset, int i11, SymbolShapeHint symbolShapeHint) {
        int i12;
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            str = str.substring(7, str.length() - 2);
            i12 = 5;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            str = str.substring(7, str.length() - 2);
            i12 = 6;
        } else {
            i12 = 0;
        }
        return new String(g(str, charset, i11, symbolShapeHint, i12), StandardCharsets.ISO_8859_1);
    }

    static d i(c cVar) {
        int length = cVar.length();
        int i11 = 0;
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, length + 1, 6);
        f(cVar, bVarArr, 0, null);
        for (int i12 = 1; i12 <= length; i12++) {
            for (int i13 = 0; i13 < 6; i13++) {
                b bVar = bVarArr[i12][i13];
                if (bVar != null && i12 < length) {
                    f(cVar, bVarArr, i12, bVar);
                }
            }
            for (int i14 = 0; i14 < 6; i14++) {
                bVarArr[i12 - 1][i14] = null;
            }
        }
        int i15 = -1;
        int i16 = Integer.MAX_VALUE;
        while (i11 < 6) {
            b bVar2 = bVarArr[length][i11];
            if (bVar2 != null) {
                int i17 = (i11 < 1 || i11 > 3) ? bVar2.f32888f : bVar2.f32888f + 1;
                if (i17 < i16) {
                    i15 = i11;
                    i16 = i17;
                }
            }
            i11++;
        }
        if (i15 >= 0) {
            return new d(bVarArr[length][i15]);
        }
        throw new IllegalStateException("Failed to encode \"" + cVar + "\"");
    }

    static int j(c cVar, int i11, boolean z10, int[] iArr) {
        int i12 = 0;
        for (int i13 = i11; i13 < cVar.length(); i13++) {
            if (cVar.a(i13)) {
                iArr[0] = 0;
                return 0;
            }
            char cCharAt = cVar.charAt(i13);
            if ((z10 && g.h(cCharAt)) || (!z10 && g.j(cCharAt))) {
                i12++;
            } else if (k(cCharAt, cVar.f())) {
                int i14 = cCharAt & 255;
                i12 = (i14 < 128 || (!(z10 && g.h((char) (i14 + (-128)))) && (z10 || !g.j((char) (i14 + (-128)))))) ? i12 + 4 : i12 + 3;
            } else {
                i12 += 2;
            }
            if (i12 % 3 == 0 || ((i12 - 2) % 3 == 0 && i13 + 1 == cVar.length())) {
                iArr[0] = (i13 - i11) + 1;
                return (int) Math.ceil(((double) i12) / 3.0d);
            }
        }
        iArr[0] = 0;
        return 0;
    }

    static boolean k(char c11, int i11) {
        return c11 != i11 && c11 >= 128 && c11 <= 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(char c11) {
        return c11 <= 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(char c11, int i11) {
        for (char c12 : f32877a) {
            if (c12 == c11) {
                return true;
            }
        }
        return c11 == i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(char c11) {
        return l(c11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean o(char c11, int i11) {
        return m(c11, i11);
    }
}
