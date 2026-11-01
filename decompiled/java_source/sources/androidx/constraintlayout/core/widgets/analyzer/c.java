package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class c extends WidgetRun {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ArrayList f6950k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f6951l;

    public c(ConstraintWidget constraintWidget, int i11) {
        super(constraintWidget);
        this.f6950k = new ArrayList();
        this.f6928f = i11;
        q();
    }

    private void q() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.f6924b;
        ConstraintWidget constraintWidgetN = constraintWidget2.N(this.f6928f);
        while (true) {
            ConstraintWidget constraintWidget3 = constraintWidgetN;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                constraintWidgetN = constraintWidget2.N(this.f6928f);
            }
        }
        this.f6924b = constraintWidget;
        this.f6950k.add(constraintWidget.P(this.f6928f));
        ConstraintWidget constraintWidgetL = constraintWidget.L(this.f6928f);
        while (constraintWidgetL != null) {
            this.f6950k.add(constraintWidgetL.P(this.f6928f));
            constraintWidgetL = constraintWidgetL.L(this.f6928f);
        }
        for (WidgetRun widgetRun : this.f6950k) {
            int i11 = this.f6928f;
            if (i11 == 0) {
                widgetRun.f6924b.f6860c = this;
            } else if (i11 == 1) {
                widgetRun.f6924b.f6862d = this;
            }
        }
        if (this.f6928f == 0 && ((androidx.constraintlayout.core.widgets.d) this.f6924b.M()).U1() && this.f6950k.size() > 1) {
            ArrayList arrayList = this.f6950k;
            this.f6924b = ((WidgetRun) arrayList.get(arrayList.size() - 1)).f6924b;
        }
        this.f6951l = this.f6928f == 0 ? this.f6924b.B() : this.f6924b.U();
    }

    private ConstraintWidget r() {
        for (int i11 = 0; i11 < this.f6950k.size(); i11++) {
            WidgetRun widgetRun = (WidgetRun) this.f6950k.get(i11);
            if (widgetRun.f6924b.X() != 8) {
                return widgetRun.f6924b;
            }
        }
        return null;
    }

    private ConstraintWidget s() {
        for (int size = this.f6950k.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = (WidgetRun) this.f6950k.get(size);
            if (widgetRun.f6924b.X() != 8) {
                return widgetRun.f6924b;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:293:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:90:0x0153  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, u0.a
    public void a(u0.a aVar) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f11;
        boolean z10;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        float f12;
        if (this.f6930h.f6920j && this.f6931i.f6920j) {
            ConstraintWidget constraintWidgetM = this.f6924b.M();
            boolean zU1 = constraintWidgetM instanceof androidx.constraintlayout.core.widgets.d ? ((androidx.constraintlayout.core.widgets.d) constraintWidgetM).U1() : false;
            int i24 = this.f6931i.f6917g - this.f6930h.f6917g;
            int size = this.f6950k.size();
            int i25 = 0;
            while (true) {
                i11 = -1;
                i12 = 8;
                if (i25 >= size) {
                    i25 = -1;
                    break;
                } else if (((WidgetRun) this.f6950k.get(i25)).f6924b.X() != 8) {
                    break;
                } else {
                    i25++;
                }
            }
            int i26 = size - 1;
            for (int i27 = i26; i27 >= 0; i27--) {
                if (((WidgetRun) this.f6950k.get(i27)).f6924b.X() != 8) {
                    i11 = i27;
                    break;
                }
            }
            int i28 = 0;
            while (true) {
                if (i28 >= 2) {
                    i13 = 0;
                    i14 = 0;
                    i15 = 0;
                    f11 = 0.0f;
                    break;
                }
                int i29 = 0;
                i14 = 0;
                i15 = 0;
                int i30 = 0;
                f11 = 0.0f;
                while (i29 < size) {
                    WidgetRun widgetRun = (WidgetRun) this.f6950k.get(i29);
                    if (widgetRun.f6924b.X() != i12) {
                        i30++;
                        if (i29 > 0 && i29 >= i25) {
                            i14 += widgetRun.f6930h.f6916f;
                        }
                        e eVar = widgetRun.f6927e;
                        int i31 = eVar.f6917g;
                        boolean z11 = widgetRun.f6926d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z11) {
                            int i32 = this.f6928f;
                            if (i32 == 0 && !widgetRun.f6924b.f6864e.f6927e.f6920j) {
                                return;
                            }
                            if (i32 == 1 && !widgetRun.f6924b.f6866f.f6927e.f6920j) {
                                return;
                            } else {
                                i22 = i31;
                            }
                        } else {
                            i22 = i31;
                            if (widgetRun.f6923a == 1 && i28 == 0) {
                                i23 = eVar.f6961m;
                                i15++;
                            } else {
                                if (eVar.f6920j) {
                                    i23 = i22;
                                }
                                if (z11) {
                                    i14 += i23;
                                } else {
                                    i15++;
                                    f12 = widgetRun.f6924b.N0[this.f6928f];
                                    if (f12 >= 0.0f) {
                                        f11 += f12;
                                    }
                                }
                                if (i29 >= i26 && i29 < i11) {
                                    i14 += -widgetRun.f6931i.f6916f;
                                }
                            }
                            z11 = true;
                            if (z11) {
                                i15++;
                                f12 = widgetRun.f6924b.N0[this.f6928f];
                                if (f12 >= 0.0f) {
                                    f11 += f12;
                                }
                            } else {
                                i14 += i23;
                            }
                            if (i29 >= i26) {
                            }
                        }
                        i23 = i22;
                        if (z11) {
                            i15++;
                            f12 = widgetRun.f6924b.N0[this.f6928f];
                            if (f12 >= 0.0f) {
                                f11 += f12;
                            }
                        } else {
                            i14 += i23;
                        }
                        if (i29 >= i26) {
                        }
                    }
                    i29++;
                    i12 = 8;
                }
                if (i14 < i24 || i15 == 0) {
                    i13 = i30;
                    break;
                } else {
                    i28++;
                    i12 = 8;
                }
            }
            int i33 = this.f6930h.f6917g;
            if (zU1) {
                i33 = this.f6931i.f6917g;
            }
            if (i14 > i24) {
                i33 = zU1 ? i33 + ((int) (((i14 - i24) / 2.0f) + 0.5f)) : i33 - ((int) (((i14 - i24) / 2.0f) + 0.5f));
            }
            if (i15 > 0) {
                float f13 = i24 - i14;
                int i34 = (int) ((f13 / i15) + 0.5f);
                int i35 = 0;
                int i36 = 0;
                while (i35 < size) {
                    WidgetRun widgetRun2 = (WidgetRun) this.f6950k.get(i35);
                    int i37 = i34;
                    int i38 = i14;
                    if (widgetRun2.f6924b.X() != 8 && widgetRun2.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        e eVar2 = widgetRun2.f6927e;
                        if (eVar2.f6920j) {
                            zU1 = zU1;
                            i33 = i33;
                            f13 = f13;
                        } else {
                            int i39 = f11 > 0.0f ? (int) (((widgetRun2.f6924b.N0[this.f6928f] * f13) / f11) + 0.5f) : i37;
                            if (this.f6928f == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.f6924b;
                                i21 = constraintWidget.A;
                                i20 = constraintWidget.f6906z;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.f6924b;
                                int i40 = constraintWidget2.D;
                                i20 = constraintWidget2.C;
                                i21 = i40;
                            }
                            int iMax = Math.max(i20, widgetRun2.f6923a == 1 ? Math.min(i39, eVar2.f6961m) : i39);
                            if (i21 > 0) {
                                iMax = Math.min(i21, iMax);
                            }
                            if (iMax != i39) {
                                i36++;
                                i39 = iMax;
                            }
                            widgetRun2.f6927e.d(i39);
                        }
                    } else {
                        zU1 = zU1;
                        i33 = i33;
                        f13 = f13;
                    }
                    i35++;
                    i34 = i37;
                    i14 = i38;
                    i33 = i33;
                    f13 = f13;
                    zU1 = zU1;
                    i13 = i13;
                }
                z10 = zU1;
                i16 = i13;
                i17 = i33;
                int i41 = i14;
                if (i36 > 0) {
                    i15 -= i36;
                    i14 = 0;
                    for (int i42 = 0; i42 < size; i42++) {
                        WidgetRun widgetRun3 = (WidgetRun) this.f6950k.get(i42);
                        if (widgetRun3.f6924b.X() != 8) {
                            if (i42 > 0 && i42 >= i25) {
                                i14 += widgetRun3.f6930h.f6916f;
                            }
                            i14 += widgetRun3.f6927e.f6917g;
                            if (i42 < i26 && i42 < i11) {
                                i14 += -widgetRun3.f6931i.f6916f;
                            }
                        }
                    }
                } else {
                    i14 = i41;
                }
                i19 = 2;
                if (this.f6951l == 2 && i36 == 0) {
                    i18 = 0;
                    this.f6951l = 0;
                } else {
                    i18 = 0;
                }
            } else {
                z10 = zU1;
                i16 = i13;
                i17 = i33;
                i18 = 0;
                i19 = 2;
            }
            if (i14 > i24) {
                this.f6951l = i19;
            }
            if (i16 > 0 && i15 == 0 && i25 == i11) {
                this.f6951l = i19;
            }
            int i43 = this.f6951l;
            if (i43 == 1) {
                int i44 = i16;
                int i45 = i44 > 1 ? (i24 - i14) / (i44 - 1) : i44 == 1 ? (i24 - i14) / 2 : i18;
                if (i15 > 0) {
                    i45 = i18;
                }
                int i46 = i17;
                for (int i47 = i18; i47 < size; i47++) {
                    WidgetRun widgetRun4 = (WidgetRun) this.f6950k.get(z10 ? size - (i47 + 1) : i47);
                    if (widgetRun4.f6924b.X() == 8) {
                        widgetRun4.f6930h.d(i46);
                        widgetRun4.f6931i.d(i46);
                    } else {
                        if (i47 > 0) {
                            i46 = z10 ? i46 - i45 : i46 + i45;
                        }
                        if (i47 > 0 && i47 >= i25) {
                            i46 = z10 ? i46 - widgetRun4.f6930h.f6916f : i46 + widgetRun4.f6930h.f6916f;
                        }
                        if (z10) {
                            widgetRun4.f6931i.d(i46);
                        } else {
                            widgetRun4.f6930h.d(i46);
                        }
                        e eVar3 = widgetRun4.f6927e;
                        int i48 = eVar3.f6917g;
                        if (widgetRun4.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.f6923a == 1) {
                            i48 = eVar3.f6961m;
                        }
                        i46 = z10 ? i46 - i48 : i46 + i48;
                        if (z10) {
                            widgetRun4.f6930h.d(i46);
                        } else {
                            widgetRun4.f6931i.d(i46);
                        }
                        widgetRun4.f6929g = true;
                        if (i47 < i26 && i47 < i11) {
                            i46 = z10 ? i46 - (-widgetRun4.f6931i.f6916f) : i46 + (-widgetRun4.f6931i.f6916f);
                        }
                    }
                }
                return;
            }
            int i49 = i16;
            if (i43 == 0) {
                int i50 = (i24 - i14) / (i49 + 1);
                if (i15 > 0) {
                    i50 = i18;
                }
                int i51 = i17;
                for (int i52 = i18; i52 < size; i52++) {
                    WidgetRun widgetRun5 = (WidgetRun) this.f6950k.get(z10 ? size - (i52 + 1) : i52);
                    if (widgetRun5.f6924b.X() == 8) {
                        widgetRun5.f6930h.d(i51);
                        widgetRun5.f6931i.d(i51);
                    } else {
                        int i53 = z10 ? i51 - i50 : i51 + i50;
                        if (i52 > 0 && i52 >= i25) {
                            i53 = z10 ? i53 - widgetRun5.f6930h.f6916f : i53 + widgetRun5.f6930h.f6916f;
                        }
                        if (z10) {
                            widgetRun5.f6931i.d(i53);
                        } else {
                            widgetRun5.f6930h.d(i53);
                        }
                        e eVar4 = widgetRun5.f6927e;
                        int iMin = eVar4.f6917g;
                        if (widgetRun5.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.f6923a == 1) {
                            iMin = Math.min(iMin, eVar4.f6961m);
                        }
                        i51 = z10 ? i53 - iMin : i53 + iMin;
                        if (z10) {
                            widgetRun5.f6930h.d(i51);
                        } else {
                            widgetRun5.f6931i.d(i51);
                        }
                        if (i52 < i26 && i52 < i11) {
                            i51 = z10 ? i51 - (-widgetRun5.f6931i.f6916f) : i51 + (-widgetRun5.f6931i.f6916f);
                        }
                    }
                }
                return;
            }
            if (i43 == 2) {
                float fA = this.f6928f == 0 ? this.f6924b.A() : this.f6924b.T();
                if (z10) {
                    fA = 1.0f - fA;
                }
                int i54 = (int) (((i24 - i14) * fA) + 0.5f);
                if (i54 < 0 || i15 > 0) {
                    i54 = i18;
                }
                int i55 = z10 ? i17 - i54 : i17 + i54;
                for (int i56 = i18; i56 < size; i56++) {
                    WidgetRun widgetRun6 = (WidgetRun) this.f6950k.get(z10 ? size - (i56 + 1) : i56);
                    if (widgetRun6.f6924b.X() == 8) {
                        widgetRun6.f6930h.d(i55);
                        widgetRun6.f6931i.d(i55);
                    } else {
                        if (i56 > 0 && i56 >= i25) {
                            i55 = z10 ? i55 - widgetRun6.f6930h.f6916f : i55 + widgetRun6.f6930h.f6916f;
                        }
                        if (z10) {
                            widgetRun6.f6931i.d(i55);
                        } else {
                            widgetRun6.f6930h.d(i55);
                        }
                        e eVar5 = widgetRun6.f6927e;
                        int i57 = eVar5.f6917g;
                        if (widgetRun6.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.f6923a == 1) {
                            i57 = eVar5.f6961m;
                        }
                        i55 = z10 ? i55 - i57 : i55 + i57;
                        if (z10) {
                            widgetRun6.f6930h.d(i55);
                        } else {
                            widgetRun6.f6931i.d(i55);
                        }
                        if (i56 < i26 && i56 < i11) {
                            i55 = z10 ? i55 - (-widgetRun6.f6931i.f6916f) : i55 + (-widgetRun6.f6931i.f6916f);
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        Iterator it = this.f6950k.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).d();
        }
        int size = this.f6950k.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = ((WidgetRun) this.f6950k.get(0)).f6924b;
        ConstraintWidget constraintWidget2 = ((WidgetRun) this.f6950k.get(size - 1)).f6924b;
        if (this.f6928f == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.Q;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.S;
            DependencyNode dependencyNodeI = i(constraintAnchor, 0);
            int iF = constraintAnchor.f();
            ConstraintWidget constraintWidgetR = r();
            if (constraintWidgetR != null) {
                iF = constraintWidgetR.Q.f();
            }
            if (dependencyNodeI != null) {
                b(this.f6930h, dependencyNodeI, iF);
            }
            DependencyNode dependencyNodeI2 = i(constraintAnchor2, 0);
            int iF2 = constraintAnchor2.f();
            ConstraintWidget constraintWidgetS = s();
            if (constraintWidgetS != null) {
                iF2 = constraintWidgetS.S.f();
            }
            if (dependencyNodeI2 != null) {
                b(this.f6931i, dependencyNodeI2, -iF2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.R;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.T;
            DependencyNode dependencyNodeI3 = i(constraintAnchor3, 1);
            int iF3 = constraintAnchor3.f();
            ConstraintWidget constraintWidgetR2 = r();
            if (constraintWidgetR2 != null) {
                iF3 = constraintWidgetR2.R.f();
            }
            if (dependencyNodeI3 != null) {
                b(this.f6930h, dependencyNodeI3, iF3);
            }
            DependencyNode dependencyNodeI4 = i(constraintAnchor4, 1);
            int iF4 = constraintAnchor4.f();
            ConstraintWidget constraintWidgetS2 = s();
            if (constraintWidgetS2 != null) {
                iF4 = constraintWidgetS2.T.f();
            }
            if (dependencyNodeI4 != null) {
                b(this.f6931i, dependencyNodeI4, -iF4);
            }
        }
        this.f6930h.f6911a = this;
        this.f6931i.f6911a = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        for (int i11 = 0; i11 < this.f6950k.size(); i11++) {
            ((WidgetRun) this.f6950k.get(i11)).e();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.f6925c = null;
        Iterator it = this.f6950k.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long j() {
        int size = this.f6950k.size();
        long j11 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            WidgetRun widgetRun = (WidgetRun) this.f6950k.get(i11);
            j11 = j11 + ((long) widgetRun.f6930h.f6916f) + widgetRun.j() + ((long) widgetRun.f6931i.f6916f);
        }
        return j11;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        int size = this.f6950k.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (!((WidgetRun) this.f6950k.get(i11)).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.f6928f == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.f6950k) {
            sb2.append("<");
            sb2.append(widgetRun);
            sb2.append("> ");
        }
        return sb2.toString();
    }
}
