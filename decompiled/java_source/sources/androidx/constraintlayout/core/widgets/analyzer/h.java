package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
class h extends WidgetRun {
    public h(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.f6864e.f();
        constraintWidget.f6866f.f();
        this.f6928f = ((androidx.constraintlayout.core.widgets.f) constraintWidget).w1();
    }

    private void q(DependencyNode dependencyNode) {
        this.f6930h.f6921k.add(dependencyNode);
        dependencyNode.f6922l.add(this.f6930h);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, u0.a
    public void a(u0.a aVar) {
        DependencyNode dependencyNode = this.f6930h;
        if (dependencyNode.f6913c && !dependencyNode.f6920j) {
            this.f6930h.d((int) ((((DependencyNode) dependencyNode.f6922l.get(0)).f6917g * ((androidx.constraintlayout.core.widgets.f) this.f6924b).z1()) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        androidx.constraintlayout.core.widgets.f fVar = (androidx.constraintlayout.core.widgets.f) this.f6924b;
        int iX1 = fVar.x1();
        int iY1 = fVar.y1();
        fVar.z1();
        if (fVar.w1() == 1) {
            if (iX1 != -1) {
                this.f6930h.f6922l.add(this.f6924b.f6861c0.f6864e.f6930h);
                this.f6924b.f6861c0.f6864e.f6930h.f6921k.add(this.f6930h);
                this.f6930h.f6916f = iX1;
            } else if (iY1 != -1) {
                this.f6930h.f6922l.add(this.f6924b.f6861c0.f6864e.f6931i);
                this.f6924b.f6861c0.f6864e.f6931i.f6921k.add(this.f6930h);
                this.f6930h.f6916f = -iY1;
            } else {
                DependencyNode dependencyNode = this.f6930h;
                dependencyNode.f6912b = true;
                dependencyNode.f6922l.add(this.f6924b.f6861c0.f6864e.f6931i);
                this.f6924b.f6861c0.f6864e.f6931i.f6921k.add(this.f6930h);
            }
            q(this.f6924b.f6864e.f6930h);
            q(this.f6924b.f6864e.f6931i);
            return;
        }
        if (iX1 != -1) {
            this.f6930h.f6922l.add(this.f6924b.f6861c0.f6866f.f6930h);
            this.f6924b.f6861c0.f6866f.f6930h.f6921k.add(this.f6930h);
            this.f6930h.f6916f = iX1;
        } else if (iY1 != -1) {
            this.f6930h.f6922l.add(this.f6924b.f6861c0.f6866f.f6931i);
            this.f6924b.f6861c0.f6866f.f6931i.f6921k.add(this.f6930h);
            this.f6930h.f6916f = -iY1;
        } else {
            DependencyNode dependencyNode2 = this.f6930h;
            dependencyNode2.f6912b = true;
            dependencyNode2.f6922l.add(this.f6924b.f6861c0.f6866f.f6931i);
            this.f6924b.f6861c0.f6866f.f6931i.f6921k.add(this.f6930h);
        }
        q(this.f6924b.f6866f.f6930h);
        q(this.f6924b.f6866f.f6931i);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        if (((androidx.constraintlayout.core.widgets.f) this.f6924b).w1() == 1) {
            this.f6924b.q1(this.f6930h.f6917g);
        } else {
            this.f6924b.r1(this.f6930h.f6917g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.f6930h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return false;
    }
}
