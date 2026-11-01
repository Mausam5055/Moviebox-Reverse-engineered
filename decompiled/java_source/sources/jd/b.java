package jd;

import com.google.zxing.NotFoundException;
import com.google.zxing.k;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f65992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f65993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f65994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f65995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f65996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f65997f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f65998g;

    public b(id.b bVar) {
        this(bVar, 10, bVar.n() / 2, bVar.k() / 2);
    }

    public b(id.b bVar, int i11, int i12, int i13) throws NotFoundException {
        this.f65992a = bVar;
        int iK = bVar.k();
        this.f65993b = iK;
        int iN = bVar.n();
        this.f65994c = iN;
        int i14 = i11 / 2;
        int i15 = i12 - i14;
        this.f65995d = i15;
        int i16 = i12 + i14;
        this.f65996e = i16;
        int i17 = i13 - i14;
        this.f65998g = i17;
        int i18 = i13 + i14;
        this.f65997f = i18;
        if (i17 < 0 || i15 < 0 || i18 >= iK || i16 >= iN) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private k[] a(k kVar, k kVar2, k kVar3, k kVar4) {
        float fC = kVar.c();
        float fD = kVar.d();
        float fC2 = kVar2.c();
        float fD2 = kVar2.d();
        float fC3 = kVar3.c();
        float fD3 = kVar3.d();
        float fC4 = kVar4.c();
        float fD4 = kVar4.d();
        return fC < ((float) this.f65994c) / 2.0f ? new k[]{new k(fC4 - 1.0f, fD4 + 1.0f), new k(fC2 + 1.0f, fD2 + 1.0f), new k(fC3 - 1.0f, fD3 - 1.0f), new k(fC + 1.0f, fD - 1.0f)} : new k[]{new k(fC4 + 1.0f, fD4 + 1.0f), new k(fC2 + 1.0f, fD2 - 1.0f), new k(fC3 - 1.0f, fD3 + 1.0f), new k(fC - 1.0f, fD - 1.0f)};
    }

    private boolean b(int i11, int i12, int i13, boolean z10) {
        if (z10) {
            while (i11 <= i12) {
                if (this.f65992a.g(i11, i13)) {
                    return true;
                }
                i11++;
            }
            return false;
        }
        while (i11 <= i12) {
            if (this.f65992a.g(i13, i11)) {
                return true;
            }
            i11++;
        }
        return false;
    }

    private k d(float f11, float f12, float f13, float f14) {
        int iC = a.c(a.a(f11, f12, f13, f14));
        float f15 = iC;
        float f16 = (f13 - f11) / f15;
        float f17 = (f14 - f12) / f15;
        for (int i11 = 0; i11 < iC; i11++) {
            float f18 = i11;
            int iC2 = a.c((f18 * f16) + f11);
            int iC3 = a.c((f18 * f17) + f12);
            if (this.f65992a.g(iC2, iC3)) {
                return new k(iC2, iC3);
            }
        }
        return null;
    }

    public k[] c() throws NotFoundException {
        int i11 = this.f65995d;
        int i12 = this.f65996e;
        int i13 = this.f65998g;
        int i14 = this.f65997f;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = true;
        while (z15) {
            boolean z16 = false;
            boolean zB = true;
            while (true) {
                if ((!zB && z11) || i12 >= this.f65994c) {
                    break;
                }
                zB = b(i13, i14, i12, false);
                if (zB) {
                    i12++;
                    z11 = true;
                    z16 = true;
                } else if (!z11) {
                    i12++;
                }
            }
            if (i12 < this.f65994c) {
                boolean zB2 = true;
                while (true) {
                    if ((!zB2 && z12) || i14 >= this.f65993b) {
                        break;
                    }
                    zB2 = b(i11, i12, i14, true);
                    if (zB2) {
                        i14++;
                        z12 = true;
                        z16 = true;
                    } else if (!z12) {
                        i14++;
                    }
                }
                if (i14 < this.f65993b) {
                    boolean zB3 = true;
                    while (true) {
                        if ((!zB3 && z13) || i11 < 0) {
                            break;
                        }
                        zB3 = b(i13, i14, i11, false);
                        if (zB3) {
                            i11--;
                            z13 = true;
                            z16 = true;
                        } else if (!z13) {
                            i11--;
                        }
                    }
                    if (i11 >= 0) {
                        z15 = z16;
                        boolean zB4 = true;
                        while (true) {
                            if ((!zB4 && z14) || i13 < 0) {
                                break;
                            }
                            zB4 = b(i11, i12, i13, true);
                            if (zB4) {
                                i13--;
                                z15 = true;
                                z14 = true;
                            } else if (!z14) {
                                i13--;
                            }
                        }
                        if (i13 < 0) {
                        }
                    }
                }
            }
            z10 = true;
            break;
        }
        if (z10) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i15 = i12 - i11;
        k kVarD = null;
        k kVarD2 = null;
        for (int i16 = 1; kVarD2 == null && i16 < i15; i16++) {
            kVarD2 = d(i11, i14 - i16, i11 + i16, i14);
        }
        if (kVarD2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        k kVarD3 = null;
        for (int i17 = 1; kVarD3 == null && i17 < i15; i17++) {
            kVarD3 = d(i11, i13 + i17, i11 + i17, i13);
        }
        if (kVarD3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        k kVarD4 = null;
        for (int i18 = 1; kVarD4 == null && i18 < i15; i18++) {
            kVarD4 = d(i12, i13 + i18, i12 - i18, i13);
        }
        if (kVarD4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i19 = 1; kVarD == null && i19 < i15; i19++) {
            kVarD = d(i12, i14 - i19, i12 - i19, i14);
        }
        if (kVarD != null) {
            return a(kVarD, kVarD2, kVarD4, kVarD3);
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
