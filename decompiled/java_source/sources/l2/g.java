package l2;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
    public static void a(long j11, androidx.media3.common.util.j0 j0Var, s0[] s0VarArr) {
        while (true) {
            if (j0Var.a() <= 1) {
                return;
            }
            int iC = c(j0Var);
            int iC2 = c(j0Var);
            int iF = j0Var.f() + iC2;
            if (iC2 == -1 || iC2 > j0Var.a()) {
                androidx.media3.common.util.u.h("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iF = j0Var.g();
            } else if (iC == 4 && iC2 >= 8) {
                int iH = j0Var.H();
                int iP = j0Var.P();
                int iQ = iP == 49 ? j0Var.q() : 0;
                int iH2 = j0Var.H();
                if (iP == 47) {
                    j0Var.X(1);
                }
                boolean z10 = iH == 181 && (iP == 49 || iP == 47) && iH2 == 3;
                if (iP == 49) {
                    z10 &= iQ == 1195456820;
                }
                if (z10) {
                    b(j11, j0Var, s0VarArr);
                }
            }
            j0Var.W(iF);
        }
    }

    public static void b(long j11, androidx.media3.common.util.j0 j0Var, s0[] s0VarArr) {
        int iH = j0Var.H();
        if ((iH & 64) != 0) {
            j0Var.X(1);
            int i11 = (iH & 31) * 3;
            int iF = j0Var.f();
            for (s0 s0Var : s0VarArr) {
                j0Var.W(iF);
                s0Var.b(j0Var, i11);
                androidx.media3.common.util.a.g(j11 != C.TIME_UNSET);
                s0Var.d(j11, 1, i11, 0, null);
            }
        }
    }

    private static int c(androidx.media3.common.util.j0 j0Var) {
        int i11 = 0;
        while (j0Var.a() != 0) {
            int iH = j0Var.H();
            i11 += iH;
            if (iH != 255) {
                return i11;
            }
        }
        return -1;
    }
}
