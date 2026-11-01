package h10;

import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.tn.lib.view.FlowLayout;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f64069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f64070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f64071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h[] f64072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f64073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f64074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f64075g;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[PHI: r8
  0x0060: PHI (r8v3 int) = (r8v0 int), (r8v1 int), (r8v4 int) binds: [B:12:0x0050, B:22:0x006c, B:18:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    e(byte[] bArr, int i11, boolean z10) {
        this.f64069a = bArr;
        if (z10) {
            int i12 = i11 + 6;
            if (B(i12) > 56) {
                throw new IllegalArgumentException("Unsupported class file major version " + ((int) B(i12)));
            }
        }
        int iH = H(i11 + 8);
        this.f64070b = new int[iH];
        this.f64071c = new String[iH];
        int i13 = i11 + 10;
        int i14 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i15 = 1;
        while (i15 < iH) {
            int i16 = i15 + 1;
            int i17 = i13 + 1;
            this.f64070b[i15] = i17;
            int iH2 = 3;
            switch (bArr[i13]) {
                case 1:
                    iH2 = 3 + H(i17);
                    if (iH2 > i14) {
                        i15 = i16;
                        i14 = iH2;
                    } else {
                        i15 = i16;
                    }
                    i13 += iH2;
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                    i15 = i16;
                    iH2 = 5;
                    i13 += iH2;
                    break;
                case 5:
                case 6:
                    i15 += 2;
                    iH2 = 9;
                    i13 += iH2;
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    i15 = i16;
                    i13 += iH2;
                    break;
                case 15:
                    iH2 = 4;
                    i15 = i16;
                    i13 += iH2;
                    break;
                case 17:
                    z11 = true;
                    i15 = i16;
                    iH2 = 5;
                    i13 += iH2;
                    break;
                case 18:
                    z12 = true;
                    i15 = i16;
                    iH2 = 5;
                    i13 += iH2;
                    break;
            }
        }
        this.f64074f = i14;
        this.f64075g = i13;
        this.f64072d = z11 ? new h[iH] : null;
        this.f64073e = (z11 || z12) ? k(i14) : null;
    }

    private void A(r rVar, i iVar, int i11, boolean z10) {
        int iR = i11 + 1;
        int i12 = this.f64069a[i11] & 255;
        rVar.a(i12, z10);
        char[] cArr = iVar.f64108c;
        for (int i13 = 0; i13 < i12; i13++) {
            int iH = H(iR);
            iR += 2;
            while (true) {
                int i14 = iH - 1;
                if (iH > 0) {
                    iR = r(rVar.z(i13, G(iR, cArr), z10), iR + 2, true, cArr);
                    iH = i14;
                }
            }
        }
    }

    private int C(int i11, boolean z10, boolean z11, i iVar) {
        int iK;
        int i12;
        char[] cArr = iVar.f64108c;
        q[] qVarArr = iVar.f64112g;
        if (z10) {
            iK = i11 + 1;
            i12 = this.f64069a[i11] & 255;
        } else {
            iVar.f64118m = -1;
            iK = i11;
            i12 = 255;
        }
        iVar.f64121p = 0;
        if (i12 < 64) {
            iVar.f64119n = 3;
            iVar.f64123r = 0;
        } else if (i12 < 128) {
            i12 -= 64;
            iK = K(iK, iVar.f64124s, 0, cArr, qVarArr);
            iVar.f64119n = 4;
            iVar.f64123r = 1;
        } else {
            if (i12 < 247) {
                throw new IllegalArgumentException();
            }
            int iH = H(iK);
            int i13 = iK + 2;
            if (i12 == 247) {
                iK = K(i13, iVar.f64124s, 0, cArr, qVarArr);
                iVar.f64119n = 4;
                iVar.f64123r = 1;
            } else {
                if (i12 >= 248 && i12 < 251) {
                    iVar.f64119n = 2;
                    int i14 = 251 - i12;
                    iVar.f64121p = i14;
                    iVar.f64120o -= i14;
                    iVar.f64123r = 0;
                } else if (i12 == 251) {
                    iVar.f64119n = 3;
                    iVar.f64123r = 0;
                } else if (i12 < 255) {
                    int i15 = i12 - 251;
                    int i16 = z11 ? iVar.f64120o : 0;
                    iK = i13;
                    int i17 = i15;
                    while (i17 > 0) {
                        iK = K(iK, iVar.f64122q, i16, cArr, qVarArr);
                        i17--;
                        i16++;
                    }
                    iVar.f64119n = 1;
                    iVar.f64121p = i15;
                    iVar.f64120o += i15;
                    iVar.f64123r = 0;
                } else {
                    int iH2 = H(i13);
                    int iK2 = iK + 4;
                    iVar.f64119n = 0;
                    iVar.f64121p = iH2;
                    iVar.f64120o = iH2;
                    for (int i18 = 0; i18 < iH2; i18++) {
                        iK2 = K(iK2, iVar.f64122q, i18, cArr, qVarArr);
                    }
                    int iH3 = H(iK2);
                    iK = iK2 + 2;
                    iVar.f64123r = iH3;
                    for (int i19 = 0; i19 < iH3; i19++) {
                        iK = K(iK, iVar.f64124s, i19, cArr, qVarArr);
                    }
                }
                iK = i13;
            }
            i12 = iH;
        }
        int i20 = iVar.f64118m + i12 + 1;
        iVar.f64118m = i20;
        d(i20, qVarArr);
        return iK;
    }

    private String D(int i11, char[] cArr) {
        return G(this.f64070b[H(i11)], cArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x006d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0070  */
    private int E(i iVar, int i11) {
        int i12;
        int i13;
        int iT = t(i11);
        int i14 = iT >>> 24;
        if (i14 != 0 && i14 != 1) {
            switch (i14) {
                case 16:
                case 17:
                case 18:
                case 23:
                    i12 = iT & InputDeviceCompat.SOURCE_ANY;
                    i13 = i11 + 3;
                    break;
                case 19:
                case 20:
                case 21:
                    i12 = iT & ViewCompat.MEASURED_STATE_MASK;
                    i13 = i11 + 1;
                    break;
                case 22:
                    i12 = iT & FlowLayout.SPACING_AUTO;
                    i13 = i11 + 2;
                    break;
                default:
                    switch (i14) {
                        case 64:
                        case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                            i12 = iT & ViewCompat.MEASURED_STATE_MASK;
                            int iH = H(i11 + 1);
                            i13 = i11 + 3;
                            iVar.f64115j = new q[iH];
                            iVar.f64116k = new q[iH];
                            iVar.f64117l = new int[iH];
                            for (int i15 = 0; i15 < iH; i15++) {
                                int iH2 = H(i13);
                                int iH3 = H(i13 + 2);
                                int iH4 = H(i13 + 4);
                                i13 += 6;
                                iVar.f64115j[i15] = d(iH2, iVar.f64112g);
                                iVar.f64116k[i15] = d(iH2 + iH3, iVar.f64112g);
                                iVar.f64117l[i15] = iH4;
                            }
                            break;
                        case 66:
                            i12 = iT & InputDeviceCompat.SOURCE_ANY;
                            i13 = i11 + 3;
                            break;
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            i12 = iT & ViewCompat.MEASURED_STATE_MASK;
                            i13 = i11 + 3;
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i12 = iT & (-16776961);
                            i13 = i11 + 4;
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                    break;
            }
        } else {
            i12 = iT & FlowLayout.SPACING_AUTO;
            i13 = i11 + 2;
        }
        iVar.f64113h = i12;
        int iL = l(i13);
        iVar.f64114i = iL == 0 ? null : new z(this.f64069a, i13);
        return i13 + 1 + (iL * 2);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004d A[FALL_THROUGH] */
    private int[] F(r rVar, i iVar, int i11, boolean z10) {
        int i12;
        char[] cArr = iVar.f64108c;
        int iH = H(i11);
        int[] iArr = new int[iH];
        int iR = i11 + 2;
        for (int i13 = 0; i13 < iH; i13++) {
            iArr[i13] = iR;
            int iT = t(iR);
            int i14 = iT >>> 24;
            if (i14 != 23) {
                switch (i14) {
                    default:
                        switch (i14) {
                            case 64:
                            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                int iH2 = H(iR + 1);
                                i12 = iR + 3;
                                while (true) {
                                    int i15 = iH2 - 1;
                                    if (iH2 > 0) {
                                        int iH3 = H(i12);
                                        int iH4 = H(i12 + 2);
                                        i12 += 6;
                                        d(iH3, iVar.f64112g);
                                        d(iH3 + iH4, iVar.f64112g);
                                        iH2 = i15;
                                    }
                                    break;
                                }
                                break;
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                break;
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                                i12 = iR + 4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    case 16:
                    case 17:
                    case 18:
                        i12 = iR + 3;
                        break;
                }
            } else {
                i12 = iR + 3;
            }
            int iL = l(i12);
            if (i14 == 66) {
                z zVar = iL != 0 ? new z(this.f64069a, i12) : null;
                int i16 = i12 + (iL * 2) + 1;
                iR = r(rVar.B(iT & InputDeviceCompat.SOURCE_ANY, zVar, G(i16, cArr), z10), i16 + 2, true, cArr);
            } else {
                iR = r(null, i12 + (iL * 2) + 3, true, cArr);
            }
        }
        return iArr;
    }

    private String I(int i11, int i12, char[] cArr) {
        int i13;
        int i14 = i12 + i11;
        byte[] bArr = this.f64069a;
        int i15 = 0;
        while (i11 < i14) {
            int i16 = i11 + 1;
            byte b11 = bArr[i11];
            if ((b11 & 128) == 0) {
                cArr[i15] = (char) (b11 & 127);
                i15++;
                i11 = i16;
            } else {
                if ((b11 & 224) == 192) {
                    i13 = i15 + 1;
                    i11 += 2;
                    cArr[i15] = (char) (((b11 & 31) << 6) + (bArr[i16] & Utf8.REPLACEMENT_BYTE));
                } else {
                    i13 = i15 + 1;
                    int i17 = i11 + 2;
                    i11 += 3;
                    cArr[i15] = (char) (((b11 & 15) << 12) + ((bArr[i16] & Utf8.REPLACEMENT_BYTE) << 6) + (bArr[i17] & Utf8.REPLACEMENT_BYTE));
                }
                i15 = i13;
            }
        }
        return new String(cArr, 0, i15);
    }

    private int K(int i11, Object[] objArr, int i12, char[] cArr, q[] qVarArr) {
        int i13 = i11 + 1;
        switch (this.f64069a[i11] & 255) {
            case 0:
                objArr[i12] = v.f64223a;
                return i13;
            case 1:
                objArr[i12] = v.f64224b;
                return i13;
            case 2:
                objArr[i12] = v.f64225c;
                return i13;
            case 3:
                objArr[i12] = v.f64226d;
                return i13;
            case 4:
                objArr[i12] = v.f64227e;
                return i13;
            case 5:
                objArr[i12] = v.f64228f;
                return i13;
            case 6:
                objArr[i12] = v.f64229g;
                return i13;
            case 7:
                objArr[i12] = m(i13, cArr);
                break;
            case 8:
                objArr[i12] = d(H(i13), qVarArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i11 + 3;
    }

    private void b(i iVar) {
        int i11;
        String str = iVar.f64111f;
        Object[] objArr = iVar.f64122q;
        int i12 = 0;
        if ((iVar.f64109d & 8) == 0) {
            if ("<init>".equals(iVar.f64110e)) {
                objArr[0] = v.f64229g;
            } else {
                objArr[0] = m(this.f64075g + 2, iVar.f64108c);
            }
            i12 = 1;
        }
        int i13 = 1;
        while (true) {
            int i14 = i13 + 1;
            char cCharAt = str.charAt(i13);
            if (cCharAt == 'F') {
                i11 = i12 + 1;
                objArr[i12] = v.f64225c;
            } else if (cCharAt != 'L') {
                if (cCharAt != 'S' && cCharAt != 'I') {
                    if (cCharAt == 'J') {
                        i11 = i12 + 1;
                        objArr[i12] = v.f64227e;
                    } else if (cCharAt != 'Z') {
                        if (cCharAt != '[') {
                            switch (cCharAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    i11 = i12 + 1;
                                    objArr[i12] = v.f64226d;
                                    break;
                                default:
                                    iVar.f64120o = i12;
                                    return;
                            }
                        } else {
                            while (str.charAt(i14) == '[') {
                                i14++;
                            }
                            if (str.charAt(i14) == 'L') {
                                do {
                                    i14++;
                                } while (str.charAt(i14) != ';');
                            }
                            int i15 = i14 + 1;
                            objArr[i12] = str.substring(i13, i15);
                            i13 = i15;
                            i12++;
                        }
                    }
                }
                i11 = i12 + 1;
                objArr[i12] = v.f64224b;
            } else {
                int i16 = i14;
                while (str.charAt(i16) != ';') {
                    i16++;
                }
                objArr[i12] = str.substring(i14, i16);
                i12++;
                i13 = i16 + 1;
            }
            i12 = i11;
            i13 = i14;
        }
    }

    private void c(int i11, q[] qVarArr) {
        if (qVarArr[i11] == null) {
            q qVarU = u(i11, qVarArr);
            qVarU.f64162a = (short) (qVarU.f64162a | 1);
        }
    }

    private q d(int i11, q[] qVarArr) {
        q qVarU = u(i11, qVarArr);
        qVarU.f64162a = (short) (qVarU.f64162a & (-2));
        return qVarU;
    }

    private int i(int[] iArr, int i11) {
        if (iArr == null || i11 >= iArr.length || l(iArr[i11]) < 67) {
            return -1;
        }
        return H(iArr[i11] + 1);
    }

    private c j(c[] cVarArr, String str, int i11, int i12, char[] cArr, int i13, q[] qVarArr) {
        for (c cVar : cVarArr) {
            if (cVar.f64062a.equals(str)) {
                return cVar.g(this, i11, i12, cArr, i13, qVarArr);
            }
        }
        return new c(str).g(this, i11, i12, null, -1, null);
    }

    private int[] k(int i11) {
        char[] cArr = new char[i11];
        int iE = e();
        for (int iH = H(iE - 2); iH > 0; iH--) {
            String strG = G(iE, cArr);
            int iT = t(iE + 2);
            int i12 = iE + 6;
            if ("BootstrapMethods".equals(strG)) {
                int iH2 = H(i12);
                int[] iArr = new int[iH2];
                int iH3 = iE + 8;
                for (int i13 = 0; i13 < iH2; i13++) {
                    iArr[i13] = iH3;
                    iH3 += (H(iH3 + 2) * 2) + 4;
                }
                return iArr;
            }
            iE = i12 + iT;
        }
        return null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 33481. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private void n(h10.r r39, h10.i r40, int r41) {
        /*
            Method dump skipped, instruction units count: 3348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h10.e.n(h10.r, h10.i, int):void");
    }

    private h p(int i11, char[] cArr) {
        h hVar = this.f64072d[i11];
        if (hVar != null) {
            return hVar;
        }
        int[] iArr = this.f64070b;
        int i12 = iArr[i11];
        int i13 = iArr[H(i12 + 2)];
        String strG = G(i13, cArr);
        String strG2 = G(i13 + 2, cArr);
        int i14 = this.f64073e[H(i12)];
        o oVar = (o) o(H(i14), cArr);
        int iH = H(i14 + 2);
        Object[] objArr = new Object[iH];
        int i15 = i14 + 4;
        for (int i16 = 0; i16 < iH; i16++) {
            objArr[i16] = o(H(i15), cArr);
            i15 += 2;
        }
        h[] hVarArr = this.f64072d;
        h hVar2 = new h(strG, strG2, oVar, objArr);
        hVarArr[i11] = hVar2;
        return hVar2;
    }

    /* JADX WARN: Code duplicated, block: B:98:0x020d  */
    private int q(a aVar, int i11, String str, char[] cArr) {
        int i12 = 0;
        if (aVar == null) {
            int i13 = this.f64069a[i11] & 255;
            if (i13 == 64) {
                return r(null, i11 + 3, true, cArr);
            }
            if (i13 != 91) {
                return i13 != 101 ? i11 + 3 : i11 + 5;
            }
            return r(null, i11 + 1, false, cArr);
        }
        int i14 = i11 + 1;
        int i15 = this.f64069a[i11] & 255;
        if (i15 == 64) {
            return r(aVar.b(str, G(i14, cArr)), i11 + 3, true, cArr);
        }
        if (i15 == 70) {
            aVar.a(str, o(H(i14), cArr));
        } else if (i15 == 83) {
            aVar.a(str, Short.valueOf((short) t(this.f64070b[H(i14)])));
        } else if (i15 == 99) {
            aVar.a(str, y.n(G(i14, cArr)));
        } else {
            if (i15 == 101) {
                aVar.e(str, G(i14, cArr), G(i11 + 3, cArr));
                return i11 + 5;
            }
            if (i15 == 115) {
                aVar.a(str, G(i14, cArr));
            } else if (i15 == 73 || i15 == 74) {
                aVar.a(str, o(H(i14), cArr));
            } else if (i15 == 90) {
                aVar.a(str, t(this.f64070b[H(i14)]) == 0 ? Boolean.FALSE : Boolean.TRUE);
            } else {
                if (i15 == 91) {
                    int iH = H(i14);
                    int i16 = i11 + 3;
                    if (iH == 0) {
                        return r(aVar.c(str), i11 + 1, false, cArr);
                    }
                    int i17 = this.f64069a[i16] & 255;
                    if (i17 == 70) {
                        float[] fArr = new float[iH];
                        while (i12 < iH) {
                            fArr[i12] = Float.intBitsToFloat(t(this.f64070b[H(i16 + 1)]));
                            i16 += 3;
                            i12++;
                        }
                        aVar.a(str, fArr);
                    } else if (i17 == 83) {
                        short[] sArr = new short[iH];
                        while (i12 < iH) {
                            sArr[i12] = (short) t(this.f64070b[H(i16 + 1)]);
                            i16 += 3;
                            i12++;
                        }
                        aVar.a(str, sArr);
                    } else if (i17 == 90) {
                        boolean[] zArr = new boolean[iH];
                        for (int i18 = 0; i18 < iH; i18++) {
                            zArr[i18] = t(this.f64070b[H(i16 + 1)]) != 0;
                            i16 += 3;
                        }
                        aVar.a(str, zArr);
                    } else if (i17 == 73) {
                        int[] iArr = new int[iH];
                        while (i12 < iH) {
                            iArr[i12] = t(this.f64070b[H(i16 + 1)]);
                            i16 += 3;
                            i12++;
                        }
                        aVar.a(str, iArr);
                    } else if (i17 != 74) {
                        switch (i17) {
                            case 66:
                                byte[] bArr = new byte[iH];
                                while (i12 < iH) {
                                    bArr[i12] = (byte) t(this.f64070b[H(i16 + 1)]);
                                    i16 += 3;
                                    i12++;
                                }
                                aVar.a(str, bArr);
                                break;
                            case 67:
                                char[] cArr2 = new char[iH];
                                while (i12 < iH) {
                                    cArr2[i12] = (char) t(this.f64070b[H(i16 + 1)]);
                                    i16 += 3;
                                    i12++;
                                }
                                aVar.a(str, cArr2);
                                break;
                            case 68:
                                double[] dArr = new double[iH];
                                while (i12 < iH) {
                                    dArr[i12] = Double.longBitsToDouble(v(this.f64070b[H(i16 + 1)]));
                                    i16 += 3;
                                    i12++;
                                }
                                aVar.a(str, dArr);
                                break;
                            default:
                                return r(aVar.c(str), i11 + 1, false, cArr);
                        }
                    } else {
                        long[] jArr = new long[iH];
                        while (i12 < iH) {
                            jArr[i12] = v(this.f64070b[H(i16 + 1)]);
                            i16 += 3;
                            i12++;
                        }
                        aVar.a(str, jArr);
                    }
                    return i16;
                }
                switch (i15) {
                    case 66:
                        aVar.a(str, Byte.valueOf((byte) t(this.f64070b[H(i14)])));
                        break;
                    case 67:
                        aVar.a(str, Character.valueOf((char) t(this.f64070b[H(i14)])));
                        break;
                    case 68:
                        aVar.a(str, o(H(i14), cArr));
                        break;
                    default:
                        throw new IllegalArgumentException();
                }
            }
        }
        return i11 + 3;
    }

    private int r(a aVar, int i11, boolean z10, char[] cArr) {
        int iH = H(i11);
        int iQ = i11 + 2;
        if (!z10) {
            while (true) {
                int i12 = iH - 1;
                if (iH <= 0) {
                    break;
                }
                iQ = q(aVar, iQ, null, cArr);
                iH = i12;
            }
        } else {
            while (true) {
                int i13 = iH - 1;
                if (iH <= 0) {
                    break;
                }
                iQ = q(aVar, iQ + 2, G(iQ, cArr), cArr);
                iH = i13;
            }
        }
        if (aVar != null) {
            aVar.d();
        }
        return iQ;
    }

    private int s(f fVar, i iVar, int i11) {
        int i12;
        int i13;
        i iVar2 = iVar;
        char[] cArr = iVar2.f64108c;
        int iH = H(i11);
        String strG = G(i11 + 2, cArr);
        String strG2 = G(i11 + 4, cArr);
        int iH2 = H(i11 + 6);
        int i14 = i11 + 8;
        int i15 = iH;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        c cVarJ = null;
        String strG3 = null;
        Object objO = null;
        while (true) {
            int i20 = iH2 - 1;
            if (iH2 <= 0) {
                break;
            }
            String strG4 = G(i14, cArr);
            int iT = t(i14 + 2);
            int i21 = i14 + 6;
            if ("ConstantValue".equals(strG4)) {
                int iH3 = H(i21);
                objO = iH3 == 0 ? null : o(iH3, cArr);
            } else if (RequestParameters.SIGNATURE.equals(strG4)) {
                strG3 = G(i21, cArr);
            } else {
                if ("Deprecated".equals(strG4)) {
                    i13 = 131072 | i15;
                } else {
                    if ("Synthetic".equals(strG4)) {
                        i13 = i15 | 4096;
                    } else if ("RuntimeVisibleAnnotations".equals(strG4)) {
                        i19 = i21;
                        i12 = i19;
                    } else if ("RuntimeVisibleTypeAnnotations".equals(strG4)) {
                        i17 = i21;
                        i12 = i17;
                    } else if ("RuntimeInvisibleAnnotations".equals(strG4)) {
                        i18 = i21;
                        i12 = i18;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strG4)) {
                        i16 = i21;
                        i12 = i16;
                    } else {
                        i12 = i21;
                        c cVar = cVarJ;
                        cVarJ = j(iVar2.f64106a, strG4, i12, iT, cArr, -1, null);
                        cVarJ.f64064c = cVar;
                        i18 = i18;
                        i19 = i19;
                        i16 = i16;
                        i17 = i17;
                    }
                    i14 = i12 + iT;
                    iVar2 = iVar;
                    iH2 = i20;
                }
                i15 = i13;
            }
            i12 = i21;
            i14 = i12 + iT;
            iVar2 = iVar;
            iH2 = i20;
        }
        c cVar2 = cVarJ;
        int i22 = i16;
        int i23 = i17;
        int i24 = i18;
        int i25 = i19;
        l lVarE = fVar.e(i15, strG, strG2, strG3, objO);
        if (lVarE == null) {
            return i14;
        }
        if (i25 != 0) {
            int iH4 = H(i25);
            int iR = i25 + 2;
            while (true) {
                int i26 = iH4 - 1;
                if (iH4 <= 0) {
                    break;
                }
                iR = r(lVarE.a(G(iR, cArr), true), iR + 2, true, cArr);
                iH4 = i26;
            }
        }
        if (i24 != 0) {
            int iH5 = H(i24);
            int iR2 = i24 + 2;
            while (true) {
                int i27 = iH5 - 1;
                if (iH5 <= 0) {
                    break;
                }
                iR2 = r(lVarE.a(G(iR2, cArr), false), iR2 + 2, true, cArr);
                iH5 = i27;
            }
        }
        if (i23 != 0) {
            int iH6 = H(i23);
            int iR3 = i23 + 2;
            while (true) {
                int i28 = iH6 - 1;
                if (iH6 <= 0) {
                    break;
                }
                int iE = E(iVar, iR3);
                iR3 = r(lVarE.d(iVar.f64113h, iVar.f64114i, G(iE, cArr), true), iE + 2, true, cArr);
                iH6 = i28;
            }
        }
        if (i22 != 0) {
            int iH7 = H(i22);
            int iR4 = i22 + 2;
            while (true) {
                int i29 = iH7 - 1;
                if (iH7 <= 0) {
                    break;
                }
                int iE2 = E(iVar, iR4);
                iR4 = r(lVarE.d(iVar.f64113h, iVar.f64114i, G(iE2, cArr), false), iE2 + 2, true, cArr);
                iH7 = i29;
            }
        }
        while (true) {
            c cVar3 = cVar2;
            if (cVar3 == null) {
                lVarE.c();
                return i14;
            }
            cVar2 = cVar3.f64064c;
            cVar3.f64064c = null;
            lVarE.b(cVar3);
        }
    }

    private int w(f fVar, i iVar, int i11) {
        int i12;
        int i13;
        char[] cArr = iVar.f64108c;
        iVar.f64109d = H(i11);
        iVar.f64110e = G(i11 + 2, cArr);
        int i14 = i11 + 4;
        iVar.f64111f = G(i14, cArr);
        int iH = H(i11 + 6);
        int i15 = i11 + 8;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int iH2 = 0;
        c cVar = null;
        boolean z10 = false;
        int i22 = 0;
        String[] strArr = null;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (true) {
            int i26 = iH - 1;
            if (iH <= 0) {
                break;
            }
            String strG = G(i15, cArr);
            int iT = t(i15 + 2);
            iH2 = iH2;
            int i27 = i15 + 6;
            int i28 = i16;
            if (!"Code".equals(strG)) {
                if ("Exceptions".equals(strG)) {
                    int iH3 = H(i27);
                    String[] strArr2 = new String[iH3];
                    int i29 = i15 + 8;
                    i12 = i17;
                    for (int i30 = 0; i30 < iH3; i30++) {
                        strArr2[i30] = m(i29, cArr);
                        i29 += 2;
                    }
                    strArr = strArr2;
                    i22 = i27;
                    i13 = i22;
                } else {
                    i12 = i17;
                    if (RequestParameters.SIGNATURE.equals(strG)) {
                        i13 = i27;
                        i16 = i28;
                        i17 = i12;
                        iH2 = H(i27);
                    } else if ("Deprecated".equals(strG)) {
                        iVar.f64109d |= 131072;
                        i13 = i27;
                    } else if ("RuntimeVisibleAnnotations".equals(strG)) {
                        i19 = i27;
                        i13 = i19;
                    } else if ("RuntimeVisibleTypeAnnotations".equals(strG)) {
                        i17 = i27;
                        i13 = i17;
                        iH2 = iH2;
                        i16 = i28;
                    } else if ("AnnotationDefault".equals(strG)) {
                        i21 = i27;
                        i13 = i21;
                    } else if ("Synthetic".equals(strG)) {
                        iVar.f64109d |= 4096;
                        i13 = i27;
                        iH2 = iH2;
                        i16 = i28;
                        i17 = i12;
                        z10 = true;
                    } else if ("RuntimeInvisibleAnnotations".equals(strG)) {
                        i18 = i27;
                        i13 = i18;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strG)) {
                        i16 = i27;
                        i13 = i16;
                        i17 = i12;
                    } else if ("RuntimeVisibleParameterAnnotations".equals(strG)) {
                        i23 = i27;
                        i13 = i23;
                    } else if ("RuntimeInvisibleParameterAnnotations".equals(strG)) {
                        i24 = i27;
                        i13 = i24;
                    } else if ("MethodParameters".equals(strG)) {
                        i20 = i27;
                        i13 = i20;
                    } else {
                        i13 = i27;
                        c cVarJ = j(iVar.f64106a, strG, i27, iT, cArr, -1, null);
                        cVarJ.f64064c = cVar;
                        cVar = cVarJ;
                        iH2 = iH2;
                        i16 = i28;
                        i17 = i12;
                        i18 = i18;
                        i19 = i19;
                        i20 = i20;
                        i21 = i21;
                    }
                }
                i16 = i28;
                i17 = i12;
            } else if ((iVar.f64107b & 1) == 0) {
                i25 = i27;
                i13 = i25;
                iH2 = iH2;
                i16 = i28;
            } else {
                i12 = i17;
                i13 = i27;
                i16 = i28;
                i17 = i12;
            }
            i15 = i13 + iT;
            iH = i26;
        }
        int i31 = i16;
        int i32 = i17;
        int i33 = i18;
        int i34 = i19;
        int i35 = i20;
        int i36 = i21;
        r rVarG = fVar.g(iVar.f64109d, iVar.f64110e, iVar.f64111f, iH2 == 0 ? null : J(iH2, cArr), strArr);
        if (rVarG == null) {
            return i15;
        }
        if (rVarG instanceof s) {
            if (((s) rVarG).H(this, i11, i15 - i11, z10, (iVar.f64109d & 131072) != 0, H(i14), iH2, i22)) {
                return i15;
            }
        }
        if (i35 != 0) {
            int iL = l(i35);
            int i37 = i35 + 1;
            while (true) {
                int i38 = iL - 1;
                if (iL <= 0) {
                    break;
                }
                rVarG.y(G(i37, cArr), H(i37 + 2));
                i37 += 4;
                iL = i38;
            }
        }
        if (i36 != 0) {
            a aVarC = rVarG.c();
            q(aVarC, i36, null, cArr);
            if (aVarC != null) {
                aVarC.d();
            }
        }
        if (i34 != 0) {
            int iH4 = H(i34);
            int iR = i34 + 2;
            while (true) {
                int i39 = iH4 - 1;
                if (iH4 <= 0) {
                    break;
                }
                iR = r(rVarG.b(G(iR, cArr), true), iR + 2, true, cArr);
                iH4 = i39;
            }
        }
        if (i33 != 0) {
            int iH5 = H(i33);
            int iR2 = i33 + 2;
            while (true) {
                int i40 = iH5 - 1;
                if (iH5 <= 0) {
                    break;
                }
                iR2 = r(rVarG.b(G(iR2, cArr), false), iR2 + 2, true, cArr);
                iH5 = i40;
            }
        }
        if (i32 != 0) {
            int iH6 = H(i32);
            int iR3 = i32 + 2;
            while (true) {
                int i41 = iH6 - 1;
                if (iH6 <= 0) {
                    break;
                }
                int iE = E(iVar, iR3);
                iR3 = r(rVarG.D(iVar.f64113h, iVar.f64114i, G(iE, cArr), true), iE + 2, true, cArr);
                iH6 = i41;
            }
        }
        if (i31 != 0) {
            int iH7 = H(i31);
            int iR4 = i31 + 2;
            while (true) {
                int i42 = iH7 - 1;
                if (iH7 <= 0) {
                    break;
                }
                int iE2 = E(iVar, iR4);
                iR4 = r(rVarG.D(iVar.f64113h, iVar.f64114i, G(iE2, cArr), false), iE2 + 2, true, cArr);
                iH7 = i42;
            }
        }
        int i43 = i23;
        if (i43 != 0) {
            A(rVarG, iVar, i43, true);
        }
        int i44 = i24;
        if (i44 != 0) {
            A(rVarG, iVar, i44, false);
        }
        while (cVar != null) {
            c cVar2 = cVar.f64064c;
            cVar.f64064c = null;
            rVarG.d(cVar);
            cVar = cVar2;
        }
        int i45 = i25;
        if (i45 != 0) {
            rVarG.e();
            n(rVarG, iVar, i45);
        }
        rVarG.f();
        return i15;
    }

    private void y(f fVar, i iVar, int i11, int i12, String str) {
        String[] strArr;
        char[] cArr = iVar.f64108c;
        int i13 = i11 + 6;
        t tVarH = fVar.h(x(i11, cArr), H(i11 + 2), G(i11 + 4, cArr));
        if (tVarH == null) {
            return;
        }
        if (str != null) {
            tVarH.c(str);
        }
        if (i12 != 0) {
            int iH = H(i12);
            int i14 = i12 + 2;
            while (true) {
                int i15 = iH - 1;
                if (iH <= 0) {
                    break;
                }
                tVarH.e(z(i14, cArr));
                i14 += 2;
                iH = i15;
            }
        }
        int iH2 = H(i13);
        int i16 = i11 + 8;
        while (true) {
            int i17 = iH2 - 1;
            if (iH2 <= 0) {
                break;
            }
            String strX = x(i16, cArr);
            int iH3 = H(i16 + 2);
            String strG = G(i16 + 4, cArr);
            i16 += 6;
            tVarH.g(strX, iH3, strG);
            iH2 = i17;
        }
        int iH4 = H(i16);
        int i18 = i16 + 2;
        while (true) {
            int i19 = iH4 - 1;
            String[] strArr2 = null;
            if (iH4 <= 0) {
                break;
            }
            String strZ = z(i18, cArr);
            int iH5 = H(i18 + 2);
            int iH6 = H(i18 + 4);
            i18 += 6;
            if (iH6 != 0) {
                strArr2 = new String[iH6];
                for (int i20 = 0; i20 < iH6; i20++) {
                    strArr2[i20] = x(i18, cArr);
                    i18 += 2;
                }
            }
            tVarH.b(strZ, iH5, strArr2);
            iH4 = i19;
        }
        int iH7 = H(i18);
        int i21 = i18 + 2;
        while (true) {
            int i22 = iH7 - 1;
            if (iH7 <= 0) {
                break;
            }
            String strZ2 = z(i21, cArr);
            int iH8 = H(i21 + 2);
            int iH9 = H(i21 + 4);
            i21 += 6;
            if (iH9 != 0) {
                strArr = new String[iH9];
                for (int i23 = 0; i23 < iH9; i23++) {
                    strArr[i23] = x(i21, cArr);
                    i21 += 2;
                }
            } else {
                strArr = null;
            }
            tVarH.d(strZ2, iH8, strArr);
            iH7 = i22;
        }
        int iH10 = H(i21);
        int i24 = i21 + 2;
        while (true) {
            int i25 = iH10 - 1;
            if (iH10 <= 0) {
                break;
            }
            tVarH.h(m(i24, cArr));
            i24 += 2;
            iH10 = i25;
        }
        int iH11 = H(i24);
        int i26 = i24 + 2;
        while (true) {
            int i27 = iH11 - 1;
            if (iH11 <= 0) {
                tVarH.a();
                return;
            }
            String strM = m(i26, cArr);
            int iH12 = H(i26 + 2);
            i26 += 4;
            String[] strArr3 = new String[iH12];
            for (int i28 = 0; i28 < iH12; i28++) {
                strArr3[i28] = m(i26, cArr);
                i26 += 2;
            }
            tVarH.f(strM, strArr3);
            iH11 = i27;
        }
    }

    public short B(int i11) {
        byte[] bArr = this.f64069a;
        return (short) ((bArr[i11 + 1] & 255) | ((bArr[i11] & 255) << 8));
    }

    public String G(int i11, char[] cArr) {
        int iH = H(i11);
        if (i11 == 0 || iH == 0) {
            return null;
        }
        return J(iH, cArr);
    }

    public int H(int i11) {
        byte[] bArr = this.f64069a;
        return (bArr[i11 + 1] & 255) | ((bArr[i11] & 255) << 8);
    }

    final String J(int i11, char[] cArr) {
        String[] strArr = this.f64071c;
        String str = strArr[i11];
        if (str != null) {
            return str;
        }
        int i12 = this.f64070b[i11];
        String strI = I(i12 + 2, H(i12), cArr);
        strArr[i11] = strI;
        return strI;
    }

    public void a(f fVar, c[] cVarArr, int i11) {
        int i12;
        i iVar = new i();
        iVar.f64106a = cVarArr;
        iVar.f64107b = i11;
        char[] cArr = new char[this.f64074f];
        iVar.f64108c = cArr;
        int i13 = this.f64075g;
        int iH = H(i13);
        String strM = m(i13 + 2, cArr);
        String strM2 = m(i13 + 4, cArr);
        int iH2 = H(i13 + 6);
        String[] strArr = new String[iH2];
        int i14 = i13 + 8;
        for (int i15 = 0; i15 < iH2; i15++) {
            strArr[i15] = m(i14, cArr);
            i14 += 2;
        }
        int iE = e();
        int i16 = iH;
        int iH3 = H(iE - 2);
        String strI = null;
        String strG = null;
        int i17 = 0;
        String strG2 = null;
        int i18 = 0;
        String strM3 = null;
        String strM4 = null;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        c cVar = null;
        int i25 = 0;
        while (iH3 > 0) {
            String strG3 = G(iE, cArr);
            int iT = t(iE + 2);
            int i26 = iE + 6;
            String str = strI;
            if ("SourceFile".equals(strG3)) {
                i12 = i26;
                strG = G(i26, cArr);
            } else if ("InnerClasses".equals(strG3)) {
                i25 = i26;
                i12 = i25;
            } else if ("EnclosingMethod".equals(strG3)) {
                i19 = i26;
                i12 = i19;
            } else if ("NestHost".equals(strG3)) {
                i12 = i26;
                strM4 = m(i26, cArr);
            } else if ("NestMembers".equals(strG3)) {
                i24 = i26;
                i12 = i24;
            } else {
                if (RequestParameters.SIGNATURE.equals(strG3)) {
                    strG2 = G(i26, cArr);
                } else if ("RuntimeVisibleAnnotations".equals(strG3)) {
                    i20 = i26;
                    i12 = i20;
                } else if ("RuntimeVisibleTypeAnnotations".equals(strG3)) {
                    i22 = i26;
                    i12 = i22;
                } else if ("Deprecated".equals(strG3)) {
                    i16 |= 131072;
                } else if ("Synthetic".equals(strG3)) {
                    i16 |= 4096;
                } else {
                    if ("SourceDebugExtension".equals(strG3)) {
                        strI = I(i26, iT, new char[iT]);
                        i12 = i26;
                    } else if ("RuntimeInvisibleAnnotations".equals(strG3)) {
                        i21 = i26;
                        i12 = i21;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strG3)) {
                        i23 = i26;
                        i12 = i23;
                    } else if ("Module".equals(strG3)) {
                        i17 = i26;
                        i12 = i17;
                    } else if ("ModuleMainClass".equals(strG3)) {
                        strM3 = m(i26, cArr);
                    } else if ("ModulePackages".equals(strG3)) {
                        i18 = i26;
                        i12 = i18;
                    } else if ("BootstrapMethods".equals(strG3)) {
                        i12 = i26;
                        i14 = i14;
                        iT = iT;
                        strArr = strArr;
                        strI = str;
                    } else {
                        i12 = i26;
                        i14 = i14;
                        iT = iT;
                        strArr = strArr;
                        c cVarJ = j(cVarArr, strG3, i12, iT, cArr, -1, null);
                        cVarJ.f64064c = cVar;
                        cVar = cVarJ;
                        i16 = i16;
                        strI = str;
                        strG = strG;
                    }
                    iE = i12 + iT;
                    iH3--;
                    strArr = strArr;
                    i14 = i14;
                }
                i12 = i26;
            }
            strI = str;
            iE = i12 + iT;
            iH3--;
            strArr = strArr;
            i14 = i14;
        }
        String str2 = strI;
        String str3 = strG;
        int i27 = i14;
        String[] strArr2 = strArr;
        c cVar2 = cVar;
        fVar.a(t(this.f64070b[1] - 7), i16, strM, strG2, strM2, strArr2);
        if ((i11 & 2) == 0 && (str3 != null || str2 != null)) {
            fVar.l(str3, str2);
        }
        if (i17 != 0) {
            y(fVar, iVar, i17, i18, strM3);
        }
        String str4 = strM4;
        if (str4 != null) {
            fVar.i(str4);
        }
        int i28 = i19;
        if (i28 != 0) {
            String strM5 = m(i28, cArr);
            int iH4 = H(i28 + 2);
            fVar.k(strM5, iH4 == 0 ? null : G(this.f64070b[iH4], cArr), iH4 == 0 ? null : G(this.f64070b[iH4] + 2, cArr));
        }
        int i29 = i20;
        if (i29 != 0) {
            int iH5 = H(i29);
            int iR = i29 + 2;
            while (true) {
                int i30 = iH5 - 1;
                if (iH5 <= 0) {
                    break;
                }
                iR = r(fVar.b(G(iR, cArr), true), iR + 2, true, cArr);
                iH5 = i30;
            }
        }
        int i31 = i21;
        if (i31 != 0) {
            int iH6 = H(i31);
            int iR2 = i31 + 2;
            while (true) {
                int i32 = iH6 - 1;
                if (iH6 <= 0) {
                    break;
                }
                iR2 = r(fVar.b(G(iR2, cArr), false), iR2 + 2, true, cArr);
                iH6 = i32;
            }
        }
        int i33 = i22;
        if (i33 != 0) {
            int iH7 = H(i33);
            int iR3 = i33 + 2;
            while (true) {
                int i34 = iH7 - 1;
                if (iH7 <= 0) {
                    break;
                }
                int iE2 = E(iVar, iR3);
                iR3 = r(fVar.m(iVar.f64113h, iVar.f64114i, G(iE2, cArr), true), iE2 + 2, true, cArr);
                iH7 = i34;
            }
        }
        int i35 = i23;
        if (i35 != 0) {
            int iH8 = H(i35);
            int iR4 = i35 + 2;
            while (true) {
                int i36 = iH8 - 1;
                if (iH8 <= 0) {
                    break;
                }
                int iE3 = E(iVar, iR4);
                iR4 = r(fVar.m(iVar.f64113h, iVar.f64114i, G(iE3, cArr), false), iE3 + 2, true, cArr);
                iH8 = i36;
            }
        }
        while (cVar2 != null) {
            c cVar3 = cVar2.f64064c;
            cVar2.f64064c = null;
            fVar.c(cVar2);
            cVar2 = cVar3;
        }
        int i37 = i24;
        if (i37 != 0) {
            int iH9 = H(i37);
            int i38 = i37 + 2;
            while (true) {
                int i39 = iH9 - 1;
                if (iH9 <= 0) {
                    break;
                }
                fVar.j(m(i38, cArr));
                i38 += 2;
                iH9 = i39;
            }
        }
        int i40 = i25;
        if (i40 != 0) {
            int iH10 = H(i40);
            int i41 = i40 + 2;
            while (true) {
                int i42 = iH10 - 1;
                if (iH10 <= 0) {
                    break;
                }
                fVar.f(m(i41, cArr), m(i41 + 2, cArr), G(i41 + 4, cArr), H(i41 + 6));
                i41 += 8;
                iH10 = i42;
            }
        }
        int iH11 = H(i27);
        int iS = i27 + 2;
        while (true) {
            int i43 = iH11 - 1;
            if (iH11 <= 0) {
                break;
            }
            iS = s(fVar, iVar, iS);
            iH11 = i43;
        }
        int iH12 = H(iS);
        int iW = iS + 2;
        while (true) {
            int i44 = iH12 - 1;
            if (iH12 <= 0) {
                fVar.d();
                return;
            } else {
                iW = w(fVar, iVar, iW);
                iH12 = i44;
            }
        }
    }

    final int e() {
        int i11 = this.f64075g;
        int iH = i11 + 8 + (H(i11 + 6) * 2);
        int iH2 = H(iH);
        int iT = iH + 2;
        while (true) {
            int i12 = iH2 - 1;
            if (iH2 <= 0) {
                break;
            }
            int iH3 = H(iT + 6);
            iT += 8;
            while (true) {
                int i13 = iH3 - 1;
                if (iH3 > 0) {
                    iT += t(iT + 2) + 6;
                    iH3 = i13;
                }
            }
            iH2 = i12;
        }
        int iH4 = H(iT);
        int iT2 = iT + 2;
        while (true) {
            int i14 = iH4 - 1;
            if (iH4 <= 0) {
                return iT2 + 2;
            }
            int iH5 = H(iT2 + 6);
            iT2 += 8;
            while (true) {
                int i15 = iH5 - 1;
                if (iH5 > 0) {
                    iT2 += t(iT2 + 2) + 6;
                    iH5 = i15;
                }
            }
            iH4 = i14;
        }
    }

    public int f(int i11) {
        return this.f64070b[i11];
    }

    public int g() {
        return this.f64070b.length;
    }

    public int h() {
        return this.f64074f;
    }

    public int l(int i11) {
        return this.f64069a[i11] & 255;
    }

    public String m(int i11, char[] cArr) {
        return D(i11, cArr);
    }

    public Object o(int i11, char[] cArr) {
        int i12 = this.f64070b[i11];
        byte b11 = this.f64069a[i12 - 1];
        switch (b11) {
            case 3:
                return Integer.valueOf(t(i12));
            case 4:
                return Float.valueOf(Float.intBitsToFloat(t(i12)));
            case 5:
                return Long.valueOf(v(i12));
            case 6:
                return Double.valueOf(Double.longBitsToDouble(v(i12)));
            case 7:
                return y.k(G(i12, cArr));
            case 8:
                return G(i12, cArr);
            default:
                switch (b11) {
                    case 15:
                        int iL = l(i12);
                        int i13 = this.f64070b[H(i12 + 1)];
                        int i14 = this.f64070b[H(i13 + 2)];
                        return new o(iL, m(i13, cArr), G(i14, cArr), G(i14 + 2, cArr), this.f64069a[i13 - 1] == 11);
                    case 16:
                        return y.j(G(i12, cArr));
                    case 17:
                        return p(i11, cArr);
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    public int t(int i11) {
        byte[] bArr = this.f64069a;
        return (bArr[i11 + 3] & 255) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11 + 2] & 255) << 8);
    }

    protected q u(int i11, q[] qVarArr) {
        if (qVarArr[i11] == null) {
            qVarArr[i11] = new q();
        }
        return qVarArr[i11];
    }

    public long v(int i11) {
        return (((long) t(i11)) << 32) | (((long) t(i11 + 4)) & 4294967295L);
    }

    public String x(int i11, char[] cArr) {
        return D(i11, cArr);
    }

    public String z(int i11, char[] cArr) {
        return D(i11, cArr);
    }
}
