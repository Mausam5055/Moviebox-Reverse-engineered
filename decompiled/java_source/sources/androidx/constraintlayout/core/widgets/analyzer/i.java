package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class i extends WidgetRun {
    public i(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    private void q(DependencyNode dependencyNode) {
        this.f6930h.f6921k.add(dependencyNode);
        dependencyNode.f6922l.add(this.f6930h);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, u0.a
    public void a(u0.a aVar) {
        androidx.constraintlayout.core.widgets.a aVar2 = (androidx.constraintlayout.core.widgets.a) this.f6924b;
        int iZ1 = aVar2.z1();
        Iterator it = this.f6930h.f6922l.iterator();
        int i11 = 0;
        int i12 = -1;
        while (it.hasNext()) {
            int i13 = ((DependencyNode) it.next()).f6917g;
            if (i12 == -1 || i13 < i12) {
                i12 = i13;
            }
            if (i11 < i13) {
                i11 = i13;
            }
        }
        if (iZ1 == 0 || iZ1 == 2) {
            this.f6930h.d(i12 + aVar2.A1());
        } else {
            this.f6930h.d(i11 + aVar2.A1());
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidget = this.f6924b;
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            this.f6930h.f6912b = true;
            androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget;
            int iZ1 = aVar.z1();
            boolean zY1 = aVar.y1();
            int i11 = 0;
            if (iZ1 == 0) {
                this.f6930h.f6915e = DependencyNode.Type.LEFT;
                while (i11 < aVar.W0) {
                    ConstraintWidget constraintWidget2 = aVar.V0[i11];
                    if (zY1 || constraintWidget2.X() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.f6864e.f6930h;
                        dependencyNode.f6921k.add(this.f6930h);
                        this.f6930h.f6922l.add(dependencyNode);
                    }
                    i11++;
                }
                q(this.f6924b.f6864e.f6930h);
                q(this.f6924b.f6864e.f6931i);
                return;
            }
            if (iZ1 == 1) {
                this.f6930h.f6915e = DependencyNode.Type.RIGHT;
                while (i11 < aVar.W0) {
                    ConstraintWidget constraintWidget3 = aVar.V0[i11];
                    if (zY1 || constraintWidget3.X() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.f6864e.f6931i;
                        dependencyNode2.f6921k.add(this.f6930h);
                        this.f6930h.f6922l.add(dependencyNode2);
                    }
                    i11++;
                }
                q(this.f6924b.f6864e.f6930h);
                q(this.f6924b.f6864e.f6931i);
                return;
            }
            if (iZ1 == 2) {
                this.f6930h.f6915e = DependencyNode.Type.TOP;
                while (i11 < aVar.W0) {
                    ConstraintWidget constraintWidget4 = aVar.V0[i11];
                    if (zY1 || constraintWidget4.X() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.f6866f.f6930h;
                        dependencyNode3.f6921k.add(this.f6930h);
                        this.f6930h.f6922l.add(dependencyNode3);
                    }
                    i11++;
                }
                q(this.f6924b.f6866f.f6930h);
                q(this.f6924b.f6866f.f6931i);
                return;
            }
            if (iZ1 != 3) {
                return;
            }
            this.f6930h.f6915e = DependencyNode.Type.BOTTOM;
            while (i11 < aVar.W0) {
                ConstraintWidget constraintWidget5 = aVar.V0[i11];
                if (zY1 || constraintWidget5.X() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget5.f6866f.f6931i;
                    dependencyNode4.f6921k.add(this.f6930h);
                    this.f6930h.f6922l.add(dependencyNode4);
                }
                i11++;
            }
            q(this.f6924b.f6866f.f6930h);
            q(this.f6924b.f6866f.f6931i);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        ConstraintWidget constraintWidget = this.f6924b;
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            int iZ1 = ((androidx.constraintlayout.core.widgets.a) constraintWidget).z1();
            if (iZ1 == 0 || iZ1 == 1) {
                this.f6924b.q1(this.f6930h.f6917g);
            } else {
                this.f6924b.r1(this.f6930h.f6917g);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.f6925c = null;
        this.f6930h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return false;
    }
}
