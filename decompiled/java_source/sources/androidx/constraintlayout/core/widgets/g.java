package androidx.constraintlayout.core.widgets;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean[] f7079a = new boolean[3];

    static void a(d dVar, androidx.constraintlayout.core.d dVar2, ConstraintWidget constraintWidget) {
        constraintWidget.f6894t = -1;
        constraintWidget.f6896u = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dVar.f6859b0[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.f6859b0[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i11 = constraintWidget.Q.f6852g;
            int iY = dVar.Y() - constraintWidget.S.f6852g;
            ConstraintAnchor constraintAnchor = constraintWidget.Q;
            constraintAnchor.f6854i = dVar2.q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.S;
            constraintAnchor2.f6854i = dVar2.q(constraintAnchor2);
            dVar2.f(constraintWidget.Q.f6854i, i11);
            dVar2.f(constraintWidget.S.f6854i, iY);
            constraintWidget.f6894t = 2;
            constraintWidget.S0(i11, iY);
        }
        if (dVar.f6859b0[1] == dimensionBehaviour2 || constraintWidget.f6859b0[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i12 = constraintWidget.R.f6852g;
        int iZ = dVar.z() - constraintWidget.T.f6852g;
        ConstraintAnchor constraintAnchor3 = constraintWidget.R;
        constraintAnchor3.f6854i = dVar2.q(constraintAnchor3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.T;
        constraintAnchor4.f6854i = dVar2.q(constraintAnchor4);
        dVar2.f(constraintWidget.R.f6854i, i12);
        dVar2.f(constraintWidget.T.f6854i, iZ);
        if (constraintWidget.f6883n0 > 0 || constraintWidget.X() == 8) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.U;
            constraintAnchor5.f6854i = dVar2.q(constraintAnchor5);
            dVar2.f(constraintWidget.U.f6854i, constraintWidget.f6883n0 + i12);
        }
        constraintWidget.f6896u = 2;
        constraintWidget.j1(i12, iZ);
    }

    public static final boolean b(int i11, int i12) {
        return (i11 & i12) == i12;
    }
}
