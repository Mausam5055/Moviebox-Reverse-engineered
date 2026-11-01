package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.d f6952a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.d f6955d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6953b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6954c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList f6956e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f6957f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b.InterfaceC0060b f6958g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b.a f6959h = new b.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ArrayList f6960i = new ArrayList();

    public d(androidx.constraintlayout.core.widgets.d dVar) {
        this.f6952a = dVar;
        this.f6955d = dVar;
    }

    private void a(DependencyNode dependencyNode, int i11, int i12, DependencyNode dependencyNode2, ArrayList arrayList, k kVar) {
        WidgetRun widgetRun = dependencyNode.f6914d;
        if (widgetRun.f6925c == null) {
            androidx.constraintlayout.core.widgets.d dVar = this.f6952a;
            if (widgetRun == dVar.f6864e || widgetRun == dVar.f6866f) {
                return;
            }
            if (kVar == null) {
                kVar = new k(widgetRun, i12);
                arrayList.add(kVar);
            }
            widgetRun.f6925c = kVar;
            kVar.a(widgetRun);
            for (u0.a aVar : widgetRun.f6930h.f6921k) {
                if (aVar instanceof DependencyNode) {
                    a((DependencyNode) aVar, i11, 0, dependencyNode2, arrayList, kVar);
                }
            }
            for (u0.a aVar2 : widgetRun.f6931i.f6921k) {
                if (aVar2 instanceof DependencyNode) {
                    a((DependencyNode) aVar2, i11, 1, dependencyNode2, arrayList, kVar);
                }
            }
            if (i11 == 1 && (widgetRun instanceof l)) {
                for (u0.a aVar3 : ((l) widgetRun).f6975k.f6921k) {
                    if (aVar3 instanceof DependencyNode) {
                        a((DependencyNode) aVar3, i11, 2, dependencyNode2, arrayList, kVar);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.f6930h.f6922l) {
                if (dependencyNode3 == dependencyNode2) {
                    kVar.f6969b = true;
                }
                a(dependencyNode3, i11, 0, dependencyNode2, arrayList, kVar);
            }
            for (DependencyNode dependencyNode4 : widgetRun.f6931i.f6922l) {
                if (dependencyNode4 == dependencyNode2) {
                    kVar.f6969b = true;
                }
                a(dependencyNode4, i11, 1, dependencyNode2, arrayList, kVar);
            }
            if (i11 == 1 && (widgetRun instanceof l)) {
                Iterator it = ((l) widgetRun).f6975k.f6922l.iterator();
                while (it.hasNext()) {
                    a((DependencyNode) it.next(), i11, 2, dependencyNode2, arrayList, kVar);
                }
            }
        }
    }

    private boolean b(androidx.constraintlayout.core.widgets.d dVar) {
        int iY;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int iZ;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        for (ConstraintWidget constraintWidget : dVar.V0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f6859b0;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (constraintWidget.X() == 8) {
                constraintWidget.f6856a = true;
            } else {
                if (constraintWidget.B < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.f6900w = 2;
                }
                if (constraintWidget.E < 1.0f && dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.f6902x = 2;
                }
                if (constraintWidget.x() > 0.0f) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.f6900w = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.f6902x = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (constraintWidget.f6900w == 0) {
                            constraintWidget.f6900w = 3;
                        }
                        if (constraintWidget.f6902x == 0) {
                            constraintWidget.f6902x = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && constraintWidget.f6900w == 1 && (constraintWidget.Q.f6851f == null || constraintWidget.S.f6851f == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviour5;
                if (dimensionBehaviour6 == dimensionBehaviour8 && constraintWidget.f6902x == 1 && (constraintWidget.R.f6851f == null || constraintWidget.T.f6851f == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                j jVar = constraintWidget.f6864e;
                jVar.f6926d = dimensionBehaviour9;
                int i11 = constraintWidget.f6900w;
                jVar.f6923a = i11;
                l lVar = constraintWidget.f6866f;
                lVar.f6926d = dimensionBehaviour10;
                int i12 = constraintWidget.f6902x;
                lVar.f6923a = i12;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour9 == dimensionBehaviour11 || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int iY2 = constraintWidget.Y();
                    if (dimensionBehaviour9 == dimensionBehaviour11) {
                        iY = (dVar.Y() - constraintWidget.Q.f6852g) - constraintWidget.S.f6852g;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iY = iY2;
                        dimensionBehaviour = dimensionBehaviour9;
                    }
                    int iZ2 = constraintWidget.z();
                    if (dimensionBehaviour10 == dimensionBehaviour11) {
                        iZ = (dVar.z() - constraintWidget.R.f6852g) - constraintWidget.T.f6852g;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iZ = iZ2;
                        dimensionBehaviour2 = dimensionBehaviour10;
                    }
                    l(constraintWidget, dimensionBehaviour, iY, dimensionBehaviour2, iZ);
                    constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                    constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                    constraintWidget.f6856a = true;
                } else {
                    if (dimensionBehaviour9 == dimensionBehaviour8 && (dimensionBehaviour10 == (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i11 == 3) {
                            if (dimensionBehaviour10 == dimensionBehaviour4) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                            }
                            int iZ3 = constraintWidget.z();
                            int i13 = (int) ((iZ3 * constraintWidget.f6867f0) + 0.5f);
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour12, i13, dimensionBehaviour12, iZ3);
                            constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                            constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                            constraintWidget.f6856a = true;
                        } else if (i11 == 1) {
                            l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                            constraintWidget.f6864e.f6927e.f6961m = constraintWidget.Y();
                        } else if (i11 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = dVar.f6859b0[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour13 == dimensionBehaviour14 || dimensionBehaviour13 == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour14, (int) ((constraintWidget.B * dVar.Y()) + 0.5f), dimensionBehaviour10, constraintWidget.z());
                                constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                                constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                                constraintWidget.f6856a = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr = constraintWidget.Y;
                            if (constraintAnchorArr[0].f6851f == null || constraintAnchorArr[1].f6851f == null) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                                constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                                constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                                constraintWidget.f6856a = true;
                            }
                        }
                    }
                    if (dimensionBehaviour10 == dimensionBehaviour8 && (dimensionBehaviour9 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i12 == 3) {
                            if (dimensionBehaviour9 == dimensionBehaviour3) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int iY3 = constraintWidget.Y();
                            float f11 = constraintWidget.f6867f0;
                            if (constraintWidget.y() == -1) {
                                f11 = 1.0f / f11;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour15, iY3, dimensionBehaviour15, (int) ((iY3 * f11) + 0.5f));
                            constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                            constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                            constraintWidget.f6856a = true;
                        } else if (i12 == 1) {
                            l(constraintWidget, dimensionBehaviour9, 0, dimensionBehaviour3, 0);
                            constraintWidget.f6866f.f6927e.f6961m = constraintWidget.z();
                        } else if (i12 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dVar.f6859b0[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour17 || dimensionBehaviour16 == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour9, constraintWidget.Y(), dimensionBehaviour17, (int) ((constraintWidget.E * dVar.z()) + 0.5f));
                                constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                                constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                                constraintWidget.f6856a = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.Y;
                            if (constraintAnchorArr2[2].f6851f == null || constraintAnchorArr2[3].f6851f == null) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour10, 0);
                                constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                                constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                                constraintWidget.f6856a = true;
                            }
                        }
                    }
                    if (dimensionBehaviour9 == dimensionBehaviour8 && dimensionBehaviour10 == dimensionBehaviour8) {
                        if (i11 == 1 || i12 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            l(constraintWidget, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            constraintWidget.f6864e.f6927e.f6961m = constraintWidget.Y();
                            constraintWidget.f6866f.f6927e.f6961m = constraintWidget.z();
                        } else if (i12 == 2 && i11 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar.f6859b0;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr2[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour19 == dimensionBehaviour20 && dimensionBehaviourArr2[1] == dimensionBehaviour20) {
                                l(constraintWidget, dimensionBehaviour20, (int) ((constraintWidget.B * dVar.Y()) + 0.5f), dimensionBehaviour20, (int) ((constraintWidget.E * dVar.z()) + 0.5f));
                                constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                                constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                                constraintWidget.f6856a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(androidx.constraintlayout.core.widgets.d dVar, int i11) {
        int size = this.f6960i.size();
        long jMax = 0;
        for (int i12 = 0; i12 < size; i12++) {
            jMax = Math.max(jMax, ((k) this.f6960i.get(i12)).b(dVar, i11));
        }
        return (int) jMax;
    }

    private void i(WidgetRun widgetRun, int i11, ArrayList arrayList) {
        for (u0.a aVar : widgetRun.f6930h.f6921k) {
            if (aVar instanceof DependencyNode) {
                a((DependencyNode) aVar, i11, 0, widgetRun.f6931i, arrayList, null);
            } else if (aVar instanceof WidgetRun) {
                a(((WidgetRun) aVar).f6930h, i11, 0, widgetRun.f6931i, arrayList, null);
            }
        }
        for (u0.a aVar2 : widgetRun.f6931i.f6921k) {
            if (aVar2 instanceof DependencyNode) {
                a((DependencyNode) aVar2, i11, 1, widgetRun.f6930h, arrayList, null);
            } else if (aVar2 instanceof WidgetRun) {
                a(((WidgetRun) aVar2).f6931i, i11, 1, widgetRun.f6930h, arrayList, null);
            }
        }
        if (i11 == 1) {
            for (u0.a aVar3 : ((l) widgetRun).f6975k.f6921k) {
                if (aVar3 instanceof DependencyNode) {
                    a((DependencyNode) aVar3, i11, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i11, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i12) {
        b.a aVar = this.f6959h;
        aVar.f6940a = dimensionBehaviour;
        aVar.f6941b = dimensionBehaviour2;
        aVar.f6942c = i11;
        aVar.f6943d = i12;
        this.f6958g.b(constraintWidget, aVar);
        constraintWidget.o1(this.f6959h.f6944e);
        constraintWidget.P0(this.f6959h.f6945f);
        constraintWidget.O0(this.f6959h.f6947h);
        constraintWidget.E0(this.f6959h.f6946g);
    }

    public void c() {
        d(this.f6956e);
        this.f6960i.clear();
        k.f6967h = 0;
        i(this.f6952a.f6864e, 0, this.f6960i);
        i(this.f6952a.f6866f, 1, this.f6960i);
        this.f6953b = false;
    }

    public void d(ArrayList arrayList) {
        arrayList.clear();
        this.f6955d.f6864e.f();
        this.f6955d.f6866f.f();
        arrayList.add(this.f6955d.f6864e);
        arrayList.add(this.f6955d.f6866f);
        HashSet hashSet = null;
        for (ConstraintWidget constraintWidget : this.f6955d.V0) {
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
                arrayList.add(new h(constraintWidget));
            } else {
                if (constraintWidget.k0()) {
                    if (constraintWidget.f6860c == null) {
                        constraintWidget.f6860c = new c(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f6860c);
                } else {
                    arrayList.add(constraintWidget.f6864e);
                }
                if (constraintWidget.m0()) {
                    if (constraintWidget.f6862d == null) {
                        constraintWidget.f6862d = new c(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f6862d);
                } else {
                    arrayList.add(constraintWidget.f6866f);
                }
                if (constraintWidget instanceof t0.b) {
                    arrayList.add(new i(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it2.next();
            if (widgetRun.f6924b != this.f6955d) {
                widgetRun.d();
            }
        }
    }

    public boolean f(boolean z10) {
        boolean z11;
        boolean z12 = false;
        if (this.f6953b || this.f6954c) {
            for (ConstraintWidget constraintWidget : this.f6952a.V0) {
                constraintWidget.p();
                constraintWidget.f6856a = false;
                constraintWidget.f6864e.r();
                constraintWidget.f6866f.q();
            }
            this.f6952a.p();
            androidx.constraintlayout.core.widgets.d dVar = this.f6952a;
            dVar.f6856a = false;
            dVar.f6864e.r();
            this.f6952a.f6866f.q();
            this.f6954c = false;
        }
        if (b(this.f6955d)) {
            return false;
        }
        this.f6952a.q1(0);
        this.f6952a.r1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW = this.f6952a.w(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = this.f6952a.w(1);
        if (this.f6953b) {
            c();
        }
        int iZ = this.f6952a.Z();
        int iA0 = this.f6952a.a0();
        this.f6952a.f6864e.f6930h.d(iZ);
        this.f6952a.f6866f.f6930h.d(iA0);
        m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviourW == dimensionBehaviour || dimensionBehaviourW2 == dimensionBehaviour) {
            if (z10) {
                Iterator it = this.f6956e.iterator();
                while (it.hasNext()) {
                    if (!((WidgetRun) it.next()).m()) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10 && dimensionBehaviourW == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f6952a.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar2 = this.f6952a;
                dVar2.o1(e(dVar2, 0));
                androidx.constraintlayout.core.widgets.d dVar3 = this.f6952a;
                dVar3.f6864e.f6927e.d(dVar3.Y());
            }
            if (z10 && dimensionBehaviourW2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f6952a.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar4 = this.f6952a;
                dVar4.P0(e(dVar4, 1));
                androidx.constraintlayout.core.widgets.d dVar5 = this.f6952a;
                dVar5.f6866f.f6927e.d(dVar5.z());
            }
        }
        androidx.constraintlayout.core.widgets.d dVar6 = this.f6952a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dVar6.f6859b0[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int iY = dVar6.Y() + iZ;
            this.f6952a.f6864e.f6931i.d(iY);
            this.f6952a.f6864e.f6927e.d(iY - iZ);
            m();
            androidx.constraintlayout.core.widgets.d dVar7 = this.f6952a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dVar7.f6859b0[1];
            if (dimensionBehaviour4 == dimensionBehaviour3 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iZ2 = dVar7.z() + iA0;
                this.f6952a.f6866f.f6931i.d(iZ2);
                this.f6952a.f6866f.f6927e.d(iZ2 - iA0);
            }
            m();
            z11 = true;
        } else {
            z11 = false;
        }
        for (WidgetRun widgetRun : this.f6956e) {
            if (widgetRun.f6924b != this.f6952a || widgetRun.f6929g) {
                widgetRun.e();
            }
        }
        for (WidgetRun widgetRun2 : this.f6956e) {
            if (z11 || widgetRun2.f6924b != this.f6952a) {
                if (!widgetRun2.f6930h.f6920j || ((!widgetRun2.f6931i.f6920j && !(widgetRun2 instanceof h)) || (!widgetRun2.f6927e.f6920j && !(widgetRun2 instanceof c) && !(widgetRun2 instanceof h)))) {
                    this.f6952a.T0(dimensionBehaviourW);
                    this.f6952a.k1(dimensionBehaviourW2);
                    return z12;
                }
            }
        }
        z12 = true;
        this.f6952a.T0(dimensionBehaviourW);
        this.f6952a.k1(dimensionBehaviourW2);
        return z12;
    }

    public boolean g(boolean z10) {
        if (this.f6953b) {
            for (ConstraintWidget constraintWidget : this.f6952a.V0) {
                constraintWidget.p();
                constraintWidget.f6856a = false;
                j jVar = constraintWidget.f6864e;
                jVar.f6927e.f6920j = false;
                jVar.f6929g = false;
                jVar.r();
                l lVar = constraintWidget.f6866f;
                lVar.f6927e.f6920j = false;
                lVar.f6929g = false;
                lVar.q();
            }
            this.f6952a.p();
            androidx.constraintlayout.core.widgets.d dVar = this.f6952a;
            dVar.f6856a = false;
            j jVar2 = dVar.f6864e;
            jVar2.f6927e.f6920j = false;
            jVar2.f6929g = false;
            jVar2.r();
            l lVar2 = this.f6952a.f6866f;
            lVar2.f6927e.f6920j = false;
            lVar2.f6929g = false;
            lVar2.q();
            c();
        }
        if (b(this.f6955d)) {
            return false;
        }
        this.f6952a.q1(0);
        this.f6952a.r1(0);
        this.f6952a.f6864e.f6930h.d(0);
        this.f6952a.f6866f.f6930h.d(0);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c1  */
    public boolean h(boolean z10, int i11) {
        boolean z11;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z12 = false;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW = this.f6952a.w(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = this.f6952a.w(1);
        int iZ = this.f6952a.Z();
        int iA0 = this.f6952a.a0();
        if (z10 && (dimensionBehaviourW == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviourW2 == dimensionBehaviour)) {
            for (WidgetRun widgetRun : this.f6956e) {
                if (widgetRun.f6928f == i11 && !widgetRun.m()) {
                    z10 = false;
                    break;
                }
            }
            if (i11 == 0) {
                if (z10 && dimensionBehaviourW == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f6952a.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                    androidx.constraintlayout.core.widgets.d dVar = this.f6952a;
                    dVar.o1(e(dVar, 0));
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f6952a;
                    dVar2.f6864e.f6927e.d(dVar2.Y());
                }
            } else if (z10 && dimensionBehaviourW2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f6952a.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar3 = this.f6952a;
                dVar3.P0(e(dVar3, 1));
                androidx.constraintlayout.core.widgets.d dVar4 = this.f6952a;
                dVar4.f6866f.f6927e.d(dVar4.z());
            }
        }
        if (i11 == 0) {
            androidx.constraintlayout.core.widgets.d dVar5 = this.f6952a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dVar5.f6859b0[0];
            if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iY = dVar5.Y() + iZ;
                this.f6952a.f6864e.f6931i.d(iY);
                this.f6952a.f6864e.f6927e.d(iY - iZ);
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            androidx.constraintlayout.core.widgets.d dVar6 = this.f6952a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dVar6.f6859b0[1];
            if (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iZ2 = dVar6.z() + iA0;
                this.f6952a.f6866f.f6931i.d(iZ2);
                this.f6952a.f6866f.f6927e.d(iZ2 - iA0);
                z11 = true;
            } else {
                z11 = false;
            }
        }
        m();
        for (WidgetRun widgetRun2 : this.f6956e) {
            if (widgetRun2.f6928f == i11 && (widgetRun2.f6924b != this.f6952a || widgetRun2.f6929g)) {
                widgetRun2.e();
            }
        }
        for (WidgetRun widgetRun3 : this.f6956e) {
            if (widgetRun3.f6928f == i11 && (z11 || widgetRun3.f6924b != this.f6952a)) {
                if (!widgetRun3.f6930h.f6920j || !widgetRun3.f6931i.f6920j || (!(widgetRun3 instanceof c) && !widgetRun3.f6927e.f6920j)) {
                    this.f6952a.T0(dimensionBehaviourW);
                    this.f6952a.k1(dimensionBehaviourW2);
                    return z12;
                }
            }
        }
        z12 = true;
        this.f6952a.T0(dimensionBehaviourW);
        this.f6952a.k1(dimensionBehaviourW2);
        return z12;
    }

    public void j() {
        this.f6953b = true;
    }

    public void k() {
        this.f6954c = true;
    }

    public void m() {
        e eVar;
        for (ConstraintWidget constraintWidget : this.f6952a.V0) {
            if (!constraintWidget.f6856a) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f6859b0;
                boolean z10 = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i11 = constraintWidget.f6900w;
                int i12 = constraintWidget.f6902x;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z11 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i11 == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i12 == 1)) {
                    z10 = true;
                }
                e eVar2 = constraintWidget.f6864e.f6927e;
                boolean z12 = eVar2.f6920j;
                e eVar3 = constraintWidget.f6866f.f6927e;
                boolean z13 = eVar3.f6920j;
                if (z12 && z13) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    l(constraintWidget, dimensionBehaviour4, eVar2.f6917g, dimensionBehaviour4, eVar3.f6917g);
                    constraintWidget.f6856a = true;
                } else if (z12 && z10) {
                    l(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, eVar2.f6917g, dimensionBehaviour3, eVar3.f6917g);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.f6866f.f6927e.f6961m = constraintWidget.z();
                    } else {
                        constraintWidget.f6866f.f6927e.d(constraintWidget.z());
                        constraintWidget.f6856a = true;
                    }
                } else if (z13 && z11) {
                    l(constraintWidget, dimensionBehaviour3, eVar2.f6917g, ConstraintWidget.DimensionBehaviour.FIXED, eVar3.f6917g);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.f6864e.f6927e.f6961m = constraintWidget.Y();
                    } else {
                        constraintWidget.f6864e.f6927e.d(constraintWidget.Y());
                        constraintWidget.f6856a = true;
                    }
                }
                if (constraintWidget.f6856a && (eVar = constraintWidget.f6866f.f6976l) != null) {
                    eVar.d(constraintWidget.r());
                }
            }
        }
    }

    public void n(b.InterfaceC0060b interfaceC0060b) {
        this.f6958g = interfaceC0060b;
    }
}
