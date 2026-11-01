package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static final void a(char c11, ArrayList arrayList, float[] fArr, int i11) {
        if (c11 == 'z' || c11 == 'Z') {
            arrayList.add(e.b.f4788c);
            return;
        }
        if (c11 == 'm') {
            c(arrayList, fArr, i11);
            return;
        }
        if (c11 == 'M') {
            b(arrayList, fArr, i11);
            return;
        }
        int i12 = 0;
        if (c11 == 'l') {
            int i13 = i11 - 2;
            while (i12 <= i13) {
                arrayList.add(new e.m(fArr[i12], fArr[i12 + 1]));
                i12 += 2;
            }
            return;
        }
        if (c11 == 'L') {
            int i14 = i11 - 2;
            while (i12 <= i14) {
                arrayList.add(new e.C0049e(fArr[i12], fArr[i12 + 1]));
                i12 += 2;
            }
            return;
        }
        if (c11 == 'h') {
            int i15 = i11 - 1;
            while (i12 <= i15) {
                arrayList.add(new e.l(fArr[i12]));
                i12++;
            }
            return;
        }
        if (c11 == 'H') {
            int i16 = i11 - 1;
            while (i12 <= i16) {
                arrayList.add(new e.d(fArr[i12]));
                i12++;
            }
            return;
        }
        if (c11 == 'v') {
            int i17 = i11 - 1;
            while (i12 <= i17) {
                arrayList.add(new e.r(fArr[i12]));
                i12++;
            }
            return;
        }
        if (c11 == 'V') {
            int i18 = i11 - 1;
            while (i12 <= i18) {
                arrayList.add(new e.s(fArr[i12]));
                i12++;
            }
            return;
        }
        if (c11 == 'c') {
            int i19 = i11 - 6;
            while (i12 <= i19) {
                arrayList.add(new e.k(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3], fArr[i12 + 4], fArr[i12 + 5]));
                i12 += 6;
            }
            return;
        }
        if (c11 == 'C') {
            int i20 = i11 - 6;
            while (i12 <= i20) {
                arrayList.add(new e.c(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3], fArr[i12 + 4], fArr[i12 + 5]));
                i12 += 6;
            }
            return;
        }
        if (c11 == 's') {
            int i21 = i11 - 4;
            while (i12 <= i21) {
                arrayList.add(new e.p(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3]));
                i12 += 4;
            }
            return;
        }
        if (c11 == 'S') {
            int i22 = i11 - 4;
            while (i12 <= i22) {
                arrayList.add(new e.h(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3]));
                i12 += 4;
            }
            return;
        }
        if (c11 == 'q') {
            int i23 = i11 - 4;
            while (i12 <= i23) {
                arrayList.add(new e.o(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3]));
                i12 += 4;
            }
            return;
        }
        if (c11 == 'Q') {
            int i24 = i11 - 4;
            while (i12 <= i24) {
                arrayList.add(new e.g(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3]));
                i12 += 4;
            }
            return;
        }
        if (c11 == 't') {
            int i25 = i11 - 2;
            while (i12 <= i25) {
                arrayList.add(new e.q(fArr[i12], fArr[i12 + 1]));
                i12 += 2;
            }
            return;
        }
        if (c11 == 'T') {
            int i26 = i11 - 2;
            while (i12 <= i26) {
                arrayList.add(new e.i(fArr[i12], fArr[i12 + 1]));
                i12 += 2;
            }
            return;
        }
        if (c11 == 'a') {
            int i27 = i11 - 7;
            for (int i28 = 0; i28 <= i27; i28 += 7) {
                arrayList.add(new e.j(fArr[i28], fArr[i28 + 1], fArr[i28 + 2], Float.compare(fArr[i28 + 3], 0.0f) != 0, Float.compare(fArr[i28 + 4], 0.0f) != 0, fArr[i28 + 5], fArr[i28 + 6]));
            }
            return;
        }
        if (c11 != 'A') {
            throw new IllegalArgumentException("Unknown command for: " + c11);
        }
        int i29 = i11 - 7;
        for (int i30 = 0; i30 <= i29; i30 += 7) {
            arrayList.add(new e.a(fArr[i30], fArr[i30 + 1], fArr[i30 + 2], Float.compare(fArr[i30 + 3], 0.0f) != 0, Float.compare(fArr[i30 + 4], 0.0f) != 0, fArr[i30 + 5], fArr[i30 + 6]));
        }
    }

    private static final void b(List list, float[] fArr, int i11) {
        int i12 = i11 - 2;
        if (i12 >= 0) {
            list.add(new e.f(fArr[0], fArr[1]));
            for (int i13 = 2; i13 <= i12; i13 += 2) {
                list.add(new e.C0049e(fArr[i13], fArr[i13 + 1]));
            }
        }
    }

    private static final void c(List list, float[] fArr, int i11) {
        int i12 = i11 - 2;
        if (i12 >= 0) {
            list.add(new e.n(fArr[0], fArr[1]));
            for (int i13 = 2; i13 <= i12; i13 += 2) {
                list.add(new e.m(fArr[i13], fArr[i13 + 1]));
            }
        }
    }
}
