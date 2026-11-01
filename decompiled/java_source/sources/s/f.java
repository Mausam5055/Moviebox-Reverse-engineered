package s;

import androidx.compose.runtime.k;
import androidx.compose.runtime.m2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    private static final int c(m2 m2Var) {
        int iA0 = m2Var.a0();
        int iC0 = m2Var.c0();
        while (iC0 >= 0 && !m2Var.r0(iC0)) {
            iC0 = m2Var.E0(iC0);
        }
        int iK0 = iC0 + 1;
        int iC1 = 0;
        while (iK0 < iA0) {
            if (m2Var.m0(iA0, iK0)) {
                if (m2Var.r0(iK0)) {
                    iC1 = 0;
                }
                iK0++;
            } else {
                iC1 += m2Var.r0(iK0) ? 1 : m2Var.C0(iK0);
                iK0 += m2Var.k0(iK0);
            }
        }
        return iC1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(m2 m2Var, androidx.compose.runtime.c cVar, androidx.compose.runtime.f fVar) {
        int iF = m2Var.F(cVar);
        k.O(m2Var.a0() < iF);
        e(m2Var, fVar, iF);
        int iC = c(m2Var);
        while (m2Var.a0() < iF) {
            if (m2Var.l0(iF)) {
                if (m2Var.q0()) {
                    fVar.j(m2Var.A0(m2Var.a0()));
                    iC = 0;
                }
                m2Var.g1();
            } else {
                iC += m2Var.V0();
            }
        }
        k.O(m2Var.a0() == iF);
        return iC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(m2 m2Var, androidx.compose.runtime.f fVar, int i11) {
        while (!m2Var.n0(i11)) {
            m2Var.W0();
            if (m2Var.r0(m2Var.c0())) {
                fVar.l();
            }
            m2Var.T();
        }
    }
}
