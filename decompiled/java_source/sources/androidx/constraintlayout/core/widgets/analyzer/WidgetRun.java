package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public abstract class WidgetRun implements u0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ConstraintWidget f6924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    k f6925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ConstraintWidget.DimensionBehaviour f6926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    e f6927e = new e(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6928f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f6929g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DependencyNode f6930h = new DependencyNode(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DependencyNode f6931i = new DependencyNode(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected RunType f6932j = RunType.NONE;

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6933a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f6933a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6933a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6933a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6933a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6933a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f6924b = constraintWidget;
    }

    private void l(int i11, int i12) {
        int i13 = this.f6923a;
        if (i13 == 0) {
            this.f6927e.d(g(i12, i11));
            return;
        }
        if (i13 == 1) {
            this.f6927e.d(Math.min(g(this.f6927e.f6961m, i11), i12));
            return;
        }
        if (i13 == 2) {
            ConstraintWidget constraintWidgetM = this.f6924b.M();
            if (constraintWidgetM != null) {
                e eVar = (i11 == 0 ? constraintWidgetM.f6864e : constraintWidgetM.f6866f).f6927e;
                if (eVar.f6920j) {
                    ConstraintWidget constraintWidget = this.f6924b;
                    this.f6927e.d(g((int) ((eVar.f6917g * (i11 == 0 ? constraintWidget.B : constraintWidget.E)) + 0.5f), i11));
                    return;
                }
                return;
            }
            return;
        }
        if (i13 != 3) {
            return;
        }
        ConstraintWidget constraintWidget2 = this.f6924b;
        WidgetRun widgetRun = constraintWidget2.f6864e;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.f6926d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.f6923a == 3) {
            l lVar = constraintWidget2.f6866f;
            if (lVar.f6926d == dimensionBehaviour2 && lVar.f6923a == 3) {
                return;
            }
        }
        if (i11 == 0) {
            widgetRun = constraintWidget2.f6866f;
        }
        if (widgetRun.f6927e.f6920j) {
            float fX = constraintWidget2.x();
            this.f6927e.d(i11 == 1 ? (int) ((widgetRun.f6927e.f6917g / fX) + 0.5f) : (int) ((fX * widgetRun.f6927e.f6917g) + 0.5f));
        }
    }

    @Override // u0.a
    public abstract void a(u0.a aVar);

    protected final void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i11) {
        dependencyNode.f6922l.add(dependencyNode2);
        dependencyNode.f6916f = i11;
        dependencyNode2.f6921k.add(dependencyNode);
    }

    protected final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i11, e eVar) {
        dependencyNode.f6922l.add(dependencyNode2);
        dependencyNode.f6922l.add(this.f6927e);
        dependencyNode.f6918h = i11;
        dependencyNode.f6919i = eVar;
        dependencyNode2.f6921k.add(dependencyNode);
        eVar.f6921k.add(dependencyNode);
    }

    abstract void d();

    abstract void e();

    abstract void f();

    protected final int g(int i11, int i12) {
        int iMax;
        if (i12 == 0) {
            ConstraintWidget constraintWidget = this.f6924b;
            int i13 = constraintWidget.A;
            iMax = Math.max(constraintWidget.f6906z, i11);
            if (i13 > 0) {
                iMax = Math.min(i13, i11);
            }
            if (iMax == i11) {
                return i11;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.f6924b;
            int i14 = constraintWidget2.D;
            iMax = Math.max(constraintWidget2.C, i11);
            if (i14 > 0) {
                iMax = Math.min(i14, i11);
            }
            if (iMax == i11) {
                return i11;
            }
        }
        return iMax;
    }

    protected final DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6851f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f6849d;
        int i11 = a.f6933a[constraintAnchor2.f6850e.ordinal()];
        if (i11 == 1) {
            return constraintWidget.f6864e.f6930h;
        }
        if (i11 == 2) {
            return constraintWidget.f6864e.f6931i;
        }
        if (i11 == 3) {
            return constraintWidget.f6866f.f6930h;
        }
        if (i11 == 4) {
            return constraintWidget.f6866f.f6975k;
        }
        if (i11 != 5) {
            return null;
        }
        return constraintWidget.f6866f.f6931i;
    }

    protected final DependencyNode i(ConstraintAnchor constraintAnchor, int i11) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6851f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f6849d;
        WidgetRun widgetRun = i11 == 0 ? constraintWidget.f6864e : constraintWidget.f6866f;
        int i12 = a.f6933a[constraintAnchor2.f6850e.ordinal()];
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    if (i12 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.f6931i;
        }
        return widgetRun.f6930h;
    }

    public long j() {
        e eVar = this.f6927e;
        if (eVar.f6920j) {
            return eVar.f6917g;
        }
        return 0L;
    }

    public boolean k() {
        return this.f6929g;
    }

    abstract boolean m();

    protected void n(u0.a aVar, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i11) {
        DependencyNode dependencyNodeH = h(constraintAnchor);
        DependencyNode dependencyNodeH2 = h(constraintAnchor2);
        if (dependencyNodeH.f6920j && dependencyNodeH2.f6920j) {
            int iF = dependencyNodeH.f6917g + constraintAnchor.f();
            int iF2 = dependencyNodeH2.f6917g - constraintAnchor2.f();
            int i12 = iF2 - iF;
            if (!this.f6927e.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                l(i11, i12);
            }
            e eVar = this.f6927e;
            if (eVar.f6920j) {
                if (eVar.f6917g == i12) {
                    this.f6930h.d(iF);
                    this.f6931i.d(iF2);
                    return;
                }
                ConstraintWidget constraintWidget = this.f6924b;
                float fA = i11 == 0 ? constraintWidget.A() : constraintWidget.T();
                if (dependencyNodeH == dependencyNodeH2) {
                    iF = dependencyNodeH.f6917g;
                    iF2 = dependencyNodeH2.f6917g;
                    fA = 0.5f;
                }
                this.f6930h.d((int) (iF + 0.5f + (((iF2 - iF) - this.f6927e.f6917g) * fA)));
                this.f6931i.d(this.f6930h.f6917g + this.f6927e.f6917g);
            }
        }
    }

    protected void o(u0.a aVar) {
    }

    protected void p(u0.a aVar) {
    }
}
