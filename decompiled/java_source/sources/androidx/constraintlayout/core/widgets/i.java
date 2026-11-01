package androidx.constraintlayout.core.widgets;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class i extends t0.b {
    private int X0 = 0;
    private int Y0 = 0;
    private int Z0 = 0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private int f7080a1 = 0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private int f7081b1 = 0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    private int f7082c1 = 0;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    private int f7083d1 = 0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    private int f7084e1 = 0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private boolean f7085f1 = false;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    private int f7086g1 = 0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    private int f7087h1 = 0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected androidx.constraintlayout.core.widgets.analyzer.b.a f7088i1 = new androidx.constraintlayout.core.widgets.analyzer.b.a();

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b f7089j1 = null;

    public int A1() {
        return this.f7087h1;
    }

    public int B1() {
        return this.f7086g1;
    }

    public int C1() {
        return this.Y0;
    }

    public int D1() {
        return this.f7083d1;
    }

    public int E1() {
        return this.f7084e1;
    }

    public int F1() {
        return this.X0;
    }

    public void G1(int i11, int i12, int i13, int i14) {
    }

    protected void H1(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i11, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i12) {
        while (this.f7089j1 == null && M() != null) {
            this.f7089j1 = ((d) M()).N1();
        }
        androidx.constraintlayout.core.widgets.analyzer.b.a aVar = this.f7088i1;
        aVar.f6940a = dimensionBehaviour;
        aVar.f6941b = dimensionBehaviour2;
        aVar.f6942c = i11;
        aVar.f6943d = i12;
        this.f7089j1.b(constraintWidget, aVar);
        constraintWidget.o1(this.f7088i1.f6944e);
        constraintWidget.P0(this.f7088i1.f6945f);
        constraintWidget.O0(this.f7088i1.f6947h);
        constraintWidget.E0(this.f7088i1.f6946g);
    }

    protected boolean I1() {
        ConstraintWidget constraintWidget = this.f6861c0;
        androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b interfaceC0060bN1 = constraintWidget != null ? ((d) constraintWidget).N1() : null;
        if (interfaceC0060bN1 == null) {
            return false;
        }
        for (int i11 = 0; i11 < this.W0; i11++) {
            ConstraintWidget constraintWidget2 = this.V0[i11];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof f)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget2.w(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget2.w(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourW != dimensionBehaviour || constraintWidget2.f6900w == 1 || dimensionBehaviourW2 != dimensionBehaviour || constraintWidget2.f6902x == 1) {
                    if (dimensionBehaviourW == dimensionBehaviour) {
                        dimensionBehaviourW = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviourW2 == dimensionBehaviour) {
                        dimensionBehaviourW2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    androidx.constraintlayout.core.widgets.analyzer.b.a aVar = this.f7088i1;
                    aVar.f6940a = dimensionBehaviourW;
                    aVar.f6941b = dimensionBehaviourW2;
                    aVar.f6942c = constraintWidget2.Y();
                    this.f7088i1.f6943d = constraintWidget2.z();
                    interfaceC0060bN1.b(constraintWidget2, this.f7088i1);
                    constraintWidget2.o1(this.f7088i1.f6944e);
                    constraintWidget2.P0(this.f7088i1.f6945f);
                    constraintWidget2.E0(this.f7088i1.f6946g);
                }
            }
        }
        return true;
    }

    public boolean J1() {
        return this.f7085f1;
    }

    protected void K1(boolean z10) {
        this.f7085f1 = z10;
    }

    public void L1(int i11, int i12) {
        this.f7086g1 = i11;
        this.f7087h1 = i12;
    }

    public void M1(int i11) {
        this.Z0 = i11;
        this.X0 = i11;
        this.f7080a1 = i11;
        this.Y0 = i11;
        this.f7081b1 = i11;
        this.f7082c1 = i11;
    }

    public void N1(int i11) {
        this.Y0 = i11;
    }

    public void O1(int i11) {
        this.f7082c1 = i11;
    }

    public void P1(int i11) {
        this.Z0 = i11;
        this.f7083d1 = i11;
    }

    public void Q1(int i11) {
        this.f7080a1 = i11;
        this.f7084e1 = i11;
    }

    public void R1(int i11) {
        this.f7081b1 = i11;
        this.f7083d1 = i11;
        this.f7084e1 = i11;
    }

    public void S1(int i11) {
        this.X0 = i11;
    }

    @Override // t0.b, t0.a
    public void c(d dVar) {
        y1();
    }

    public void x1(boolean z10) {
        int i11 = this.f7081b1;
        if (i11 > 0 || this.f7082c1 > 0) {
            if (z10) {
                this.f7083d1 = this.f7082c1;
                this.f7084e1 = i11;
            } else {
                this.f7083d1 = i11;
                this.f7084e1 = this.f7082c1;
            }
        }
    }

    public void y1() {
        for (int i11 = 0; i11 < this.W0; i11++) {
            ConstraintWidget constraintWidget = this.V0[i11];
            if (constraintWidget != null) {
                constraintWidget.Y0(true);
            }
        }
    }

    public boolean z1(HashSet hashSet) {
        for (int i11 = 0; i11 < this.W0; i11++) {
            if (hashSet.contains(this.V0[i11])) {
                return true;
            }
        }
        return false;
    }
}
