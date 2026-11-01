package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class a extends t0.b {
    private int X0 = 0;
    private boolean Y0 = true;
    private int Z0 = 0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    boolean f6910a1 = false;

    public int A1() {
        return this.Z0;
    }

    public int B1() {
        int i11 = this.X0;
        if (i11 == 0 || i11 == 1) {
            return 0;
        }
        return (i11 == 2 || i11 == 3) ? 1 : -1;
    }

    protected void C1() {
        for (int i11 = 0; i11 < this.W0; i11++) {
            ConstraintWidget constraintWidget = this.V0[i11];
            if (this.Y0 || constraintWidget.h()) {
                int i12 = this.X0;
                if (i12 == 0 || i12 == 1) {
                    constraintWidget.W0(0, true);
                } else if (i12 == 2 || i12 == 3) {
                    constraintWidget.W0(1, true);
                }
            }
        }
    }

    public void D1(boolean z10) {
        this.Y0 = z10;
    }

    public void E1(int i11) {
        this.X0 = i11;
    }

    public void F1(int i11) {
        this.Z0 = i11;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z11;
        int i11;
        int i12;
        int i13;
        ConstraintAnchor[] constraintAnchorArr2 = this.Y;
        constraintAnchorArr2[0] = this.Q;
        constraintAnchorArr2[2] = this.R;
        constraintAnchorArr2[1] = this.S;
        constraintAnchorArr2[3] = this.T;
        int i14 = 0;
        while (true) {
            constraintAnchorArr = this.Y;
            if (i14 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i14];
            constraintAnchor.f6854i = dVar.q(constraintAnchor);
            i14++;
        }
        int i15 = this.X0;
        if (i15 < 0 || i15 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i15];
        if (!this.f6910a1) {
            x1();
        }
        if (this.f6910a1) {
            this.f6910a1 = false;
            int i16 = this.X0;
            if (i16 == 0 || i16 == 1) {
                dVar.f(this.Q.f6854i, this.f6871h0);
                dVar.f(this.S.f6854i, this.f6871h0);
                return;
            } else {
                if (i16 == 2 || i16 == 3) {
                    dVar.f(this.R.f6854i, this.f6873i0);
                    dVar.f(this.T.f6854i, this.f6873i0);
                    return;
                }
                return;
            }
        }
        int i17 = 0;
        while (true) {
            if (i17 >= this.W0) {
                z11 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.V0[i17];
            if ((this.Y0 || constraintWidget.h()) && ((((i12 = this.X0) == 0 || i12 == 1) && constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.Q.f6851f != null && constraintWidget.S.f6851f != null) || (((i13 = this.X0) == 2 || i13 == 3) && constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.R.f6851f != null && constraintWidget.T.f6851f != null))) {
                z11 = true;
                break;
            }
            i17++;
        }
        boolean z12 = this.Q.l() || this.S.l();
        boolean z13 = this.R.l() || this.T.l();
        int i18 = !(!z11 && (((i11 = this.X0) == 0 && z12) || ((i11 == 2 && z13) || ((i11 == 1 && z12) || (i11 == 3 && z13))))) ? 4 : 5;
        for (int i19 = 0; i19 < this.W0; i19++) {
            ConstraintWidget constraintWidget2 = this.V0[i19];
            if (this.Y0 || constraintWidget2.h()) {
                SolverVariable solverVariableQ = dVar.q(constraintWidget2.Y[this.X0]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.Y;
                int i20 = this.X0;
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i20];
                constraintAnchor3.f6854i = solverVariableQ;
                ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6851f;
                int i21 = (constraintAnchor4 == null || constraintAnchor4.f6849d != this) ? 0 : constraintAnchor3.f6852g;
                if (i20 == 0 || i20 == 2) {
                    dVar.i(constraintAnchor2.f6854i, solverVariableQ, this.Z0 - i21, z11);
                } else {
                    dVar.g(constraintAnchor2.f6854i, solverVariableQ, this.Z0 + i21, z11);
                }
                dVar.e(constraintAnchor2.f6854i, solverVariableQ, this.Z0 + i21, i18);
            }
        }
        int i22 = this.X0;
        if (i22 == 0) {
            dVar.e(this.S.f6854i, this.Q.f6854i, 0, 8);
            dVar.e(this.Q.f6854i, this.f6861c0.S.f6854i, 0, 4);
            dVar.e(this.Q.f6854i, this.f6861c0.Q.f6854i, 0, 0);
            return;
        }
        if (i22 == 1) {
            dVar.e(this.Q.f6854i, this.S.f6854i, 0, 8);
            dVar.e(this.Q.f6854i, this.f6861c0.Q.f6854i, 0, 4);
            dVar.e(this.Q.f6854i, this.f6861c0.S.f6854i, 0, 0);
        } else if (i22 == 2) {
            dVar.e(this.T.f6854i, this.R.f6854i, 0, 8);
            dVar.e(this.R.f6854i, this.f6861c0.T.f6854i, 0, 4);
            dVar.e(this.R.f6854i, this.f6861c0.R.f6854i, 0, 0);
        } else if (i22 == 3) {
            dVar.e(this.R.f6854i, this.T.f6854i, 0, 8);
            dVar.e(this.R.f6854i, this.f6861c0.R.f6854i, 0, 4);
            dVar.e(this.R.f6854i, this.f6861c0.T.f6854i, 0, 0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean h() {
        return true;
    }

    @Override // t0.b, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void n(ConstraintWidget constraintWidget, HashMap map) {
        super.n(constraintWidget, map);
        a aVar = (a) constraintWidget;
        this.X0 = aVar.X0;
        this.Y0 = aVar.Y0;
        this.Z0 = aVar.Z0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean p0() {
        return this.f6910a1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean q0() {
        return this.f6910a1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + v() + " {";
        for (int i11 = 0; i11 < this.W0; i11++) {
            ConstraintWidget constraintWidget = this.V0[i11];
            if (i11 > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.v();
        }
        return str + "}";
    }

    public boolean x1() {
        int i11;
        int i12;
        int i13;
        boolean z10 = true;
        int i14 = 0;
        while (true) {
            i11 = this.W0;
            if (i14 >= i11) {
                break;
            }
            ConstraintWidget constraintWidget = this.V0[i14];
            if ((this.Y0 || constraintWidget.h()) && ((((i12 = this.X0) == 0 || i12 == 1) && !constraintWidget.p0()) || (((i13 = this.X0) == 2 || i13 == 3) && !constraintWidget.q0()))) {
                z10 = false;
            }
            i14++;
        }
        if (!z10 || i11 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z11 = false;
        for (int i15 = 0; i15 < this.W0; i15++) {
            ConstraintWidget constraintWidget2 = this.V0[i15];
            if (this.Y0 || constraintWidget2.h()) {
                if (!z11) {
                    int i16 = this.X0;
                    if (i16 == 0) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.LEFT).e();
                    } else if (i16 == 1) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.RIGHT).e();
                    } else if (i16 == 2) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.TOP).e();
                    } else if (i16 == 3) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).e();
                    }
                    z11 = true;
                }
                int i17 = this.X0;
                if (i17 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.q(ConstraintAnchor.Type.LEFT).e());
                } else if (i17 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.q(ConstraintAnchor.Type.RIGHT).e());
                } else if (i17 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.q(ConstraintAnchor.Type.TOP).e());
                } else if (i17 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).e());
                }
            }
        }
        int i18 = iMax + this.Z0;
        int i19 = this.X0;
        if (i19 == 0 || i19 == 1) {
            J0(i18, i18);
        } else {
            M0(i18, i18);
        }
        this.f6910a1 = true;
        return true;
    }

    public boolean y1() {
        return this.Y0;
    }

    public int z1() {
        return this.X0;
    }
}
