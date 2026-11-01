package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class l extends WidgetRun {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DependencyNode f6975k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    e f6976l;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6977a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f6977a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6977a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6977a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.f6975k = dependencyNode;
        this.f6976l = null;
        this.f6930h.f6915e = DependencyNode.Type.TOP;
        this.f6931i.f6915e = DependencyNode.Type.BOTTOM;
        dependencyNode.f6915e = DependencyNode.Type.BASELINE;
        this.f6928f = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, u0.a
    public void a(u0.a aVar) {
        float f11;
        float fX;
        float fX2;
        int i11;
        int i12 = a.f6977a[this.f6932j.ordinal()];
        if (i12 == 1) {
            p(aVar);
        } else if (i12 == 2) {
            o(aVar);
        } else if (i12 == 3) {
            ConstraintWidget constraintWidget = this.f6924b;
            n(aVar, constraintWidget.R, constraintWidget.T, 1);
            return;
        }
        e eVar = this.f6927e;
        if (eVar.f6913c && !eVar.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f6924b;
            int i13 = constraintWidget2.f6902x;
            if (i13 == 2) {
                ConstraintWidget constraintWidgetM = constraintWidget2.M();
                if (constraintWidgetM != null) {
                    e eVar2 = constraintWidgetM.f6866f.f6927e;
                    if (eVar2.f6920j) {
                        this.f6927e.d((int) ((eVar2.f6917g * this.f6924b.E) + 0.5f));
                    }
                }
            } else if (i13 == 3 && constraintWidget2.f6864e.f6927e.f6920j) {
                int iY = constraintWidget2.y();
                if (iY != -1) {
                    if (iY == 0) {
                        ConstraintWidget constraintWidget3 = this.f6924b;
                        fX2 = constraintWidget3.f6864e.f6927e.f6917g * constraintWidget3.x();
                        i11 = (int) (fX2 + 0.5f);
                    } else if (iY != 1) {
                        i11 = 0;
                    } else {
                        ConstraintWidget constraintWidget4 = this.f6924b;
                        f11 = constraintWidget4.f6864e.f6927e.f6917g;
                        fX = constraintWidget4.x();
                    }
                    this.f6927e.d(i11);
                } else {
                    ConstraintWidget constraintWidget5 = this.f6924b;
                    f11 = constraintWidget5.f6864e.f6927e.f6917g;
                    fX = constraintWidget5.x();
                }
                fX2 = f11 / fX;
                i11 = (int) (fX2 + 0.5f);
                this.f6927e.d(i11);
            }
        }
        DependencyNode dependencyNode = this.f6930h;
        if (dependencyNode.f6913c) {
            DependencyNode dependencyNode2 = this.f6931i;
            if (dependencyNode2.f6913c) {
                if (dependencyNode.f6920j && dependencyNode2.f6920j && this.f6927e.f6920j) {
                    return;
                }
                if (!this.f6927e.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.f6924b;
                    if (constraintWidget6.f6900w == 0 && !constraintWidget6.m0()) {
                        DependencyNode dependencyNode3 = (DependencyNode) this.f6930h.f6922l.get(0);
                        DependencyNode dependencyNode4 = (DependencyNode) this.f6931i.f6922l.get(0);
                        int i14 = dependencyNode3.f6917g;
                        DependencyNode dependencyNode5 = this.f6930h;
                        int i15 = i14 + dependencyNode5.f6916f;
                        int i16 = dependencyNode4.f6917g + this.f6931i.f6916f;
                        dependencyNode5.d(i15);
                        this.f6931i.d(i16);
                        this.f6927e.d(i16 - i15);
                        return;
                    }
                }
                if (!this.f6927e.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f6923a == 1 && this.f6930h.f6922l.size() > 0 && this.f6931i.f6922l.size() > 0) {
                    DependencyNode dependencyNode6 = (DependencyNode) this.f6930h.f6922l.get(0);
                    int i17 = (((DependencyNode) this.f6931i.f6922l.get(0)).f6917g + this.f6931i.f6916f) - (dependencyNode6.f6917g + this.f6930h.f6916f);
                    e eVar3 = this.f6927e;
                    int i18 = eVar3.f6961m;
                    if (i17 < i18) {
                        eVar3.d(i17);
                    } else {
                        eVar3.d(i18);
                    }
                }
                if (this.f6927e.f6920j && this.f6930h.f6922l.size() > 0 && this.f6931i.f6922l.size() > 0) {
                    DependencyNode dependencyNode7 = (DependencyNode) this.f6930h.f6922l.get(0);
                    DependencyNode dependencyNode8 = (DependencyNode) this.f6931i.f6922l.get(0);
                    int i19 = dependencyNode7.f6917g + this.f6930h.f6916f;
                    int i20 = dependencyNode8.f6917g + this.f6931i.f6916f;
                    float fT = this.f6924b.T();
                    if (dependencyNode7 == dependencyNode8) {
                        i19 = dependencyNode7.f6917g;
                        i20 = dependencyNode8.f6917g;
                        fT = 0.5f;
                    }
                    this.f6930h.d((int) (i19 + 0.5f + (((i20 - i19) - this.f6927e.f6917g) * fT)));
                    this.f6931i.d(this.f6930h.f6917g + this.f6927e.f6917g);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidgetM;
        ConstraintWidget constraintWidgetM2;
        ConstraintWidget constraintWidget = this.f6924b;
        if (constraintWidget.f6856a) {
            this.f6927e.d(constraintWidget.z());
        }
        if (!this.f6927e.f6920j) {
            this.f6926d = this.f6924b.V();
            if (this.f6924b.b0()) {
                this.f6976l = new androidx.constraintlayout.core.widgets.analyzer.a(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f6926d;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetM2 = this.f6924b.M()) != null && constraintWidgetM2.V() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int iZ = (constraintWidgetM2.z() - this.f6924b.R.f()) - this.f6924b.T.f();
                    b(this.f6930h, constraintWidgetM2.f6866f.f6930h, this.f6924b.R.f());
                    b(this.f6931i, constraintWidgetM2.f6866f.f6931i, -this.f6924b.T.f());
                    this.f6927e.d(iZ);
                    return;
                }
                if (this.f6926d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f6927e.d(this.f6924b.z());
                }
            }
        } else if (this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetM = this.f6924b.M()) != null && constraintWidgetM.V() == ConstraintWidget.DimensionBehaviour.FIXED) {
            b(this.f6930h, constraintWidgetM.f6866f.f6930h, this.f6924b.R.f());
            b(this.f6931i, constraintWidgetM.f6866f.f6931i, -this.f6924b.T.f());
            return;
        }
        e eVar = this.f6927e;
        boolean z10 = eVar.f6920j;
        if (z10) {
            ConstraintWidget constraintWidget2 = this.f6924b;
            if (constraintWidget2.f6856a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.Y;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f6851f;
                if (constraintAnchor2 != null && constraintAnchorArr[3].f6851f != null) {
                    if (constraintWidget2.m0()) {
                        this.f6930h.f6916f = this.f6924b.Y[2].f();
                        this.f6931i.f6916f = -this.f6924b.Y[3].f();
                    } else {
                        DependencyNode dependencyNodeH = h(this.f6924b.Y[2]);
                        if (dependencyNodeH != null) {
                            b(this.f6930h, dependencyNodeH, this.f6924b.Y[2].f());
                        }
                        DependencyNode dependencyNodeH2 = h(this.f6924b.Y[3]);
                        if (dependencyNodeH2 != null) {
                            b(this.f6931i, dependencyNodeH2, -this.f6924b.Y[3].f());
                        }
                        this.f6930h.f6912b = true;
                        this.f6931i.f6912b = true;
                    }
                    if (this.f6924b.b0()) {
                        b(this.f6975k, this.f6930h, this.f6924b.r());
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        b(this.f6930h, dependencyNodeH3, this.f6924b.Y[2].f());
                        b(this.f6931i, this.f6930h, this.f6927e.f6917g);
                        if (this.f6924b.b0()) {
                            b(this.f6975k, this.f6930h, this.f6924b.r());
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.f6851f != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        b(this.f6931i, dependencyNodeH4, -this.f6924b.Y[3].f());
                        b(this.f6930h, this.f6931i, -this.f6927e.f6917g);
                    }
                    if (this.f6924b.b0()) {
                        b(this.f6975k, this.f6930h, this.f6924b.r());
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.f6851f != null) {
                    DependencyNode dependencyNodeH5 = h(constraintAnchor4);
                    if (dependencyNodeH5 != null) {
                        b(this.f6975k, dependencyNodeH5, 0);
                        b(this.f6930h, this.f6975k, -this.f6924b.r());
                        b(this.f6931i, this.f6930h, this.f6927e.f6917g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof t0.a) || constraintWidget2.M() == null || this.f6924b.q(ConstraintAnchor.Type.CENTER).f6851f != null) {
                    return;
                }
                b(this.f6930h, this.f6924b.M().f6866f.f6930h, this.f6924b.a0());
                b(this.f6931i, this.f6930h, this.f6927e.f6917g);
                if (this.f6924b.b0()) {
                    b(this.f6975k, this.f6930h, this.f6924b.r());
                    return;
                }
                return;
            }
        }
        if (z10 || this.f6926d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            eVar.b(this);
        } else {
            ConstraintWidget constraintWidget3 = this.f6924b;
            int i11 = constraintWidget3.f6902x;
            if (i11 == 2) {
                ConstraintWidget constraintWidgetM3 = constraintWidget3.M();
                if (constraintWidgetM3 != null) {
                    e eVar2 = constraintWidgetM3.f6866f.f6927e;
                    this.f6927e.f6922l.add(eVar2);
                    eVar2.f6921k.add(this.f6927e);
                    e eVar3 = this.f6927e;
                    eVar3.f6912b = true;
                    eVar3.f6921k.add(this.f6930h);
                    this.f6927e.f6921k.add(this.f6931i);
                }
            } else if (i11 == 3 && !constraintWidget3.m0()) {
                ConstraintWidget constraintWidget4 = this.f6924b;
                if (constraintWidget4.f6900w != 3) {
                    e eVar4 = constraintWidget4.f6864e.f6927e;
                    this.f6927e.f6922l.add(eVar4);
                    eVar4.f6921k.add(this.f6927e);
                    e eVar5 = this.f6927e;
                    eVar5.f6912b = true;
                    eVar5.f6921k.add(this.f6930h);
                    this.f6927e.f6921k.add(this.f6931i);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.f6924b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.Y;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.f6851f;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].f6851f != null) {
            if (constraintWidget5.m0()) {
                this.f6930h.f6916f = this.f6924b.Y[2].f();
                this.f6931i.f6916f = -this.f6924b.Y[3].f();
            } else {
                DependencyNode dependencyNodeH6 = h(this.f6924b.Y[2]);
                DependencyNode dependencyNodeH7 = h(this.f6924b.Y[3]);
                if (dependencyNodeH6 != null) {
                    dependencyNodeH6.b(this);
                }
                if (dependencyNodeH7 != null) {
                    dependencyNodeH7.b(this);
                }
                this.f6932j = WidgetRun.RunType.CENTER;
            }
            if (this.f6924b.b0()) {
                c(this.f6975k, this.f6930h, 1, this.f6976l);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchor5);
            if (dependencyNodeH8 != null) {
                b(this.f6930h, dependencyNodeH8, this.f6924b.Y[2].f());
                c(this.f6931i, this.f6930h, 1, this.f6927e);
                if (this.f6924b.b0()) {
                    c(this.f6975k, this.f6930h, 1, this.f6976l);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f6926d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.f6924b.x() > 0.0f) {
                    j jVar = this.f6924b.f6864e;
                    if (jVar.f6926d == dimensionBehaviour3) {
                        jVar.f6927e.f6921k.add(this.f6927e);
                        this.f6927e.f6922l.add(this.f6924b.f6864e.f6927e);
                        this.f6927e.f6911a = this;
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.f6851f != null) {
                DependencyNode dependencyNodeH9 = h(constraintAnchor7);
                if (dependencyNodeH9 != null) {
                    b(this.f6931i, dependencyNodeH9, -this.f6924b.Y[3].f());
                    c(this.f6930h, this.f6931i, -1, this.f6927e);
                    if (this.f6924b.b0()) {
                        c(this.f6975k, this.f6930h, 1, this.f6976l);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.f6851f != null) {
                    DependencyNode dependencyNodeH10 = h(constraintAnchor8);
                    if (dependencyNodeH10 != null) {
                        b(this.f6975k, dependencyNodeH10, 0);
                        c(this.f6930h, this.f6975k, -1, this.f6976l);
                        c(this.f6931i, this.f6930h, 1, this.f6927e);
                    }
                } else if (!(constraintWidget5 instanceof t0.a) && constraintWidget5.M() != null) {
                    b(this.f6930h, this.f6924b.M().f6866f.f6930h, this.f6924b.a0());
                    c(this.f6931i, this.f6930h, 1, this.f6927e);
                    if (this.f6924b.b0()) {
                        c(this.f6975k, this.f6930h, 1, this.f6976l);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.f6926d;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5 && this.f6924b.x() > 0.0f) {
                        j jVar2 = this.f6924b.f6864e;
                        if (jVar2.f6926d == dimensionBehaviour5) {
                            jVar2.f6927e.f6921k.add(this.f6927e);
                            this.f6927e.f6922l.add(this.f6924b.f6864e.f6927e);
                            this.f6927e.f6911a = this;
                        }
                    }
                }
            }
        }
        if (this.f6927e.f6922l.size() == 0) {
            this.f6927e.f6913c = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        DependencyNode dependencyNode = this.f6930h;
        if (dependencyNode.f6920j) {
            this.f6924b.r1(dependencyNode.f6917g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.f6925c = null;
        this.f6930h.c();
        this.f6931i.c();
        this.f6975k.c();
        this.f6927e.c();
        this.f6929g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return this.f6926d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f6924b.f6902x == 0;
    }

    void q() {
        this.f6929g = false;
        this.f6930h.c();
        this.f6930h.f6920j = false;
        this.f6931i.c();
        this.f6931i.f6920j = false;
        this.f6975k.c();
        this.f6975k.f6920j = false;
        this.f6927e.f6920j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f6924b.v();
    }
}
