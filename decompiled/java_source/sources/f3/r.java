package f3;

import androidx.media3.common.util.j0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r {
    private static int a(int i11, j0 j0Var, int i12) {
        if (i11 == 12) {
            return 240;
        }
        if (i11 == 13) {
            return 120;
        }
        if (i11 == 21 && j0Var.a() >= 8 && j0Var.f() + 8 <= i12) {
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            if (iQ >= 12 && iQ2 == 1936877170) {
                return j0Var.I();
            }
        }
        return -2147483647;
    }

    public static androidx.media3.common.x b(j0 j0Var, int i11) {
        j0Var.X(12);
        while (j0Var.f() < i11) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            if (j0Var.q() == 1935766900) {
                if (iQ < 16) {
                    return null;
                }
                j0Var.X(4);
                int i12 = -1;
                int i13 = 0;
                for (int i14 = 0; i14 < 2; i14++) {
                    int iH = j0Var.H();
                    int iH2 = j0Var.H();
                    if (iH == 0) {
                        i12 = iH2;
                    } else if (iH == 1) {
                        i13 = iH2;
                    }
                }
                int iA = a(i12, j0Var, i11);
                if (iA == -2147483647) {
                    return null;
                }
                return new androidx.media3.common.x(new a3.d(iA, i13));
            }
            j0Var.W(iF + iQ);
        }
        return null;
    }
}
