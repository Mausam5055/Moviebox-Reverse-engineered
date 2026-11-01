package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class e extends i {
    private ConstraintWidget[] H1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    private int f7041k1 = -1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f7042l1 = -1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    private int f7043m1 = -1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    private int f7044n1 = -1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    private int f7045o1 = -1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private int f7046p1 = -1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private float f7047q1 = 0.5f;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private float f7048r1 = 0.5f;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private float f7049s1 = 0.5f;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private float f7050t1 = 0.5f;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private float f7051u1 = 0.5f;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private float f7052v1 = 0.5f;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private int f7053w1 = 0;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private int f7054x1 = 0;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private int f7055y1 = 2;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    private int f7056z1 = 2;
    private int A1 = 0;
    private int B1 = -1;
    private int C1 = 0;
    private ArrayList D1 = new ArrayList();
    private ConstraintWidget[] E1 = null;
    private ConstraintWidget[] F1 = null;
    private int[] G1 = null;
    private int I1 = 0;

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f7057a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ConstraintAnchor f7060d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ConstraintAnchor f7061e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ConstraintAnchor f7062f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ConstraintAnchor f7063g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f7064h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f7065i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f7066j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f7067k;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f7073q;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ConstraintWidget f7058b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7059c = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f7068l = 0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f7069m = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f7070n = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f7071o = 0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f7072p = 0;

        public a(int i11, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i12) {
            this.f7064h = 0;
            this.f7065i = 0;
            this.f7066j = 0;
            this.f7067k = 0;
            this.f7073q = 0;
            this.f7057a = i11;
            this.f7060d = constraintAnchor;
            this.f7061e = constraintAnchor2;
            this.f7062f = constraintAnchor3;
            this.f7063g = constraintAnchor4;
            this.f7064h = e.this.D1();
            this.f7065i = e.this.F1();
            this.f7066j = e.this.E1();
            this.f7067k = e.this.C1();
            this.f7073q = i12;
        }

        private void h() {
            this.f7068l = 0;
            this.f7069m = 0;
            this.f7058b = null;
            this.f7059c = 0;
            int i11 = this.f7071o;
            for (int i12 = 0; i12 < i11 && this.f7070n + i12 < e.this.I1; i12++) {
                ConstraintWidget constraintWidget = e.this.H1[this.f7070n + i12];
                if (this.f7057a == 0) {
                    int iY = constraintWidget.Y();
                    int i13 = e.this.f7053w1;
                    if (constraintWidget.X() == 8) {
                        i13 = 0;
                    }
                    this.f7068l += iY + i13;
                    int iO2 = e.this.o2(constraintWidget, this.f7073q);
                    if (this.f7058b == null || this.f7059c < iO2) {
                        this.f7058b = constraintWidget;
                        this.f7059c = iO2;
                        this.f7069m = iO2;
                    }
                } else {
                    int iP2 = e.this.p2(constraintWidget, this.f7073q);
                    int iO3 = e.this.o2(constraintWidget, this.f7073q);
                    int i14 = e.this.f7054x1;
                    if (constraintWidget.X() == 8) {
                        i14 = 0;
                    }
                    this.f7069m += iO3 + i14;
                    if (this.f7058b == null || this.f7059c < iP2) {
                        this.f7058b = constraintWidget;
                        this.f7059c = iP2;
                        this.f7068l = iP2;
                    }
                }
            }
        }

        public void b(ConstraintWidget constraintWidget) {
            if (this.f7057a == 0) {
                int iP2 = e.this.p2(constraintWidget, this.f7073q);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f7072p++;
                    iP2 = 0;
                }
                this.f7068l += iP2 + (constraintWidget.X() != 8 ? e.this.f7053w1 : 0);
                int iO2 = e.this.o2(constraintWidget, this.f7073q);
                if (this.f7058b == null || this.f7059c < iO2) {
                    this.f7058b = constraintWidget;
                    this.f7059c = iO2;
                    this.f7069m = iO2;
                }
            } else {
                int iP3 = e.this.p2(constraintWidget, this.f7073q);
                int iO3 = e.this.o2(constraintWidget, this.f7073q);
                if (constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f7072p++;
                    iO3 = 0;
                }
                this.f7069m += iO3 + (constraintWidget.X() != 8 ? e.this.f7054x1 : 0);
                if (this.f7058b == null || this.f7059c < iP3) {
                    this.f7058b = constraintWidget;
                    this.f7059c = iP3;
                    this.f7068l = iP3;
                }
            }
            this.f7071o++;
        }

        public void c() {
            this.f7059c = 0;
            this.f7058b = null;
            this.f7068l = 0;
            this.f7069m = 0;
            this.f7070n = 0;
            this.f7071o = 0;
            this.f7072p = 0;
        }

        public void d(boolean z10, int i11, boolean z11) {
            ConstraintWidget constraintWidget;
            char c11;
            float f11;
            float f12;
            int i12 = this.f7071o;
            for (int i13 = 0; i13 < i12 && this.f7070n + i13 < e.this.I1; i13++) {
                ConstraintWidget constraintWidget2 = e.this.H1[this.f7070n + i13];
                if (constraintWidget2 != null) {
                    constraintWidget2.x0();
                }
            }
            if (i12 == 0 || this.f7058b == null) {
                return;
            }
            boolean z12 = z11 && i11 == 0;
            int i14 = -1;
            int i15 = -1;
            for (int i16 = 0; i16 < i12; i16++) {
                int i17 = z10 ? (i12 - 1) - i16 : i16;
                if (this.f7070n + i17 >= e.this.I1) {
                    break;
                }
                ConstraintWidget constraintWidget3 = e.this.H1[this.f7070n + i17];
                if (constraintWidget3 != null && constraintWidget3.X() == 0) {
                    if (i14 == -1) {
                        i14 = i16;
                    }
                    i15 = i16;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.f7057a != 0) {
                ConstraintWidget constraintWidget5 = this.f7058b;
                constraintWidget5.R0(e.this.f7041k1);
                int i18 = this.f7064h;
                if (i11 > 0) {
                    i18 += e.this.f7053w1;
                }
                if (z10) {
                    constraintWidget5.S.a(this.f7062f, i18);
                    if (z11) {
                        constraintWidget5.Q.a(this.f7060d, this.f7066j);
                    }
                    if (i11 > 0) {
                        this.f7062f.f6849d.Q.a(constraintWidget5.S, 0);
                    }
                } else {
                    constraintWidget5.Q.a(this.f7060d, i18);
                    if (z11) {
                        constraintWidget5.S.a(this.f7062f, this.f7066j);
                    }
                    if (i11 > 0) {
                        this.f7060d.f6849d.S.a(constraintWidget5.Q, 0);
                    }
                }
                for (int i19 = 0; i19 < i12 && this.f7070n + i19 < e.this.I1; i19++) {
                    ConstraintWidget constraintWidget6 = e.this.H1[this.f7070n + i19];
                    if (constraintWidget6 != null) {
                        if (i19 == 0) {
                            constraintWidget6.l(constraintWidget6.R, this.f7061e, this.f7065i);
                            int i20 = e.this.f7042l1;
                            float f13 = e.this.f7048r1;
                            if (this.f7070n == 0 && e.this.f7044n1 != -1) {
                                i20 = e.this.f7044n1;
                                f13 = e.this.f7050t1;
                            } else if (z11 && e.this.f7046p1 != -1) {
                                i20 = e.this.f7046p1;
                                f13 = e.this.f7052v1;
                            }
                            constraintWidget6.i1(i20);
                            constraintWidget6.h1(f13);
                        }
                        if (i19 == i12 - 1) {
                            constraintWidget6.l(constraintWidget6.T, this.f7063g, this.f7067k);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.R.a(constraintWidget4.T, e.this.f7054x1);
                            if (i19 == i14) {
                                constraintWidget6.R.u(this.f7065i);
                            }
                            constraintWidget4.T.a(constraintWidget6.R, 0);
                            if (i19 == i15 + 1) {
                                constraintWidget4.T.u(this.f7067k);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (z10) {
                                int i21 = e.this.f7055y1;
                                if (i21 == 0) {
                                    constraintWidget6.S.a(constraintWidget5.S, 0);
                                } else if (i21 == 1) {
                                    constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                } else if (i21 == 2) {
                                    constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                    constraintWidget6.S.a(constraintWidget5.S, 0);
                                }
                            } else {
                                int i22 = e.this.f7055y1;
                                if (i22 == 0) {
                                    constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                } else if (i22 == 1) {
                                    constraintWidget6.S.a(constraintWidget5.S, 0);
                                } else if (i22 == 2) {
                                    if (z12) {
                                        constraintWidget6.Q.a(this.f7060d, this.f7064h);
                                        constraintWidget6.S.a(this.f7062f, this.f7066j);
                                    } else {
                                        constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                        constraintWidget6.S.a(constraintWidget5.S, 0);
                                    }
                                }
                            }
                        }
                        constraintWidget4 = constraintWidget6;
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.f7058b;
            constraintWidget7.i1(e.this.f7042l1);
            int i23 = this.f7065i;
            if (i11 > 0) {
                i23 += e.this.f7054x1;
            }
            constraintWidget7.R.a(this.f7061e, i23);
            if (z11) {
                constraintWidget7.T.a(this.f7063g, this.f7067k);
            }
            if (i11 > 0) {
                this.f7061e.f6849d.T.a(constraintWidget7.R, 0);
            }
            char c12 = 3;
            if (e.this.f7056z1 != 3 || constraintWidget7.b0()) {
                constraintWidget = constraintWidget7;
                break;
            }
            int i24 = 0;
            while (true) {
                if (i24 < i12) {
                    int i25 = z10 ? (i12 - 1) - i24 : i24;
                    if (this.f7070n + i25 < e.this.I1) {
                        constraintWidget = e.this.H1[this.f7070n + i25];
                        if (constraintWidget.b0()) {
                            break;
                        } else {
                            i24++;
                        }
                    }
                }
                constraintWidget = constraintWidget7;
                break;
            }
            int i26 = 0;
            while (i26 < i12) {
                int i27 = z10 ? (i12 - 1) - i26 : i26;
                if (this.f7070n + i27 >= e.this.I1) {
                    return;
                }
                ConstraintWidget constraintWidget8 = e.this.H1[this.f7070n + i27];
                if (constraintWidget8 == null) {
                    constraintWidget8 = constraintWidget4;
                    c11 = c12;
                } else {
                    if (i26 == 0) {
                        constraintWidget8.l(constraintWidget8.Q, this.f7060d, this.f7064h);
                    }
                    if (i27 == 0) {
                        int i28 = e.this.f7041k1;
                        float f14 = e.this.f7047q1;
                        if (z10) {
                            f14 = 1.0f - f14;
                        }
                        if (this.f7070n == 0 && e.this.f7043m1 != -1) {
                            i28 = e.this.f7043m1;
                            if (z10) {
                                f12 = e.this.f7049s1;
                                f11 = 1.0f - f12;
                            } else {
                                f11 = e.this.f7049s1;
                            }
                            f14 = f11;
                        } else if (z11 && e.this.f7045o1 != -1) {
                            i28 = e.this.f7045o1;
                            if (z10) {
                                f12 = e.this.f7051u1;
                                f11 = 1.0f - f12;
                            } else {
                                f11 = e.this.f7051u1;
                            }
                            f14 = f11;
                        }
                        constraintWidget8.R0(i28);
                        constraintWidget8.Q0(f14);
                    }
                    if (i26 == i12 - 1) {
                        constraintWidget8.l(constraintWidget8.S, this.f7062f, this.f7066j);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.Q.a(constraintWidget4.S, e.this.f7053w1);
                        if (i26 == i14) {
                            constraintWidget8.Q.u(this.f7064h);
                        }
                        constraintWidget4.S.a(constraintWidget8.Q, 0);
                        if (i26 == i15 + 1) {
                            constraintWidget4.S.u(this.f7066j);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        c11 = 3;
                        if (e.this.f7056z1 == 3 && constraintWidget.b0() && constraintWidget8 != constraintWidget && constraintWidget8.b0()) {
                            constraintWidget8.U.a(constraintWidget.U, 0);
                        } else {
                            int i29 = e.this.f7056z1;
                            if (i29 == 0) {
                                constraintWidget8.R.a(constraintWidget7.R, 0);
                            } else if (i29 == 1) {
                                constraintWidget8.T.a(constraintWidget7.T, 0);
                            } else if (z12) {
                                constraintWidget8.R.a(this.f7061e, this.f7065i);
                                constraintWidget8.T.a(this.f7063g, this.f7067k);
                            } else {
                                constraintWidget8.R.a(constraintWidget7.R, 0);
                                constraintWidget8.T.a(constraintWidget7.T, 0);
                            }
                        }
                    } else {
                        c11 = 3;
                    }
                }
                i26++;
                c12 = c11;
                constraintWidget4 = constraintWidget8;
            }
        }

        public int e() {
            return this.f7057a == 1 ? this.f7069m - e.this.f7054x1 : this.f7069m;
        }

        public int f() {
            return this.f7057a == 0 ? this.f7068l - e.this.f7053w1 : this.f7068l;
        }

        public void g(int i11) {
            int i12 = this.f7072p;
            if (i12 == 0) {
                return;
            }
            int i13 = this.f7071o;
            int i14 = i11 / i12;
            for (int i15 = 0; i15 < i13 && this.f7070n + i15 < e.this.I1; i15++) {
                ConstraintWidget constraintWidget = e.this.H1[this.f7070n + i15];
                if (this.f7057a == 0) {
                    if (constraintWidget != null && constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f6900w == 0) {
                        e.this.H1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i14, constraintWidget.V(), constraintWidget.z());
                    }
                } else if (constraintWidget != null && constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f6902x == 0) {
                    e.this.H1(constraintWidget, constraintWidget.C(), constraintWidget.Y(), ConstraintWidget.DimensionBehaviour.FIXED, i14);
                }
            }
            h();
        }

        public void i(int i11) {
            this.f7070n = i11;
        }

        public void j(int i11, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i12, int i13, int i14, int i15, int i16) {
            this.f7057a = i11;
            this.f7060d = constraintAnchor;
            this.f7061e = constraintAnchor2;
            this.f7062f = constraintAnchor3;
            this.f7063g = constraintAnchor4;
            this.f7064h = i12;
            this.f7065i = i13;
            this.f7066j = i14;
            this.f7067k = i15;
            this.f7073q = i16;
        }
    }

    private void n2(boolean z10) {
        ConstraintWidget constraintWidget;
        float f11;
        int i11;
        if (this.G1 == null || this.F1 == null || this.E1 == null) {
            return;
        }
        for (int i12 = 0; i12 < this.I1; i12++) {
            this.H1[i12].x0();
        }
        int[] iArr = this.G1;
        int i13 = iArr[0];
        int i14 = iArr[1];
        float f12 = this.f7047q1;
        ConstraintWidget constraintWidget2 = null;
        int i15 = 0;
        while (i15 < i13) {
            if (z10) {
                i11 = (i13 - i15) - 1;
                f11 = 1.0f - this.f7047q1;
            } else {
                f11 = f12;
                i11 = i15;
            }
            ConstraintWidget constraintWidget3 = this.F1[i11];
            if (constraintWidget3 != null && constraintWidget3.X() != 8) {
                if (i15 == 0) {
                    constraintWidget3.l(constraintWidget3.Q, this.Q, D1());
                    constraintWidget3.R0(this.f7041k1);
                    constraintWidget3.Q0(f11);
                }
                if (i15 == i13 - 1) {
                    constraintWidget3.l(constraintWidget3.S, this.S, E1());
                }
                if (i15 > 0 && constraintWidget2 != null) {
                    constraintWidget3.l(constraintWidget3.Q, constraintWidget2.S, this.f7053w1);
                    constraintWidget2.l(constraintWidget2.S, constraintWidget3.Q, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i15++;
            f12 = f11;
        }
        for (int i16 = 0; i16 < i14; i16++) {
            ConstraintWidget constraintWidget4 = this.E1[i16];
            if (constraintWidget4 != null && constraintWidget4.X() != 8) {
                if (i16 == 0) {
                    constraintWidget4.l(constraintWidget4.R, this.R, F1());
                    constraintWidget4.i1(this.f7042l1);
                    constraintWidget4.h1(this.f7048r1);
                }
                if (i16 == i14 - 1) {
                    constraintWidget4.l(constraintWidget4.T, this.T, C1());
                }
                if (i16 > 0 && constraintWidget2 != null) {
                    constraintWidget4.l(constraintWidget4.R, constraintWidget2.T, this.f7054x1);
                    constraintWidget2.l(constraintWidget2.T, constraintWidget4.R, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i17 = 0; i17 < i13; i17++) {
            for (int i18 = 0; i18 < i14; i18++) {
                int i19 = (i18 * i13) + i17;
                if (this.C1 == 1) {
                    i19 = (i17 * i14) + i18;
                }
                ConstraintWidget[] constraintWidgetArr = this.H1;
                if (i19 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i19]) != null && constraintWidget.X() != 8) {
                    ConstraintWidget constraintWidget5 = this.F1[i17];
                    ConstraintWidget constraintWidget6 = this.E1[i18];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.l(constraintWidget.Q, constraintWidget5.Q, 0);
                        constraintWidget.l(constraintWidget.S, constraintWidget5.S, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.l(constraintWidget.R, constraintWidget6.R, 0);
                        constraintWidget.l(constraintWidget.T, constraintWidget6.T, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int o2(ConstraintWidget constraintWidget, int i11) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i12 = constraintWidget.f6902x;
            if (i12 == 0) {
                return 0;
            }
            if (i12 == 2) {
                int i13 = (int) (constraintWidget.E * i11);
                if (i13 != constraintWidget.z()) {
                    constraintWidget.c1(true);
                    H1(constraintWidget, constraintWidget.C(), constraintWidget.Y(), ConstraintWidget.DimensionBehaviour.FIXED, i13);
                }
                return i13;
            }
            if (i12 == 1) {
                return constraintWidget.z();
            }
            if (i12 == 3) {
                return (int) ((constraintWidget.Y() * constraintWidget.f6867f0) + 0.5f);
            }
        }
        return constraintWidget.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int p2(ConstraintWidget constraintWidget, int i11) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i12 = constraintWidget.f6900w;
            if (i12 == 0) {
                return 0;
            }
            if (i12 == 2) {
                int i13 = (int) (constraintWidget.B * i11);
                if (i13 != constraintWidget.Y()) {
                    constraintWidget.c1(true);
                    H1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i13, constraintWidget.V(), constraintWidget.z());
                }
                return i13;
            }
            if (i12 == 1) {
                return constraintWidget.Y();
            }
            if (i12 == 3) {
                return (int) ((constraintWidget.z() * constraintWidget.f6867f0) + 0.5f);
            }
        }
        return constraintWidget.Y();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:106:0x010f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:109:0x0117 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:117:0x011d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0059 A[ADDED_TO_REGION, EDGE_INSN: B:119:0x0059->B:42:0x0059 BREAK  A[LOOP:1: B:44:0x005c->B:124:0x005c], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x0059 A[ADDED_TO_REGION, EDGE_INSN: B:122:0x0059->B:42:0x0059 BREAK  A[LOOP:1: B:44:0x005c->B:124:0x005c], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x00d3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0060  */
    /* JADX WARN: Code duplicated, block: B:47:0x006a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0078  */
    /* JADX WARN: Code duplicated, block: B:54:0x0080  */
    /* JADX WARN: Code duplicated, block: B:57:0x0088  */
    /* JADX WARN: Code duplicated, block: B:61:0x0090  */
    /* JADX WARN: Code duplicated, block: B:64:0x0097  */
    /* JADX WARN: Code duplicated, block: B:66:0x009a  */
    /* JADX WARN: Code duplicated, block: B:68:0x009f  */
    /* JADX WARN: Code duplicated, block: B:72:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:82:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:89:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:91:0x00e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:97:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:99:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x010d -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x010f -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0115 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0117 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:45:0x005e
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private void q2(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.e.q2(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    private void r2(ConstraintWidget[] constraintWidgetArr, int i11, int i12, int i13, int[] iArr) {
        int i14;
        int i15;
        int i16;
        ConstraintAnchor constraintAnchor;
        int iE1;
        ConstraintAnchor constraintAnchor2;
        int iC1;
        int i17;
        if (i11 == 0) {
            return;
        }
        this.D1.clear();
        a aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
        this.D1.add(aVar);
        if (i12 == 0) {
            i14 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i19 < i11) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i19];
                int iP2 = p2(constraintWidget, i13);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i14++;
                }
                int i20 = i14;
                boolean z10 = (i18 == i13 || (this.f7053w1 + i18) + iP2 > i13) && aVar.f7058b != null;
                if (!z10 && i19 > 0 && (i17 = this.B1) > 0 && i19 % i17 == 0) {
                    z10 = true;
                }
                if (z10) {
                    aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
                    aVar.i(i19);
                    this.D1.add(aVar);
                } else {
                    if (i19 > 0) {
                        i18 += this.f7053w1 + iP2;
                    }
                    aVar.b(constraintWidget);
                    i19++;
                    i14 = i20;
                }
                i18 = iP2;
                aVar.b(constraintWidget);
                i19++;
                i14 = i20;
            }
        } else {
            i14 = 0;
            int i21 = 0;
            int i22 = 0;
            while (i22 < i11) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i22];
                int iO2 = o2(constraintWidget2, i13);
                if (constraintWidget2.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i14++;
                }
                int i23 = i14;
                boolean z11 = (i21 == i13 || (this.f7054x1 + i21) + iO2 > i13) && aVar.f7058b != null;
                if (!z11 && i22 > 0 && (i15 = this.B1) > 0 && i22 % i15 == 0) {
                    z11 = true;
                }
                if (z11) {
                    aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
                    aVar.i(i22);
                    this.D1.add(aVar);
                } else {
                    if (i22 > 0) {
                        i21 += this.f7054x1 + iO2;
                    }
                    aVar.b(constraintWidget2);
                    i22++;
                    i14 = i23;
                }
                i21 = iO2;
                aVar.b(constraintWidget2);
                i22++;
                i14 = i23;
            }
        }
        int size = this.D1.size();
        ConstraintAnchor constraintAnchor3 = this.Q;
        ConstraintAnchor constraintAnchor4 = this.R;
        ConstraintAnchor constraintAnchor5 = this.S;
        ConstraintAnchor constraintAnchor6 = this.T;
        int iD1 = D1();
        int iF1 = F1();
        int iE2 = E1();
        int iC2 = C1();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z12 = dimensionBehaviourC == dimensionBehaviour || V() == dimensionBehaviour;
        if (i14 > 0 && z12) {
            for (int i24 = 0; i24 < size; i24++) {
                a aVar2 = (a) this.D1.get(i24);
                if (i12 == 0) {
                    aVar2.g(i13 - aVar2.f());
                } else {
                    aVar2.g(i13 - aVar2.e());
                }
            }
        }
        int i25 = iF1;
        int i26 = iE2;
        int iE = 0;
        int iF = 0;
        int i27 = 0;
        int i28 = iD1;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i29 = iC2;
        while (i27 < size) {
            a aVar3 = (a) this.D1.get(i27);
            if (i12 == 0) {
                if (i27 < size - 1) {
                    constraintAnchor2 = ((a) this.D1.get(i27 + 1)).f7058b.R;
                    iC1 = 0;
                } else {
                    constraintAnchor2 = this.T;
                    iC1 = C1();
                }
                ConstraintAnchor constraintAnchor9 = aVar3.f7058b.T;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i30 = iE;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i31 = iF;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i16 = i27;
                aVar3.j(i12, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i28, i25, i26, iC1, i13);
                int iMax = Math.max(i31, aVar3.f());
                iE = i30 + aVar3.e();
                if (i16 > 0) {
                    iE += this.f7054x1;
                }
                constraintAnchor8 = constraintAnchor11;
                iF = iMax;
                i25 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i32 = iC1;
                constraintAnchor6 = constraintAnchor2;
                i29 = i32;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i33 = iE;
                int i34 = iF;
                i16 = i27;
                if (i16 < size - 1) {
                    constraintAnchor = ((a) this.D1.get(i16 + 1)).f7058b.Q;
                    iE1 = 0;
                } else {
                    constraintAnchor = this.S;
                    iE1 = E1();
                }
                ConstraintAnchor constraintAnchor16 = aVar3.f7058b.S;
                aVar3.j(i12, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i28, i25, iE1, i29, i13);
                iF = i34 + aVar3.f();
                int iMax2 = Math.max(i33, aVar3.e());
                if (i16 > 0) {
                    iF += this.f7053w1;
                }
                iE = iMax2;
                i28 = 0;
                i26 = iE1;
                constraintAnchor8 = constraintAnchor16;
            }
            i27 = i16 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void s2(ConstraintWidget[] constraintWidgetArr, int i11, int i12, int i13, int[] iArr) {
        int i14;
        int i15;
        int i16;
        ConstraintAnchor constraintAnchor;
        int iE1;
        ConstraintAnchor constraintAnchor2;
        int iC1;
        int i17;
        if (i11 == 0) {
            return;
        }
        this.D1.clear();
        a aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
        this.D1.add(aVar);
        if (i12 == 0) {
            int i18 = 0;
            i14 = 0;
            int i19 = 0;
            int i20 = 0;
            while (i20 < i11) {
                int i21 = i18 + 1;
                ConstraintWidget constraintWidget = constraintWidgetArr[i20];
                int iP2 = p2(constraintWidget, i13);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i14++;
                }
                int i22 = i14;
                boolean z10 = (i19 == i13 || (this.f7053w1 + i19) + iP2 > i13) && aVar.f7058b != null;
                if (!z10 && i20 > 0 && (i17 = this.B1) > 0 && i21 > i17) {
                    z10 = true;
                }
                if (z10) {
                    aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
                    aVar.i(i20);
                    this.D1.add(aVar);
                    i18 = i21;
                    i19 = iP2;
                } else {
                    i19 = i20 > 0 ? i19 + this.f7053w1 + iP2 : iP2;
                    i18 = 0;
                }
                aVar.b(constraintWidget);
                i20++;
                i14 = i22;
            }
        } else {
            int i23 = 0;
            i14 = 0;
            int i24 = 0;
            while (i24 < i11) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i24];
                int iO2 = o2(constraintWidget2, i13);
                if (constraintWidget2.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i14++;
                }
                int i25 = i14;
                boolean z11 = (i23 == i13 || (this.f7054x1 + i23) + iO2 > i13) && aVar.f7058b != null;
                if (!z11 && i24 > 0 && (i15 = this.B1) > 0 && i15 < 0) {
                    z11 = true;
                }
                if (z11) {
                    aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
                    aVar.i(i24);
                    this.D1.add(aVar);
                } else {
                    if (i24 > 0) {
                        i23 += this.f7054x1 + iO2;
                    }
                    aVar.b(constraintWidget2);
                    i24++;
                    i14 = i25;
                }
                i23 = iO2;
                aVar.b(constraintWidget2);
                i24++;
                i14 = i25;
            }
        }
        int size = this.D1.size();
        ConstraintAnchor constraintAnchor3 = this.Q;
        ConstraintAnchor constraintAnchor4 = this.R;
        ConstraintAnchor constraintAnchor5 = this.S;
        ConstraintAnchor constraintAnchor6 = this.T;
        int iD1 = D1();
        int iF1 = F1();
        int iE2 = E1();
        int iC2 = C1();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z12 = dimensionBehaviourC == dimensionBehaviour || V() == dimensionBehaviour;
        if (i14 > 0 && z12) {
            for (int i26 = 0; i26 < size; i26++) {
                a aVar2 = (a) this.D1.get(i26);
                if (i12 == 0) {
                    aVar2.g(i13 - aVar2.f());
                } else {
                    aVar2.g(i13 - aVar2.e());
                }
            }
        }
        int i27 = iF1;
        int i28 = iE2;
        int iE = 0;
        int iF = 0;
        int i29 = 0;
        int i30 = iD1;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i31 = iC2;
        while (i29 < size) {
            a aVar3 = (a) this.D1.get(i29);
            if (i12 == 0) {
                if (i29 < size - 1) {
                    constraintAnchor2 = ((a) this.D1.get(i29 + 1)).f7058b.R;
                    iC1 = 0;
                } else {
                    constraintAnchor2 = this.T;
                    iC1 = C1();
                }
                ConstraintAnchor constraintAnchor9 = aVar3.f7058b.T;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i32 = iE;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i33 = iF;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i16 = i29;
                aVar3.j(i12, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i30, i27, i28, iC1, i13);
                int iMax = Math.max(i33, aVar3.f());
                iE = i32 + aVar3.e();
                if (i16 > 0) {
                    iE += this.f7054x1;
                }
                constraintAnchor8 = constraintAnchor11;
                iF = iMax;
                i27 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i34 = iC1;
                constraintAnchor6 = constraintAnchor2;
                i31 = i34;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i35 = iE;
                int i36 = iF;
                i16 = i29;
                if (i16 < size - 1) {
                    constraintAnchor = ((a) this.D1.get(i16 + 1)).f7058b.Q;
                    iE1 = 0;
                } else {
                    constraintAnchor = this.S;
                    iE1 = E1();
                }
                ConstraintAnchor constraintAnchor16 = aVar3.f7058b.S;
                aVar3.j(i12, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i30, i27, iE1, i31, i13);
                iF = i36 + aVar3.f();
                int iMax2 = Math.max(i35, aVar3.e());
                if (i16 > 0) {
                    iF += this.f7053w1;
                }
                iE = iMax2;
                i30 = 0;
                i28 = iE1;
                constraintAnchor8 = constraintAnchor16;
            }
            i29 = i16 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void t2(ConstraintWidget[] constraintWidgetArr, int i11, int i12, int i13, int[] iArr) {
        a aVar;
        if (i11 == 0) {
            return;
        }
        if (this.D1.size() == 0) {
            aVar = new a(i12, this.Q, this.R, this.S, this.T, i13);
            this.D1.add(aVar);
        } else {
            a aVar2 = (a) this.D1.get(0);
            aVar2.c();
            aVar = aVar2;
            aVar.j(i12, this.Q, this.R, this.S, this.T, D1(), F1(), E1(), C1(), i13);
        }
        for (int i14 = 0; i14 < i11; i14++) {
            aVar.b(constraintWidgetArr[i14]);
        }
        iArr[0] = aVar.f();
        iArr[1] = aVar.e();
    }

    public void A2(int i11) {
        this.f7053w1 = i11;
    }

    public void B2(int i11) {
        this.f7041k1 = i11;
    }

    public void C2(float f11) {
        this.f7051u1 = f11;
    }

    public void D2(int i11) {
        this.f7045o1 = i11;
    }

    public void E2(float f11) {
        this.f7052v1 = f11;
    }

    public void F2(int i11) {
        this.f7046p1 = i11;
    }

    @Override // androidx.constraintlayout.core.widgets.i
    public void G1(int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        boolean z10;
        if (this.W0 > 0 && !I1()) {
            L1(0, 0);
            K1(false);
            return;
        }
        int iD1 = D1();
        int iE1 = E1();
        int iF1 = F1();
        int iC1 = C1();
        int[] iArr = new int[2];
        int i17 = (i12 - iD1) - iE1;
        int i18 = this.C1;
        if (i18 == 1) {
            i17 = (i14 - iF1) - iC1;
        }
        int i19 = i17;
        if (i18 == 0) {
            if (this.f7041k1 == -1) {
                this.f7041k1 = 0;
            }
            if (this.f7042l1 == -1) {
                this.f7042l1 = 0;
            }
        } else {
            if (this.f7041k1 == -1) {
                this.f7041k1 = 0;
            }
            if (this.f7042l1 == -1) {
                this.f7042l1 = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.V0;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            i15 = this.W0;
            if (i20 >= i15) {
                break;
            }
            if (this.V0[i20].X() == 8) {
                i21++;
            }
            i20++;
        }
        if (i21 > 0) {
            constraintWidgetArr = new ConstraintWidget[i15 - i21];
            int i22 = 0;
            for (int i23 = 0; i23 < this.W0; i23++) {
                ConstraintWidget constraintWidget = this.V0[i23];
                if (constraintWidget.X() != 8) {
                    constraintWidgetArr[i22] = constraintWidget;
                    i22++;
                }
            }
            i16 = i22;
        } else {
            i16 = i15;
        }
        this.H1 = constraintWidgetArr;
        this.I1 = i16;
        int i24 = this.A1;
        if (i24 == 0) {
            z10 = true;
            t2(constraintWidgetArr, i16, this.C1, i19, iArr);
        } else if (i24 == 1) {
            z10 = true;
            r2(constraintWidgetArr, i16, this.C1, i19, iArr);
        } else if (i24 == 2) {
            z10 = true;
            q2(constraintWidgetArr, i16, this.C1, i19, iArr);
        } else if (i24 != 3) {
            z10 = true;
        } else {
            z10 = true;
            s2(constraintWidgetArr, i16, this.C1, i19, iArr);
        }
        int iMin = iArr[0] + iD1 + iE1;
        int iMin2 = iArr[z10 ? 1 : 0] + iF1 + iC1;
        if (i11 == 1073741824) {
            iMin = i12;
        } else if (i11 == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i12);
        } else if (i11 != 0) {
            iMin = 0;
        }
        if (i13 == 1073741824) {
            iMin2 = i14;
        } else if (i13 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i14);
        } else if (i13 != 0) {
            iMin2 = 0;
        }
        L1(iMin, iMin2);
        o1(iMin);
        P0(iMin2);
        if (this.W0 <= 0) {
            z10 = false;
        }
        K1(z10);
    }

    public void G2(int i11) {
        this.B1 = i11;
    }

    public void H2(int i11) {
        this.C1 = i11;
    }

    public void I2(int i11) {
        this.f7056z1 = i11;
    }

    public void J2(float f11) {
        this.f7048r1 = f11;
    }

    public void K2(int i11) {
        this.f7054x1 = i11;
    }

    public void L2(int i11) {
        this.f7042l1 = i11;
    }

    public void M2(int i11) {
        this.A1 = i11;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        super.g(dVar, z10);
        boolean z11 = M() != null && ((d) M()).U1();
        int i11 = this.A1;
        if (i11 != 0) {
            if (i11 == 1) {
                int size = this.D1.size();
                int i12 = 0;
                while (i12 < size) {
                    ((a) this.D1.get(i12)).d(z11, i12, i12 == size + (-1));
                    i12++;
                }
            } else if (i11 == 2) {
                n2(z11);
            } else if (i11 == 3) {
                int size2 = this.D1.size();
                int i13 = 0;
                while (i13 < size2) {
                    ((a) this.D1.get(i13)).d(z11, i13, i13 == size2 + (-1));
                    i13++;
                }
            }
        } else if (this.D1.size() > 0) {
            ((a) this.D1.get(0)).d(z11, 0, true);
        }
        K1(false);
    }

    @Override // t0.b, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void n(ConstraintWidget constraintWidget, HashMap map) {
        super.n(constraintWidget, map);
        e eVar = (e) constraintWidget;
        this.f7041k1 = eVar.f7041k1;
        this.f7042l1 = eVar.f7042l1;
        this.f7043m1 = eVar.f7043m1;
        this.f7044n1 = eVar.f7044n1;
        this.f7045o1 = eVar.f7045o1;
        this.f7046p1 = eVar.f7046p1;
        this.f7047q1 = eVar.f7047q1;
        this.f7048r1 = eVar.f7048r1;
        this.f7049s1 = eVar.f7049s1;
        this.f7050t1 = eVar.f7050t1;
        this.f7051u1 = eVar.f7051u1;
        this.f7052v1 = eVar.f7052v1;
        this.f7053w1 = eVar.f7053w1;
        this.f7054x1 = eVar.f7054x1;
        this.f7055y1 = eVar.f7055y1;
        this.f7056z1 = eVar.f7056z1;
        this.A1 = eVar.A1;
        this.B1 = eVar.B1;
        this.C1 = eVar.C1;
    }

    public void u2(float f11) {
        this.f7049s1 = f11;
    }

    public void v2(int i11) {
        this.f7043m1 = i11;
    }

    public void w2(float f11) {
        this.f7050t1 = f11;
    }

    public void x2(int i11) {
        this.f7044n1 = i11;
    }

    public void y2(int i11) {
        this.f7055y1 = i11;
    }

    public void z2(float f11) {
        this.f7047q1 = f11;
    }
}
