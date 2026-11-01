package rd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.j;
import com.google.zxing.k;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import qd.p;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f74323i = {1, 10, 34, 70, 126};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f74324j = {4, 20, 48, 81};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f74325k = {0, 161, 961, 2015, 2715};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int[] f74326l = {0, 336, 1036, 1516};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int[] f74327m = {8, 6, 4, 3, 1};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int[] f74328n = {2, 4, 6, 8};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[][] f74329o = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f74330g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f74331h = new ArrayList();

    private static void r(Collection collection, d dVar) {
        if (dVar == null) {
            return;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            d dVar2 = (d) it.next();
            if (dVar2.b() == dVar.b()) {
                dVar2.e();
                return;
            }
        }
        collection.add(dVar);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025 A[PHI: r6 r7
  0x0025: PHI (r6v7 boolean) = (r6v2 boolean), (r6v10 boolean) binds: [B:23:0x0041, B:10:0x0023] A[DONT_GENERATE, DONT_INLINE]
  0x0025: PHI (r7v11 boolean) = (r7v2 boolean), (r7v14 boolean) binds: [B:23:0x0041, B:10:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:13:0x002a A[PHI: r6 r7
  0x002a: PHI (r6v5 boolean) = (r6v2 boolean), (r6v10 boolean) binds: [B:25:0x0044, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]
  0x002a: PHI (r7v5 boolean) = (r7v2 boolean), (r7v14 boolean) binds: [B:25:0x0044, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x002d A[PHI: r6 r7
  0x002d: PHI (r6v4 boolean) = (r6v2 boolean), (r6v10 boolean) binds: [B:25:0x0044, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]
  0x002d: PHI (r7v4 boolean) = (r7v2 boolean), (r7v14 boolean) binds: [B:25:0x0044, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    private void s(boolean z10, int i11) throws NotFoundException {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int iD = jd.a.d(m());
        int iD2 = jd.a.d(k());
        boolean z15 = true;
        if (z10) {
            if (iD > 12) {
                z12 = true;
                z11 = false;
            } else if (iD < 4) {
                z11 = true;
                z12 = false;
            } else {
                z11 = false;
                z12 = false;
            }
            if (iD2 > 12) {
                z14 = true;
                z13 = false;
            } else if (iD2 < 4) {
                z13 = true;
                z14 = false;
            } else {
                z13 = false;
                z14 = false;
            }
        } else {
            if (iD > 11) {
                z12 = true;
                z11 = false;
            } else if (iD < 5) {
                z11 = true;
                z12 = false;
            } else {
                z11 = false;
                z12 = false;
            }
            if (iD2 > 10) {
                z14 = true;
                z13 = false;
            } else if (iD2 < 4) {
                z13 = true;
                z14 = false;
            } else {
                z13 = false;
                z14 = false;
            }
        }
        int i12 = (iD + iD2) - i11;
        boolean z16 = (iD & 1) == z10;
        boolean z17 = (iD2 & 1) == 1;
        if (i12 != -1) {
            if (i12 != 0) {
                if (i12 != 1) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (z16) {
                    if (z17) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    z12 = true;
                } else {
                    if (!z17) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    z14 = true;
                }
            } else if (z16) {
                if (!z17) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iD < iD2) {
                    z14 = true;
                } else {
                    z13 = true;
                    z12 = true;
                }
            } else if (z17) {
                throw NotFoundException.getNotFoundInstance();
            }
            z15 = z11;
        } else if (z16) {
            if (z17) {
                throw NotFoundException.getNotFoundInstance();
            }
        } else {
            if (!z17) {
                throw NotFoundException.getNotFoundInstance();
            }
            z13 = true;
            z15 = z11;
        }
        if (z15) {
            if (z12) {
                throw NotFoundException.getNotFoundInstance();
            }
            a.o(m(), n());
        }
        if (z12) {
            a.h(m(), n());
        }
        if (z13) {
            if (z14) {
                throw NotFoundException.getNotFoundInstance();
            }
            a.o(k(), n());
        }
        if (z14) {
            a.h(k(), l());
        }
    }

    private static boolean t(d dVar, d dVar2) {
        int iA = (dVar.a() + (dVar2.a() * 16)) % 79;
        int iC = (dVar.d().c() * 9) + dVar2.d().c();
        if (iC > 72) {
            iC--;
        }
        if (iC > 8) {
            iC--;
        }
        return iA == iC;
    }

    private static j u(d dVar, d dVar2) {
        String strValueOf = String.valueOf((((long) dVar.b()) * 4537077) + ((long) dVar2.b()));
        StringBuilder sb2 = new StringBuilder(14);
        for (int length = 13 - strValueOf.length(); length > 0; length--) {
            sb2.append('0');
        }
        sb2.append(strValueOf);
        int i11 = 0;
        for (int i12 = 0; i12 < 13; i12++) {
            int iCharAt = sb2.charAt(i12) - '0';
            if ((i12 & 1) == 0) {
                iCharAt *= 3;
            }
            i11 += iCharAt;
        }
        int i13 = 10 - (i11 % 10);
        if (i13 == 10) {
            i13 = 0;
        }
        sb2.append(i13);
        k[] kVarArrA = dVar.d().a();
        k[] kVarArrA2 = dVar2.d().a();
        j jVar = new j(sb2.toString(), null, new k[]{kVarArrA[0], kVarArrA[1], kVarArrA2[0], kVarArrA2[1]}, BarcodeFormat.RSS_14);
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]e0");
        return jVar;
    }

    private b v(id.a aVar, c cVar, boolean z10) throws NotFoundException {
        int[] iArrI = i();
        Arrays.fill(iArrI, 0);
        if (z10) {
            p.g(aVar, cVar.b()[0], iArrI);
        } else {
            p.f(aVar, cVar.b()[1], iArrI);
            int i11 = 0;
            for (int length = iArrI.length - 1; i11 < length; length--) {
                int i12 = iArrI[i11];
                iArrI[i11] = iArrI[length];
                iArrI[length] = i12;
                i11++;
            }
        }
        int i13 = z10 ? 16 : 15;
        float fD = jd.a.d(iArrI) / i13;
        int[] iArrM = m();
        int[] iArrK = k();
        float[] fArrN = n();
        float[] fArrL = l();
        for (int i14 = 0; i14 < iArrI.length; i14++) {
            float f11 = iArrI[i14] / fD;
            int i15 = (int) (0.5f + f11);
            if (i15 < 1) {
                i15 = 1;
            } else if (i15 > 8) {
                i15 = 8;
            }
            int i16 = i14 / 2;
            if ((i14 & 1) == 0) {
                iArrM[i16] = i15;
                fArrN[i16] = f11 - i15;
            } else {
                iArrK[i16] = i15;
                fArrL[i16] = f11 - i15;
            }
        }
        s(z10, i13);
        int i17 = 0;
        int i18 = 0;
        for (int length2 = iArrM.length - 1; length2 >= 0; length2--) {
            int i19 = iArrM[length2];
            i17 = (i17 * 9) + i19;
            i18 += i19;
        }
        int i20 = 0;
        int i21 = 0;
        for (int length3 = iArrK.length - 1; length3 >= 0; length3--) {
            int i22 = iArrK[length3];
            i20 = (i20 * 9) + i22;
            i21 += i22;
        }
        int i23 = i17 + (i20 * 3);
        if (!z10) {
            if ((i21 & 1) != 0 || i21 > 10 || i21 < 4) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i24 = (10 - i21) / 2;
            int i25 = f74328n[i24];
            return new b((f.b(iArrK, 9 - i25, false) * f74324j[i24]) + f.b(iArrM, i25, true) + f74326l[i24], i23);
        }
        if ((i18 & 1) != 0 || i18 > 12 || i18 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i26 = (12 - i18) / 2;
        int i27 = f74327m[i26];
        return new b((f.b(iArrM, i27, false) * f74323i[i26]) + f.b(iArrK, 9 - i27, true) + f74325k[i26], i23);
    }

    private d w(id.a aVar, boolean z10, int i11, Map map) {
        try {
            c cVarY = y(aVar, i11, z10, x(aVar, z10));
            l lVar = map == null ? null : (l) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (lVar != null) {
                int[] iArrB = cVarY.b();
                float fM = ((iArrB[0] + iArrB[1]) - 1) / 2.0f;
                if (z10) {
                    fM = (aVar.m() - 1) - fM;
                }
                lVar.a(new k(fM, i11));
            }
            b bVarV = v(aVar, cVarY, true);
            b bVarV2 = v(aVar, cVarY, false);
            return new d((bVarV.b() * 1597) + bVarV2.b(), bVarV.a() + (bVarV2.a() * 4), cVarY);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private int[] x(id.a aVar, boolean z10) throws NotFoundException {
        int[] iArrJ = j();
        iArrJ[0] = 0;
        iArrJ[1] = 0;
        iArrJ[2] = 0;
        iArrJ[3] = 0;
        int iM = aVar.m();
        int i11 = 0;
        boolean z11 = false;
        while (i11 < iM) {
            z11 = !aVar.i(i11);
            if (z10 == z11) {
                break;
            }
            i11++;
        }
        int i12 = 0;
        int i13 = i11;
        while (i11 < iM) {
            if (aVar.i(i11) != z11) {
                iArrJ[i12] = iArrJ[i12] + 1;
            } else {
                if (i12 != 3) {
                    i12++;
                } else {
                    if (a.p(iArrJ)) {
                        return new int[]{i13, i11};
                    }
                    i13 += iArrJ[0] + iArrJ[1];
                    iArrJ[0] = iArrJ[2];
                    iArrJ[1] = iArrJ[3];
                    iArrJ[2] = 0;
                    iArrJ[3] = 0;
                    i12--;
                }
                iArrJ[i12] = 1;
                z11 = !z11;
            }
            i11++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private c y(id.a aVar, int i11, boolean z10, int[] iArr) throws NotFoundException {
        int iM;
        int i12;
        boolean zI = aVar.i(iArr[0]);
        int i13 = iArr[0] - 1;
        while (i13 >= 0 && zI != aVar.i(i13)) {
            i13--;
        }
        int i14 = i13 + 1;
        int i15 = iArr[0] - i14;
        int[] iArrJ = j();
        System.arraycopy(iArrJ, 0, iArrJ, 1, iArrJ.length - 1);
        iArrJ[0] = i15;
        int iQ = a.q(iArrJ, f74329o);
        int i16 = iArr[1];
        if (z10) {
            int iM2 = (aVar.m() - 1) - i14;
            iM = (aVar.m() - 1) - i16;
            i12 = iM2;
        } else {
            iM = i16;
            i12 = i14;
        }
        return new c(iQ, new int[]{i14, iArr[1]}, i12, iM, i11);
    }

    @Override // qd.p
    public j c(int i11, id.a aVar, Map map) throws NotFoundException {
        r(this.f74330g, w(aVar, false, i11, map));
        aVar.q();
        r(this.f74331h, w(aVar, true, i11, map));
        aVar.q();
        for (d dVar : this.f74330g) {
            if (dVar.c() > 1) {
                for (d dVar2 : this.f74331h) {
                    if (dVar2.c() > 1 && t(dVar, dVar2)) {
                        return u(dVar, dVar2);
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // qd.p, com.google.zxing.i
    public void reset() {
        this.f74330g.clear();
        this.f74331h.clear();
    }
}
