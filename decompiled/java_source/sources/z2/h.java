package z2;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import androidx.media3.common.x;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends u2.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f79187b = new a() { // from class: z2.g
        @Override // z2.h.a
        public final boolean evaluate(int i11, int i12, int i13, int i14, int i15) {
            return h.A(i11, i12, i13, i14, i15);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f79188a;

    public interface a {
        boolean evaluate(int i11, int i12, int i13, int i14, int i15);
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f79189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f79190b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f79191c;

        public b(int i11, boolean z10, int i12) {
            this.f79189a = i11;
            this.f79190b = z10;
            this.f79191c = i12;
        }
    }

    public h() {
        this(null);
    }

    public h(a aVar) {
        this.f79188a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean A(int i11, int i12, int i13, int i14, int i15) {
        return false;
    }

    private static int B(j0 j0Var, int i11) {
        byte[] bArrE = j0Var.e();
        int iF = j0Var.f();
        int i12 = iF;
        while (true) {
            int i13 = i12 + 1;
            if (i13 >= iF + i11) {
                return i11;
            }
            if ((bArrE[i12] & 255) == 255 && bArrE[i13] == 0) {
                System.arraycopy(bArrE, i12 + 2, bArrE, i13, (i11 - (i12 - iF)) - 2);
                i11--;
            }
            i12 = i13;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c A[PHI: r3
  0x007c: PHI (r3v16 int) = (r3v5 int), (r3v19 int) binds: [B:42:0x0089, B:33:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    private static boolean C(j0 j0Var, int i11, int i12, boolean z10) {
        int iK;
        long jK;
        int iP;
        int i13;
        int iF = j0Var.f();
        while (true) {
            try {
                boolean z11 = true;
                if (j0Var.a() < i12) {
                    j0Var.W(iF);
                    return true;
                }
                if (i11 >= 3) {
                    iK = j0Var.q();
                    jK = j0Var.J();
                    iP = j0Var.P();
                } else {
                    iK = j0Var.K();
                    jK = j0Var.K();
                    iP = 0;
                }
                if (iK == 0 && jK == 0 && iP == 0) {
                    j0Var.W(iF);
                    return true;
                }
                if (i11 == 4 && !z10) {
                    if ((8421504 & jK) != 0) {
                        j0Var.W(iF);
                        return false;
                    }
                    jK = (((jK >> 24) & 255) << 21) | (jK & 255) | (((jK >> 8) & 255) << 7) | (((jK >> 16) & 255) << 14);
                }
                if (i11 == 4) {
                    i13 = (iP & 64) != 0 ? 1 : 0;
                    if ((iP & 1) == 0) {
                        z11 = false;
                    }
                } else if (i11 == 3) {
                    i13 = (iP & 32) != 0 ? 1 : 0;
                    if ((iP & 128) == 0) {
                        z11 = false;
                    }
                } else {
                    i13 = 0;
                    z11 = false;
                }
                if (z11) {
                    i13 += 4;
                }
                if (jK < i13) {
                    j0Var.W(iF);
                    return false;
                }
                if (j0Var.a() < jK) {
                    j0Var.W(iF);
                    return false;
                }
                j0Var.X((int) jK);
            } catch (Throwable th2) {
                j0Var.W(iF);
                throw th2;
            }
        }
    }

    private static byte[] d(byte[] bArr, int i11, int i12) {
        return i12 <= i11 ? a1.f10355f : Arrays.copyOfRange(bArr, i11, i12);
    }

    private static z2.a f(j0 j0Var, int i11, int i12) {
        int iZ;
        String str;
        int iH = j0Var.H();
        Charset charsetW = w(iH);
        int i13 = i11 - 1;
        byte[] bArr = new byte[i13];
        j0Var.l(bArr, 0, i13);
        if (i12 == 2) {
            str = "image/" + com.google.common.base.a.e(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            iZ = 2;
        } else {
            iZ = z(bArr, 0);
            String strE = com.google.common.base.a.e(new String(bArr, 0, iZ, StandardCharsets.ISO_8859_1));
            if (strE.indexOf(47) == -1) {
                str = "image/" + strE;
            } else {
                str = strE;
            }
        }
        int i14 = bArr[iZ + 1] & 255;
        int i15 = iZ + 2;
        int iY = y(bArr, i15, iH);
        return new z2.a(str, new String(bArr, i15, iY - i15, charsetW), i14, d(bArr, iY + v(iH), i13));
    }

    private static z2.b g(j0 j0Var, int i11, String str) {
        byte[] bArr = new byte[i11];
        j0Var.l(bArr, 0, i11);
        return new z2.b(str, bArr);
    }

    private static c h(j0 j0Var, int i11, int i12, boolean z10, int i13, a aVar) {
        int iF = j0Var.f();
        int iZ = z(j0Var.e(), iF);
        String str = new String(j0Var.e(), iF, iZ - iF, StandardCharsets.ISO_8859_1);
        j0Var.W(iZ + 1);
        int iQ = j0Var.q();
        int iQ2 = j0Var.q();
        long J = j0Var.J();
        long j11 = J == 4294967295L ? -1L : J;
        long J2 = j0Var.J();
        long j12 = J2 == 4294967295L ? -1L : J2;
        ArrayList arrayList = new ArrayList();
        int i14 = iF + i11;
        while (j0Var.f() < i14) {
            i iVarK = k(i12, j0Var, z10, i13, aVar);
            if (iVarK != null) {
                arrayList.add(iVarK);
            }
        }
        return new c(str, iQ, iQ2, j11, j12, (i[]) arrayList.toArray(new i[0]));
    }

    private static d i(j0 j0Var, int i11, int i12, boolean z10, int i13, a aVar) {
        int iF = j0Var.f();
        int iZ = z(j0Var.e(), iF);
        String str = new String(j0Var.e(), iF, iZ - iF, StandardCharsets.ISO_8859_1);
        j0Var.W(iZ + 1);
        int iH = j0Var.H();
        boolean z11 = (iH & 2) != 0;
        boolean z12 = (iH & 1) != 0;
        int iH2 = j0Var.H();
        String[] strArr = new String[iH2];
        for (int i14 = 0; i14 < iH2; i14++) {
            int iF2 = j0Var.f();
            int iZ2 = z(j0Var.e(), iF2);
            strArr[i14] = new String(j0Var.e(), iF2, iZ2 - iF2, StandardCharsets.ISO_8859_1);
            j0Var.W(iZ2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i15 = iF + i11;
        while (j0Var.f() < i15) {
            i iVarK = k(i12, j0Var, z10, i13, aVar);
            if (iVarK != null) {
                arrayList.add(iVarK);
            }
        }
        return new d(str, z11, z12, strArr, (i[]) arrayList.toArray(new i[0]));
    }

    private static e j(j0 j0Var, int i11) {
        if (i11 < 4) {
            return null;
        }
        int iH = j0Var.H();
        Charset charsetW = w(iH);
        byte[] bArr = new byte[3];
        j0Var.l(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i12 = i11 - 4;
        byte[] bArr2 = new byte[i12];
        j0Var.l(bArr2, 0, i12);
        int iY = y(bArr2, 0, iH);
        String str2 = new String(bArr2, 0, iY, charsetW);
        int iV = iY + v(iH);
        return new e(str, str2, p(bArr2, iV, y(bArr2, iV, iH), charsetW));
    }

    /* JADX WARN: Code duplicated, block: B:137:0x019b  */
    /* JADX WARN: Code duplicated, block: B:144:0x01ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:145:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:151:0x01c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:155:0x01de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:156:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:161:0x01ed A[Catch: all -> 0x011f, Exception -> 0x0122, OutOfMemoryError -> 0x0125, TRY_LEAVE, TryCatch #2 {Exception -> 0x0122, OutOfMemoryError -> 0x0125, all -> 0x011f, blocks: (B:91:0x0119, B:99:0x012a, B:106:0x0140, B:108:0x0148, B:116:0x0162, B:125:0x017a, B:136:0x0195, B:143:0x01a7, B:149:0x01b6, B:154:0x01ce, B:160:0x01e8, B:161:0x01ed), top: B:171:0x010f }] */
    private static i k(int i11, j0 j0Var, boolean z10, int i12, a aVar) {
        int iL;
        int i13;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        i iVarG;
        int iH = j0Var.H();
        int iH2 = j0Var.H();
        int iH3 = j0Var.H();
        int iH4 = i11 >= 3 ? j0Var.H() : 0;
        if (i11 == 4) {
            iL = j0Var.L();
            if (!z10) {
                iL = (((iL >> 24) & 255) << 21) | (iL & 255) | (((iL >> 8) & 255) << 7) | (((iL >> 16) & 255) << 14);
            }
        } else {
            iL = i11 == 3 ? j0Var.L() : j0Var.K();
        }
        int iB = iL;
        int iP = i11 >= 3 ? j0Var.P() : 0;
        i iVar = null;
        if (iH == 0 && iH2 == 0 && iH3 == 0 && iH4 == 0 && iB == 0 && iP == 0) {
            j0Var.W(j0Var.g());
            return null;
        }
        int iF = j0Var.f() + iB;
        if (iF > j0Var.g()) {
            u.h("Id3Decoder", "Frame size exceeds remaining tag data");
            j0Var.W(j0Var.g());
            return null;
        }
        if (aVar != null) {
            i13 = iF;
            if (!aVar.evaluate(i11, iH, iH2, iH3, iH4)) {
                j0Var.W(i13);
                return null;
            }
        } else {
            i13 = iF;
        }
        if (i11 == 3) {
            boolean z16 = (iP & 128) != 0;
            z13 = (iP & 64) != 0;
            z15 = z16;
            z14 = false;
            z12 = (iP & 32) != 0;
            z11 = z15;
        } else if (i11 == 4) {
            z12 = (iP & 64) != 0;
            boolean z17 = (iP & 8) != 0;
            boolean z18 = (iP & 4) != 0;
            z14 = (iP & 2) != 0;
            z15 = (iP & 1) != 0;
            z11 = z17;
            z13 = z18;
        } else {
            z11 = false;
            z12 = false;
            z13 = false;
            z14 = false;
            z15 = false;
        }
        if (z11 || z13) {
            u.h("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
            j0Var.W(i13);
            return null;
        }
        if (z12) {
            iB--;
            j0Var.X(1);
        }
        if (z15) {
            iB -= 4;
            j0Var.X(4);
        }
        if (z14) {
            iB = B(j0Var, iB);
        }
        try {
            if (iH == 84 && iH2 == 88 && iH3 == 88 && (i11 == 2 || iH4 == 88)) {
                iVarG = s(j0Var, iB);
            } else if (iH == 84) {
                iVarG = q(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
            } else if (iH == 87 && iH2 == 88 && iH3 == 88 && (i11 == 2 || iH4 == 88)) {
                iVarG = u(j0Var, iB);
            } else if (iH == 87) {
                iVarG = t(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
            } else if (iH == 80 && iH2 == 82 && iH3 == 73 && iH4 == 86) {
                iVarG = o(j0Var, iB);
            } else if (iH == 71 && iH2 == 69 && iH3 == 79 && (iH4 == 66 || i11 == 2)) {
                iVarG = l(j0Var, iB);
            } else if (i11 == 2) {
                if (iH == 80 && iH2 == 73 && iH3 == 67) {
                    iVarG = f(j0Var, iB, i11);
                } else if (iH != 67 && iH2 == 79 && iH3 == 77 && (iH4 == 77 || i11 == 2)) {
                    iVarG = j(j0Var, iB);
                } else if (iH != 67 && iH2 == 72 && iH3 == 65 && iH4 == 80) {
                    iVarG = h(j0Var, iB, i11, z10, i12, aVar);
                } else if (iH != 67 && iH2 == 84 && iH3 == 79 && iH4 == 67) {
                    iVarG = i(j0Var, iB, i11, z10, i12, aVar);
                } else if (iH != 77 && iH2 == 76 && iH3 == 76 && iH4 == 84) {
                    iVarG = n(j0Var, iB);
                } else {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                }
            } else if (iH == 65 && iH2 == 80 && iH3 == 73 && iH4 == 67) {
                iVarG = f(j0Var, iB, i11);
            } else if (iH != 67) {
                if (iH != 67) {
                    if (iH != 67) {
                        if (iH != 77) {
                            iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                        } else {
                            iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                        }
                    } else if (iH != 77) {
                        iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                    } else {
                        iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                    }
                } else if (iH != 67) {
                    if (iH != 77) {
                        iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                    } else {
                        iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                    }
                } else if (iH != 77) {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                } else {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                }
            } else if (iH != 67) {
                if (iH != 67) {
                    if (iH != 77) {
                        iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                    } else {
                        iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                    }
                } else if (iH != 77) {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                } else {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                }
            } else if (iH != 67) {
                if (iH != 77) {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                } else {
                    iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
                }
            } else if (iH != 77) {
                iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
            } else {
                iVarG = g(j0Var, iB, x(i11, iH, iH2, iH3, iH4));
            }
            j0Var.W(i13);
            iVar = iVarG;
            e = null;
        } catch (Exception e11) {
            e = e11;
        } catch (OutOfMemoryError e12) {
            e = e12;
        } finally {
            j0Var.W(i13);
        }
        if (iVar == null) {
            u.i("Id3Decoder", "Failed to decode frame: id=" + x(i11, iH, iH2, iH3, iH4) + ", frameSize=" + iB, e);
        }
        return iVar;
    }

    private static f l(j0 j0Var, int i11) {
        int iH = j0Var.H();
        Charset charsetW = w(iH);
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        j0Var.l(bArr, 0, i12);
        int iZ = z(bArr, 0);
        String strU = y.u(new String(bArr, 0, iZ, StandardCharsets.ISO_8859_1));
        int i13 = iZ + 1;
        int iY = y(bArr, i13, iH);
        String strP = p(bArr, i13, iY, charsetW);
        int iV = iY + v(iH);
        int iY2 = y(bArr, iV, iH);
        return new f(strU, strP, p(bArr, iV, iY2, charsetW), d(bArr, iY2 + v(iH), i12));
    }

    private static b m(j0 j0Var) {
        boolean z10 = false;
        if (j0Var.a() < 10) {
            u.h("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int iK = j0Var.K();
        if (iK != 4801587) {
            u.h("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(iK)));
            return null;
        }
        int iH = j0Var.H();
        j0Var.X(1);
        int iH2 = j0Var.H();
        int iG = j0Var.G();
        if (iH == 2) {
            if ((iH2 & 64) != 0) {
                u.h("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (iH == 3) {
            if ((iH2 & 64) != 0) {
                int iQ = j0Var.q();
                j0Var.X(iQ);
                iG -= iQ + 4;
            }
        } else {
            if (iH != 4) {
                u.h("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iH);
                return null;
            }
            if ((iH2 & 64) != 0) {
                int iG2 = j0Var.G();
                j0Var.X(iG2 - 4);
                iG -= iG2;
            }
            if ((iH2 & 16) != 0) {
                iG -= 10;
            }
        }
        if (iH < 4 && (iH2 & 128) != 0) {
            z10 = true;
        }
        return new b(iH, z10, iG);
    }

    private static l n(j0 j0Var, int i11) {
        int iP = j0Var.P();
        int iK = j0Var.K();
        int iK2 = j0Var.K();
        int iH = j0Var.H();
        int iH2 = j0Var.H();
        i0 i0Var = new i0();
        i0Var.m(j0Var);
        int i12 = ((i11 - 10) * 8) / (iH + iH2);
        int[] iArr = new int[i12];
        int[] iArr2 = new int[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            int iH3 = i0Var.h(iH);
            int iH4 = i0Var.h(iH2);
            iArr[i13] = iH3;
            iArr2[i13] = iH4;
        }
        return new l(iP, iK, iK2, iArr, iArr2);
    }

    private static m o(j0 j0Var, int i11) {
        byte[] bArr = new byte[i11];
        j0Var.l(bArr, 0, i11);
        int iZ = z(bArr, 0);
        return new m(new String(bArr, 0, iZ, StandardCharsets.ISO_8859_1), d(bArr, iZ + 1, i11));
    }

    private static String p(byte[] bArr, int i11, int i12, Charset charset) {
        return (i12 <= i11 || i12 > bArr.length) ? "" : new String(bArr, i11, i12 - i11, charset);
    }

    private static n q(j0 j0Var, int i11, String str) {
        if (i11 < 1) {
            return null;
        }
        int iH = j0Var.H();
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        j0Var.l(bArr, 0, i12);
        return new n(str, null, r(bArr, iH, 0));
    }

    private static ImmutableList r(byte[] bArr, int i11, int i12) {
        if (i12 >= bArr.length) {
            return ImmutableList.of("");
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int iY = y(bArr, i12, i11);
        while (i12 < iY) {
            aVarBuilder.a(new String(bArr, i12, iY - i12, w(i11)));
            i12 = v(i11) + iY;
            iY = y(bArr, i12, i11);
        }
        ImmutableList immutableListE = aVarBuilder.e();
        return immutableListE.isEmpty() ? ImmutableList.of("") : immutableListE;
    }

    private static n s(j0 j0Var, int i11) {
        if (i11 < 1) {
            return null;
        }
        int iH = j0Var.H();
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        j0Var.l(bArr, 0, i12);
        int iY = y(bArr, 0, iH);
        return new n("TXXX", new String(bArr, 0, iY, w(iH)), r(bArr, iH, iY + v(iH)));
    }

    private static o t(j0 j0Var, int i11, String str) {
        byte[] bArr = new byte[i11];
        j0Var.l(bArr, 0, i11);
        return new o(str, null, new String(bArr, 0, z(bArr, 0), StandardCharsets.ISO_8859_1));
    }

    private static o u(j0 j0Var, int i11) {
        if (i11 < 1) {
            return null;
        }
        int iH = j0Var.H();
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        j0Var.l(bArr, 0, i12);
        int iY = y(bArr, 0, iH);
        String str = new String(bArr, 0, iY, w(iH));
        int iV = iY + v(iH);
        return new o("WXXX", str, p(bArr, iV, z(bArr, iV), StandardCharsets.ISO_8859_1));
    }

    private static int v(int i11) {
        return (i11 == 0 || i11 == 3) ? 1 : 2;
    }

    private static Charset w(int i11) {
        if (i11 == 1) {
            return StandardCharsets.UTF_16;
        }
        if (i11 != 2) {
            return i11 != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8;
        }
        return StandardCharsets.UTF_16BE;
    }

    private static String x(int i11, int i12, int i13, int i14, int i15) {
        return i11 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15));
    }

    private static int y(byte[] bArr, int i11, int i12) {
        int iZ = z(bArr, i11);
        if (i12 == 0 || i12 == 3) {
            return iZ;
        }
        while (iZ < bArr.length - 1) {
            if ((iZ - i11) % 2 == 0 && bArr[iZ + 1] == 0) {
                return iZ;
            }
            iZ = z(bArr, iZ + 1);
        }
        return bArr.length;
    }

    private static int z(byte[] bArr, int i11) {
        while (i11 < bArr.length) {
            if (bArr[i11] == 0) {
                return i11;
            }
            i11++;
        }
        return bArr.length;
    }

    @Override // u2.c
    protected x b(u2.b bVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    public x e(byte[] bArr, int i11) {
        ArrayList arrayList = new ArrayList();
        j0 j0Var = new j0(bArr, i11);
        b bVarM = m(j0Var);
        if (bVarM == null) {
            return null;
        }
        int iF = j0Var.f();
        int i12 = bVarM.f79189a == 2 ? 6 : 10;
        int iB = bVarM.f79191c;
        if (bVarM.f79190b) {
            iB = B(j0Var, bVarM.f79191c);
        }
        j0Var.V(iF + iB);
        boolean z10 = false;
        if (!C(j0Var, bVarM.f79189a, i12, false)) {
            if (bVarM.f79189a != 4 || !C(j0Var, 4, i12, true)) {
                u.h("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + bVarM.f79189a);
                return null;
            }
            z10 = true;
        }
        while (j0Var.a() >= i12) {
            i iVarK = k(bVarM.f79189a, j0Var, z10, i12, this.f79188a);
            if (iVarK != null) {
                arrayList.add(iVarK);
            }
        }
        return new x(arrayList);
    }
}
