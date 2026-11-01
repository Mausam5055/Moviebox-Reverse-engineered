package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class j extends WidgetRun {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int[] f6965k = new int[2];

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6966a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f6966a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6966a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6966a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public j(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.f6930h.f6915e = DependencyNode.Type.LEFT;
        this.f6931i.f6915e = DependencyNode.Type.RIGHT;
        this.f6928f = 0;
    }

    private void q(int[] iArr, int i11, int i12, int i13, int i14, float f11, int i15) {
        int i16 = i12 - i11;
        int i17 = i14 - i13;
        if (i15 != -1) {
            if (i15 == 0) {
                iArr[0] = (int) ((i17 * f11) + 0.5f);
                iArr[1] = i17;
                return;
            } else {
                if (i15 != 1) {
                    return;
                }
                iArr[0] = i16;
                iArr[1] = (int) ((i16 * f11) + 0.5f);
                return;
            }
        }
        int i18 = (int) ((i17 * f11) + 0.5f);
        int i19 = (int) ((i16 / f11) + 0.5f);
        if (i18 <= i16) {
            iArr[0] = i18;
            iArr[1] = i17;
        } else if (i19 <= i17) {
            iArr[0] = i16;
            iArr[1] = i19;
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x02df  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ee  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, u0.a
    public void a(u0.a aVar) {
        int iG;
        int i11;
        int iG2;
        float f11;
        float fX;
        float fX2;
        int i12;
        int i13 = a.f6966a[this.f6932j.ordinal()];
        if (i13 == 1) {
            p(aVar);
        } else if (i13 == 2) {
            o(aVar);
        } else if (i13 == 3) {
            ConstraintWidget constraintWidget = this.f6924b;
            n(aVar, constraintWidget.Q, constraintWidget.S, 0);
            return;
        }
        if (!this.f6927e.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f6924b;
            int i14 = constraintWidget2.f6900w;
            if (i14 == 2) {
                ConstraintWidget constraintWidgetM = constraintWidget2.M();
                if (constraintWidgetM != null) {
                    e eVar = constraintWidgetM.f6864e.f6927e;
                    if (eVar.f6920j) {
                        this.f6927e.d((int) ((eVar.f6917g * this.f6924b.B) + 0.5f));
                    }
                }
            } else if (i14 == 3) {
                int i15 = constraintWidget2.f6902x;
                if (i15 == 0 || i15 == 3) {
                    l lVar = constraintWidget2.f6866f;
                    DependencyNode dependencyNode = lVar.f6930h;
                    DependencyNode dependencyNode2 = lVar.f6931i;
                    boolean z10 = constraintWidget2.Q.f6851f != null;
                    boolean z11 = constraintWidget2.R.f6851f != null;
                    boolean z12 = constraintWidget2.S.f6851f != null;
                    boolean z13 = constraintWidget2.T.f6851f != null;
                    int iY = constraintWidget2.y();
                    if (z10 && z11 && z12 && z13) {
                        float fX3 = this.f6924b.x();
                        if (dependencyNode.f6920j && dependencyNode2.f6920j) {
                            DependencyNode dependencyNode3 = this.f6930h;
                            if (dependencyNode3.f6913c && this.f6931i.f6913c) {
                                q(f6965k, ((DependencyNode) dependencyNode3.f6922l.get(0)).f6917g + this.f6930h.f6916f, ((DependencyNode) this.f6931i.f6922l.get(0)).f6917g - this.f6931i.f6916f, dependencyNode.f6917g + dependencyNode.f6916f, dependencyNode2.f6917g - dependencyNode2.f6916f, fX3, iY);
                                this.f6927e.d(f6965k[0]);
                                this.f6924b.f6866f.f6927e.d(f6965k[1]);
                                return;
                            }
                            return;
                        }
                        DependencyNode dependencyNode4 = this.f6930h;
                        if (dependencyNode4.f6920j) {
                            DependencyNode dependencyNode5 = this.f6931i;
                            if (dependencyNode5.f6920j) {
                                if (!dependencyNode.f6913c || !dependencyNode2.f6913c) {
                                    return;
                                }
                                q(f6965k, dependencyNode4.f6917g + dependencyNode4.f6916f, dependencyNode5.f6917g - dependencyNode5.f6916f, ((DependencyNode) dependencyNode.f6922l.get(0)).f6917g + dependencyNode.f6916f, ((DependencyNode) dependencyNode2.f6922l.get(0)).f6917g - dependencyNode2.f6916f, fX3, iY);
                                this.f6927e.d(f6965k[0]);
                                this.f6924b.f6866f.f6927e.d(f6965k[1]);
                            }
                        }
                        DependencyNode dependencyNode6 = this.f6930h;
                        if (!dependencyNode6.f6913c || !this.f6931i.f6913c || !dependencyNode.f6913c || !dependencyNode2.f6913c) {
                            return;
                        }
                        q(f6965k, ((DependencyNode) dependencyNode6.f6922l.get(0)).f6917g + this.f6930h.f6916f, ((DependencyNode) this.f6931i.f6922l.get(0)).f6917g - this.f6931i.f6916f, ((DependencyNode) dependencyNode.f6922l.get(0)).f6917g + dependencyNode.f6916f, ((DependencyNode) dependencyNode2.f6922l.get(0)).f6917g - dependencyNode2.f6916f, fX3, iY);
                        this.f6927e.d(f6965k[0]);
                        this.f6924b.f6866f.f6927e.d(f6965k[1]);
                    } else if (z10 && z12) {
                        if (!this.f6930h.f6913c || !this.f6931i.f6913c) {
                            return;
                        }
                        float fX4 = this.f6924b.x();
                        int i16 = ((DependencyNode) this.f6930h.f6922l.get(0)).f6917g + this.f6930h.f6916f;
                        int i17 = ((DependencyNode) this.f6931i.f6922l.get(0)).f6917g - this.f6931i.f6916f;
                        if (iY == -1 || iY == 0) {
                            int iG3 = g(i17 - i16, 0);
                            int i18 = (int) ((iG3 * fX4) + 0.5f);
                            int iG4 = g(i18, 1);
                            if (i18 != iG4) {
                                iG3 = (int) ((iG4 / fX4) + 0.5f);
                            }
                            this.f6927e.d(iG3);
                            this.f6924b.f6866f.f6927e.d(iG4);
                        } else if (iY == 1) {
                            int iG5 = g(i17 - i16, 0);
                            int i19 = (int) ((iG5 / fX4) + 0.5f);
                            int iG6 = g(i19, 1);
                            if (i19 != iG6) {
                                iG5 = (int) ((iG6 * fX4) + 0.5f);
                            }
                            this.f6927e.d(iG5);
                            this.f6924b.f6866f.f6927e.d(iG6);
                        }
                    } else if (z11 && z13) {
                        if (!dependencyNode.f6913c || !dependencyNode2.f6913c) {
                            return;
                        }
                        float fX5 = this.f6924b.x();
                        int i20 = ((DependencyNode) dependencyNode.f6922l.get(0)).f6917g + dependencyNode.f6916f;
                        int i21 = ((DependencyNode) dependencyNode2.f6922l.get(0)).f6917g - dependencyNode2.f6916f;
                        if (iY == -1) {
                            iG = g(i21 - i20, 1);
                            i11 = (int) ((iG / fX5) + 0.5f);
                            iG2 = g(i11, 0);
                            if (i11 != iG2) {
                                iG = (int) ((iG2 * fX5) + 0.5f);
                            }
                            this.f6927e.d(iG2);
                            this.f6924b.f6866f.f6927e.d(iG);
                        } else if (iY == 0) {
                            int iG7 = g(i21 - i20, 1);
                            int i22 = (int) ((iG7 * fX5) + 0.5f);
                            int iG8 = g(i22, 0);
                            if (i22 != iG8) {
                                iG7 = (int) ((iG8 / fX5) + 0.5f);
                            }
                            this.f6927e.d(iG8);
                            this.f6924b.f6866f.f6927e.d(iG7);
                        } else if (iY == 1) {
                            iG = g(i21 - i20, 1);
                            i11 = (int) ((iG / fX5) + 0.5f);
                            iG2 = g(i11, 0);
                            if (i11 != iG2) {
                                iG = (int) ((iG2 * fX5) + 0.5f);
                            }
                            this.f6927e.d(iG2);
                            this.f6924b.f6866f.f6927e.d(iG);
                        }
                    }
                } else {
                    int iY2 = constraintWidget2.y();
                    if (iY2 != -1) {
                        if (iY2 == 0) {
                            ConstraintWidget constraintWidget3 = this.f6924b;
                            fX2 = constraintWidget3.f6866f.f6927e.f6917g / constraintWidget3.x();
                            i12 = (int) (fX2 + 0.5f);
                        } else if (iY2 != 1) {
                            i12 = 0;
                        } else {
                            ConstraintWidget constraintWidget4 = this.f6924b;
                            f11 = constraintWidget4.f6866f.f6927e.f6917g;
                            fX = constraintWidget4.x();
                        }
                        this.f6927e.d(i12);
                    } else {
                        ConstraintWidget constraintWidget5 = this.f6924b;
                        f11 = constraintWidget5.f6866f.f6927e.f6917g;
                        fX = constraintWidget5.x();
                    }
                    fX2 = f11 * fX;
                    i12 = (int) (fX2 + 0.5f);
                    this.f6927e.d(i12);
                }
            }
        }
        DependencyNode dependencyNode7 = this.f6930h;
        if (dependencyNode7.f6913c) {
            DependencyNode dependencyNode8 = this.f6931i;
            if (dependencyNode8.f6913c) {
                if (dependencyNode7.f6920j && dependencyNode8.f6920j && this.f6927e.f6920j) {
                    return;
                }
                if (!this.f6927e.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.f6924b;
                    if (constraintWidget6.f6900w == 0 && !constraintWidget6.k0()) {
                        DependencyNode dependencyNode9 = (DependencyNode) this.f6930h.f6922l.get(0);
                        DependencyNode dependencyNode10 = (DependencyNode) this.f6931i.f6922l.get(0);
                        int i23 = dependencyNode9.f6917g;
                        DependencyNode dependencyNode11 = this.f6930h;
                        int i24 = i23 + dependencyNode11.f6916f;
                        int i25 = dependencyNode10.f6917g + this.f6931i.f6916f;
                        dependencyNode11.d(i24);
                        this.f6931i.d(i25);
                        this.f6927e.d(i25 - i24);
                        return;
                    }
                }
                if (!this.f6927e.f6920j && this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f6923a == 1 && this.f6930h.f6922l.size() > 0 && this.f6931i.f6922l.size() > 0) {
                    int iMin = Math.min((((DependencyNode) this.f6931i.f6922l.get(0)).f6917g + this.f6931i.f6916f) - (((DependencyNode) this.f6930h.f6922l.get(0)).f6917g + this.f6930h.f6916f), this.f6927e.f6961m);
                    ConstraintWidget constraintWidget7 = this.f6924b;
                    int i26 = constraintWidget7.A;
                    int iMax = Math.max(constraintWidget7.f6906z, iMin);
                    if (i26 > 0) {
                        iMax = Math.min(i26, iMax);
                    }
                    this.f6927e.d(iMax);
                }
                if (this.f6927e.f6920j) {
                    DependencyNode dependencyNode12 = (DependencyNode) this.f6930h.f6922l.get(0);
                    DependencyNode dependencyNode13 = (DependencyNode) this.f6931i.f6922l.get(0);
                    int i27 = dependencyNode12.f6917g + this.f6930h.f6916f;
                    int i28 = dependencyNode13.f6917g + this.f6931i.f6916f;
                    float fA = this.f6924b.A();
                    if (dependencyNode12 == dependencyNode13) {
                        i27 = dependencyNode12.f6917g;
                        i28 = dependencyNode13.f6917g;
                        fA = 0.5f;
                    }
                    this.f6930h.d((int) (i27 + 0.5f + (((i28 - i27) - this.f6927e.f6917g) * fA)));
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
            this.f6927e.d(constraintWidget.Y());
        }
        if (this.f6927e.f6920j) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f6926d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour == dimensionBehaviour2 && (constraintWidgetM = this.f6924b.M()) != null && (constraintWidgetM.C() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetM.C() == dimensionBehaviour2)) {
                b(this.f6930h, constraintWidgetM.f6864e.f6930h, this.f6924b.Q.f());
                b(this.f6931i, constraintWidgetM.f6864e.f6931i, -this.f6924b.S.f());
                return;
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC = this.f6924b.C();
            this.f6926d = dimensionBehaviourC;
            if (dimensionBehaviourC != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (dimensionBehaviourC == dimensionBehaviour3 && (constraintWidgetM2 = this.f6924b.M()) != null && (constraintWidgetM2.C() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetM2.C() == dimensionBehaviour3)) {
                    int iY = (constraintWidgetM2.Y() - this.f6924b.Q.f()) - this.f6924b.S.f();
                    b(this.f6930h, constraintWidgetM2.f6864e.f6930h, this.f6924b.Q.f());
                    b(this.f6931i, constraintWidgetM2.f6864e.f6931i, -this.f6924b.S.f());
                    this.f6927e.d(iY);
                    return;
                }
                if (this.f6926d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f6927e.d(this.f6924b.Y());
                }
            }
        }
        e eVar = this.f6927e;
        if (eVar.f6920j) {
            ConstraintWidget constraintWidget2 = this.f6924b;
            if (constraintWidget2.f6856a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.Y;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f6851f;
                if (constraintAnchor2 != null && constraintAnchorArr[1].f6851f != null) {
                    if (constraintWidget2.k0()) {
                        this.f6930h.f6916f = this.f6924b.Y[0].f();
                        this.f6931i.f6916f = -this.f6924b.Y[1].f();
                        return;
                    }
                    DependencyNode dependencyNodeH = h(this.f6924b.Y[0]);
                    if (dependencyNodeH != null) {
                        b(this.f6930h, dependencyNodeH, this.f6924b.Y[0].f());
                    }
                    DependencyNode dependencyNodeH2 = h(this.f6924b.Y[1]);
                    if (dependencyNodeH2 != null) {
                        b(this.f6931i, dependencyNodeH2, -this.f6924b.Y[1].f());
                    }
                    this.f6930h.f6912b = true;
                    this.f6931i.f6912b = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        b(this.f6930h, dependencyNodeH3, this.f6924b.Y[0].f());
                        b(this.f6931i, this.f6930h, this.f6927e.f6917g);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.f6851f != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        b(this.f6931i, dependencyNodeH4, -this.f6924b.Y[1].f());
                        b(this.f6930h, this.f6931i, -this.f6927e.f6917g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof t0.a) || constraintWidget2.M() == null || this.f6924b.q(ConstraintAnchor.Type.CENTER).f6851f != null) {
                    return;
                }
                b(this.f6930h, this.f6924b.M().f6864e.f6930h, this.f6924b.Z());
                b(this.f6931i, this.f6930h, this.f6927e.f6917g);
                return;
            }
        }
        if (this.f6926d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f6924b;
            int i11 = constraintWidget3.f6900w;
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
            } else if (i11 == 3) {
                if (constraintWidget3.f6902x == 3) {
                    this.f6930h.f6911a = this;
                    this.f6931i.f6911a = this;
                    l lVar = constraintWidget3.f6866f;
                    lVar.f6930h.f6911a = this;
                    lVar.f6931i.f6911a = this;
                    eVar.f6911a = this;
                    if (constraintWidget3.m0()) {
                        this.f6927e.f6922l.add(this.f6924b.f6866f.f6927e);
                        this.f6924b.f6866f.f6927e.f6921k.add(this.f6927e);
                        l lVar2 = this.f6924b.f6866f;
                        lVar2.f6927e.f6911a = this;
                        this.f6927e.f6922l.add(lVar2.f6930h);
                        this.f6927e.f6922l.add(this.f6924b.f6866f.f6931i);
                        this.f6924b.f6866f.f6930h.f6921k.add(this.f6927e);
                        this.f6924b.f6866f.f6931i.f6921k.add(this.f6927e);
                    } else if (this.f6924b.k0()) {
                        this.f6924b.f6866f.f6927e.f6922l.add(this.f6927e);
                        this.f6927e.f6921k.add(this.f6924b.f6866f.f6927e);
                    } else {
                        this.f6924b.f6866f.f6927e.f6922l.add(this.f6927e);
                    }
                } else {
                    e eVar4 = constraintWidget3.f6866f.f6927e;
                    eVar.f6922l.add(eVar4);
                    eVar4.f6921k.add(this.f6927e);
                    this.f6924b.f6866f.f6930h.f6921k.add(this.f6927e);
                    this.f6924b.f6866f.f6931i.f6921k.add(this.f6927e);
                    e eVar5 = this.f6927e;
                    eVar5.f6912b = true;
                    eVar5.f6921k.add(this.f6930h);
                    this.f6927e.f6921k.add(this.f6931i);
                    this.f6930h.f6922l.add(this.f6927e);
                    this.f6931i.f6922l.add(this.f6927e);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.f6924b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.Y;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.f6851f;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].f6851f != null) {
            if (constraintWidget4.k0()) {
                this.f6930h.f6916f = this.f6924b.Y[0].f();
                this.f6931i.f6916f = -this.f6924b.Y[1].f();
                return;
            }
            DependencyNode dependencyNodeH5 = h(this.f6924b.Y[0]);
            DependencyNode dependencyNodeH6 = h(this.f6924b.Y[1]);
            if (dependencyNodeH5 != null) {
                dependencyNodeH5.b(this);
            }
            if (dependencyNodeH6 != null) {
                dependencyNodeH6.b(this);
            }
            this.f6932j = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode dependencyNodeH7 = h(constraintAnchor4);
            if (dependencyNodeH7 != null) {
                b(this.f6930h, dependencyNodeH7, this.f6924b.Y[0].f());
                c(this.f6931i, this.f6930h, 1, this.f6927e);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.f6851f != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchor6);
            if (dependencyNodeH8 != null) {
                b(this.f6931i, dependencyNodeH8, -this.f6924b.Y[1].f());
                c(this.f6930h, this.f6931i, -1, this.f6927e);
                return;
            }
            return;
        }
        if ((constraintWidget4 instanceof t0.a) || constraintWidget4.M() == null) {
            return;
        }
        b(this.f6930h, this.f6924b.M().f6864e.f6930h, this.f6924b.Z());
        c(this.f6931i, this.f6930h, 1, this.f6927e);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        DependencyNode dependencyNode = this.f6930h;
        if (dependencyNode.f6920j) {
            this.f6924b.q1(dependencyNode.f6917g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.f6925c = null;
        this.f6930h.c();
        this.f6931i.c();
        this.f6927e.c();
        this.f6929g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return this.f6926d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f6924b.f6900w == 0;
    }

    void r() {
        this.f6929g = false;
        this.f6930h.c();
        this.f6930h.f6920j = false;
        this.f6931i.c();
        this.f6931i.f6920j = false;
        this.f6927e.f6920j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f6924b.v();
    }
}
