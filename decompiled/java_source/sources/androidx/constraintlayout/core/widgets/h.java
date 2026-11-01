package androidx.constraintlayout.core.widgets;

/* JADX INFO: loaded from: classes.dex */
public class h extends i {
    @Override // androidx.constraintlayout.core.widgets.i
    public void G1(int i11, int i12, int i13, int i14) {
        int iD1 = D1() + E1();
        int iF1 = F1() + C1();
        if (this.W0 > 0) {
            iD1 += this.V0[0].Y();
            iF1 += this.V0[0].z();
        }
        int iMax = Math.max(K(), iD1);
        int iMax2 = Math.max(J(), iF1);
        if (i11 != 1073741824) {
            if (i11 == Integer.MIN_VALUE) {
                i12 = Math.min(iMax, i12);
            } else {
                i12 = i11 == 0 ? iMax : 0;
            }
        }
        if (i13 != 1073741824) {
            if (i13 == Integer.MIN_VALUE) {
                i14 = Math.min(iMax2, i14);
            } else {
                i14 = i13 == 0 ? iMax2 : 0;
            }
        }
        L1(i12, i14);
        o1(i12);
        P0(i14);
        K1(this.W0 > 0);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        super.g(dVar, z10);
        if (this.W0 > 0) {
            ConstraintWidget constraintWidget = this.V0[0];
            constraintWidget.w0();
            ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
            constraintWidget.j(type, this, type);
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            constraintWidget.j(type2, this, type2);
            ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
            constraintWidget.j(type3, this, type3);
            ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
            constraintWidget.j(type4, this, type4);
        }
    }
}
