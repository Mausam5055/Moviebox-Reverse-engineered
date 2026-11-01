package com.google.zxing.qrcode.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f33011a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f33013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f33014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f33015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f33016f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f33017g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final l f33019i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f33012b = new ArrayList(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int[] f33018h = new int[3];

    b(id.b bVar, int i11, int i12, int i13, int i14, float f11, l lVar) {
        this.f33011a = bVar;
        this.f33013c = i11;
        this.f33014d = i12;
        this.f33015e = i13;
        this.f33016f = i14;
        this.f33017g = f11;
        this.f33019i = lVar;
    }

    private static float a(int[] iArr, int i11) {
        return (i11 - iArr[2]) - (iArr[1] / 2.0f);
    }

    private float b(int i11, int i12, int i13, int i14) {
        id.b bVar = this.f33011a;
        int iK = bVar.k();
        int[] iArr = this.f33018h;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i15 = i11;
        while (i15 >= 0 && bVar.g(i12, i15)) {
            int i16 = iArr[1];
            if (i16 > i13) {
                break;
            }
            iArr[1] = i16 + 1;
            i15--;
        }
        if (i15 < 0 || iArr[1] > i13) {
            return Float.NaN;
        }
        while (i15 >= 0 && !bVar.g(i12, i15)) {
            int i17 = iArr[0];
            if (i17 > i13) {
                break;
            }
            iArr[0] = i17 + 1;
            i15--;
        }
        if (iArr[0] > i13) {
            return Float.NaN;
        }
        int i18 = i11 + 1;
        while (i18 < iK && bVar.g(i12, i18)) {
            int i19 = iArr[1];
            if (i19 > i13) {
                break;
            }
            iArr[1] = i19 + 1;
            i18++;
        }
        if (i18 == iK || iArr[1] > i13) {
            return Float.NaN;
        }
        while (i18 < iK && !bVar.g(i12, i18)) {
            int i20 = iArr[2];
            if (i20 > i13) {
                break;
            }
            iArr[2] = i20 + 1;
            i18++;
        }
        int i21 = iArr[2];
        if (i21 <= i13 && Math.abs(((iArr[0] + iArr[1]) + i21) - i14) * 5 < i14 * 2 && d(iArr)) {
            return a(iArr, i18);
        }
        return Float.NaN;
    }

    private boolean d(int[] iArr) {
        float f11 = this.f33017g;
        float f12 = f11 / 2.0f;
        for (int i11 = 0; i11 < 3; i11++) {
            if (Math.abs(f11 - iArr[i11]) >= f12) {
                return false;
            }
        }
        return true;
    }

    private a e(int[] iArr, int i11, int i12) {
        int i13 = iArr[0] + iArr[1] + iArr[2];
        float fA = a(iArr, i12);
        float fB = b(i11, (int) fA, iArr[1] * 2, i13);
        if (Float.isNaN(fB)) {
            return null;
        }
        float f11 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        for (a aVar : this.f33012b) {
            if (aVar.f(f11, fB, fA)) {
                return aVar.g(fB, fA, f11);
            }
        }
        a aVar2 = new a(fA, fB, f11);
        this.f33012b.add(aVar2);
        l lVar = this.f33019i;
        if (lVar == null) {
            return null;
        }
        lVar.a(aVar2);
        return null;
    }

    a c() throws NotFoundException {
        a aVarE;
        a aVarE2;
        int i11 = this.f33013c;
        int i12 = this.f33016f;
        int i13 = this.f33015e + i11;
        int i14 = this.f33014d + (i12 / 2);
        int[] iArr = new int[3];
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = ((i15 & 1) == 0 ? (i15 + 1) / 2 : -((i15 + 1) / 2)) + i14;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i17 = i11;
            while (i17 < i13 && !this.f33011a.g(i17, i16)) {
                i17++;
            }
            int i18 = 0;
            while (i17 < i13) {
                if (!this.f33011a.g(i17, i16)) {
                    if (i18 == 1) {
                        i18++;
                    }
                    iArr[i18] = iArr[i18] + 1;
                } else if (i18 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i18 != 2) {
                    i18++;
                    iArr[i18] = iArr[i18] + 1;
                } else {
                    if (d(iArr) && (aVarE2 = e(iArr, i16, i17)) != null) {
                        return aVarE2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i18 = 1;
                }
                i17++;
            }
            if (d(iArr) && (aVarE = e(iArr, i16, i13)) != null) {
                return aVarE;
            }
        }
        if (this.f33012b.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (a) this.f33012b.get(0);
    }
}
