package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b.a f6962a = new b.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f6963b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f6964c = 0;

    private static boolean a(int i11, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourV = constraintWidget.V();
        androidx.constraintlayout.core.widgets.d dVar = constraintWidget.M() != null ? (androidx.constraintlayout.core.widgets.d) constraintWidget.M() : null;
        if (dVar != null) {
            dVar.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (dVar != null) {
            dVar.V();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        boolean z10 = dimensionBehaviourC == dimensionBehaviour5 || constraintWidget.p0() || dimensionBehaviourC == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviourC == (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.f6900w == 0 && constraintWidget.f6867f0 == 0.0f && constraintWidget.c0(0)) || (dimensionBehaviourC == dimensionBehaviour2 && constraintWidget.f6900w == 1 && constraintWidget.f0(0, constraintWidget.Y()));
        boolean z11 = dimensionBehaviourV == dimensionBehaviour5 || constraintWidget.q0() || dimensionBehaviourV == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviourV == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.f6902x == 0 && constraintWidget.f6867f0 == 0.0f && constraintWidget.c0(1)) || (dimensionBehaviourV == dimensionBehaviour && constraintWidget.f6902x == 1 && constraintWidget.f0(1, constraintWidget.z()));
        if (constraintWidget.f6867f0 <= 0.0f || !(z10 || z11)) {
            return z10 && z11;
        }
        return true;
    }

    private static void b(int i11, ConstraintWidget constraintWidget, b.InterfaceC0060b interfaceC0060b, boolean z10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.i0()) {
            return;
        }
        boolean z11 = true;
        f6963b++;
        if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.d) && constraintWidget.o0()) {
            int i12 = i11 + 1;
            if (a(i12, constraintWidget)) {
                androidx.constraintlayout.core.widgets.d.X1(i12, constraintWidget, interfaceC0060b, new b.a(), b.a.f6937k);
            }
        }
        ConstraintAnchor constraintAnchorQ = constraintWidget.q(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorQ2 = constraintWidget.q(ConstraintAnchor.Type.RIGHT);
        int iE = constraintAnchorQ.e();
        int iE2 = constraintAnchorQ2.e();
        if (constraintAnchorQ.d() != null && constraintAnchorQ.n()) {
            for (ConstraintAnchor constraintAnchor5 : constraintAnchorQ.d()) {
                ConstraintWidget constraintWidget2 = constraintAnchor5.f6849d;
                int i13 = i11 + 1;
                boolean zA = a(i13, constraintWidget2);
                if (constraintWidget2.o0() && zA) {
                    androidx.constraintlayout.core.widgets.d.X1(i13, constraintWidget2, interfaceC0060b, new b.a(), b.a.f6937k);
                }
                boolean z12 = ((constraintAnchor5 == constraintWidget2.Q && (constraintAnchor4 = constraintWidget2.S.f6851f) != null && constraintAnchor4.n()) || (constraintAnchor5 == constraintWidget2.S && (constraintAnchor3 = constraintWidget2.Q.f6851f) != null && constraintAnchor3.n())) ? z11 : false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget2.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourC != dimensionBehaviour || zA) {
                    if (!constraintWidget2.o0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.Q;
                        if (constraintAnchor5 == constraintAnchor6 && constraintWidget2.S.f6851f == null) {
                            int iF = constraintAnchor6.f() + iE;
                            constraintWidget2.J0(iF, constraintWidget2.Y() + iF);
                            b(i13, constraintWidget2, interfaceC0060b, z10);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.S;
                            if (constraintAnchor5 == constraintAnchor7 && constraintAnchor6.f6851f == null) {
                                int iF2 = iE - constraintAnchor7.f();
                                constraintWidget2.J0(iF2 - constraintWidget2.Y(), iF2);
                                b(i13, constraintWidget2, interfaceC0060b, z10);
                            } else if (z12 && !constraintWidget2.k0()) {
                                d(i13, interfaceC0060b, constraintWidget2, z10);
                            }
                        }
                    }
                } else if (constraintWidget2.C() == dimensionBehaviour && constraintWidget2.A >= 0 && constraintWidget2.f6906z >= 0 && ((constraintWidget2.X() == 8 || (constraintWidget2.f6900w == 0 && constraintWidget2.x() == 0.0f)) && !constraintWidget2.k0() && !constraintWidget2.n0() && z12 && !constraintWidget2.k0())) {
                    e(i13, constraintWidget, interfaceC0060b, constraintWidget2, z10);
                }
                z11 = true;
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
            return;
        }
        if (constraintAnchorQ2.d() != null && constraintAnchorQ2.n()) {
            for (ConstraintAnchor constraintAnchor8 : constraintAnchorQ2.d()) {
                ConstraintWidget constraintWidget3 = constraintAnchor8.f6849d;
                int i14 = i11 + 1;
                boolean zA2 = a(i14, constraintWidget3);
                if (constraintWidget3.o0() && zA2) {
                    androidx.constraintlayout.core.widgets.d.X1(i14, constraintWidget3, interfaceC0060b, new b.a(), b.a.f6937k);
                }
                boolean z13 = (constraintAnchor8 == constraintWidget3.Q && (constraintAnchor2 = constraintWidget3.S.f6851f) != null && constraintAnchor2.n()) || (constraintAnchor8 == constraintWidget3.S && (constraintAnchor = constraintWidget3.Q.f6851f) != null && constraintAnchor.n());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC2 = constraintWidget3.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourC2 != dimensionBehaviour2 || zA2) {
                    if (!constraintWidget3.o0()) {
                        ConstraintAnchor constraintAnchor9 = constraintWidget3.Q;
                        if (constraintAnchor8 == constraintAnchor9 && constraintWidget3.S.f6851f == null) {
                            int iF3 = constraintAnchor9.f() + iE2;
                            constraintWidget3.J0(iF3, constraintWidget3.Y() + iF3);
                            b(i14, constraintWidget3, interfaceC0060b, z10);
                        } else {
                            ConstraintAnchor constraintAnchor10 = constraintWidget3.S;
                            if (constraintAnchor8 == constraintAnchor10 && constraintAnchor9.f6851f == null) {
                                int iF4 = iE2 - constraintAnchor10.f();
                                constraintWidget3.J0(iF4 - constraintWidget3.Y(), iF4);
                                b(i14, constraintWidget3, interfaceC0060b, z10);
                            } else if (z13 && !constraintWidget3.k0()) {
                                d(i14, interfaceC0060b, constraintWidget3, z10);
                            }
                        }
                    }
                } else if (constraintWidget3.C() == dimensionBehaviour2 && constraintWidget3.A >= 0 && constraintWidget3.f6906z >= 0 && (constraintWidget3.X() == 8 || (constraintWidget3.f6900w == 0 && constraintWidget3.x() == 0.0f))) {
                    if (!constraintWidget3.k0() && !constraintWidget3.n0() && z13 && !constraintWidget3.k0()) {
                        e(i14, constraintWidget, interfaceC0060b, constraintWidget3, z10);
                    }
                }
            }
        }
        constraintWidget.s0();
    }

    private static void c(int i11, androidx.constraintlayout.core.widgets.a aVar, b.InterfaceC0060b interfaceC0060b, int i12, boolean z10) {
        if (aVar.x1()) {
            if (i12 == 0) {
                b(i11 + 1, aVar, interfaceC0060b, z10);
            } else {
                i(i11 + 1, aVar, interfaceC0060b);
            }
        }
    }

    private static void d(int i11, b.InterfaceC0060b interfaceC0060b, ConstraintWidget constraintWidget, boolean z10) {
        float fA = constraintWidget.A();
        int iE = constraintWidget.Q.f6851f.e();
        int iE2 = constraintWidget.S.f6851f.e();
        int iF = constraintWidget.Q.f() + iE;
        int iF2 = iE2 - constraintWidget.S.f();
        if (iE == iE2) {
            fA = 0.5f;
        } else {
            iE = iF;
            iE2 = iF2;
        }
        int iY = constraintWidget.Y();
        int i12 = (iE2 - iE) - iY;
        if (iE > iE2) {
            i12 = (iE - iE2) - iY;
        }
        int i13 = ((int) (i12 > 0 ? (fA * i12) + 0.5f : fA * i12)) + iE;
        int i14 = i13 + iY;
        if (iE > iE2) {
            i14 = i13 - iY;
        }
        constraintWidget.J0(i13, i14);
        b(i11 + 1, constraintWidget, interfaceC0060b, z10);
    }

    private static void e(int i11, ConstraintWidget constraintWidget, b.InterfaceC0060b interfaceC0060b, ConstraintWidget constraintWidget2, boolean z10) {
        float fA = constraintWidget2.A();
        int iE = constraintWidget2.Q.f6851f.e() + constraintWidget2.Q.f();
        int iE2 = constraintWidget2.S.f6851f.e() - constraintWidget2.S.f();
        if (iE2 >= iE) {
            int iY = constraintWidget2.Y();
            if (constraintWidget2.X() != 8) {
                int i12 = constraintWidget2.f6900w;
                if (i12 == 2) {
                    iY = (int) (constraintWidget2.A() * 0.5f * (constraintWidget instanceof androidx.constraintlayout.core.widgets.d ? constraintWidget.Y() : constraintWidget.M().Y()));
                } else if (i12 == 0) {
                    iY = iE2 - iE;
                }
                iY = Math.max(constraintWidget2.f6906z, iY);
                int i13 = constraintWidget2.A;
                if (i13 > 0) {
                    iY = Math.min(i13, iY);
                }
            }
            int i14 = iE + ((int) ((fA * ((iE2 - iE) - iY)) + 0.5f));
            constraintWidget2.J0(i14, iY + i14);
            b(i11 + 1, constraintWidget2, interfaceC0060b, z10);
        }
    }

    private static void f(int i11, b.InterfaceC0060b interfaceC0060b, ConstraintWidget constraintWidget) {
        float fT = constraintWidget.T();
        int iE = constraintWidget.R.f6851f.e();
        int iE2 = constraintWidget.T.f6851f.e();
        int iF = constraintWidget.R.f() + iE;
        int iF2 = iE2 - constraintWidget.T.f();
        if (iE == iE2) {
            fT = 0.5f;
        } else {
            iE = iF;
            iE2 = iF2;
        }
        int iZ = constraintWidget.z();
        int i12 = (iE2 - iE) - iZ;
        if (iE > iE2) {
            i12 = (iE - iE2) - iZ;
        }
        int i13 = (int) (i12 > 0 ? (fT * i12) + 0.5f : fT * i12);
        int i14 = iE + i13;
        int i15 = i14 + iZ;
        if (iE > iE2) {
            i14 = iE - i13;
            i15 = i14 - iZ;
        }
        constraintWidget.M0(i14, i15);
        i(i11 + 1, constraintWidget, interfaceC0060b);
    }

    private static void g(int i11, ConstraintWidget constraintWidget, b.InterfaceC0060b interfaceC0060b, ConstraintWidget constraintWidget2) {
        float fT = constraintWidget2.T();
        int iE = constraintWidget2.R.f6851f.e() + constraintWidget2.R.f();
        int iE2 = constraintWidget2.T.f6851f.e() - constraintWidget2.T.f();
        if (iE2 >= iE) {
            int iZ = constraintWidget2.z();
            if (constraintWidget2.X() != 8) {
                int i12 = constraintWidget2.f6902x;
                if (i12 == 2) {
                    iZ = (int) (fT * 0.5f * (constraintWidget instanceof androidx.constraintlayout.core.widgets.d ? constraintWidget.z() : constraintWidget.M().z()));
                } else if (i12 == 0) {
                    iZ = iE2 - iE;
                }
                iZ = Math.max(constraintWidget2.C, iZ);
                int i13 = constraintWidget2.D;
                if (i13 > 0) {
                    iZ = Math.min(i13, iZ);
                }
            }
            int i14 = iE + ((int) ((fT * ((iE2 - iE) - iZ)) + 0.5f));
            constraintWidget2.M0(i14, iZ + i14);
            i(i11 + 1, constraintWidget2, interfaceC0060b);
        }
    }

    public static void h(androidx.constraintlayout.core.widgets.d dVar, b.InterfaceC0060b interfaceC0060b) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = dVar.C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourV = dVar.V();
        f6963b = 0;
        f6964c = 0;
        dVar.y0();
        ArrayList arrayListV1 = dVar.v1();
        int size = arrayListV1.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((ConstraintWidget) arrayListV1.get(i11)).y0();
        }
        boolean zU1 = dVar.U1();
        if (dimensionBehaviourC == ConstraintWidget.DimensionBehaviour.FIXED) {
            dVar.J0(0, dVar.Y());
        } else {
            dVar.K0(0);
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i12 = 0; i12 < size; i12++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayListV1.get(i12);
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
                androidx.constraintlayout.core.widgets.f fVar = (androidx.constraintlayout.core.widgets.f) constraintWidget;
                if (fVar.w1() == 1) {
                    if (fVar.x1() != -1) {
                        fVar.A1(fVar.x1());
                    } else if (fVar.y1() != -1 && dVar.p0()) {
                        fVar.A1(dVar.Y() - fVar.y1());
                    } else if (dVar.p0()) {
                        fVar.A1((int) ((fVar.z1() * dVar.Y()) + 0.5f));
                    }
                    z10 = true;
                }
            } else if ((constraintWidget instanceof androidx.constraintlayout.core.widgets.a) && ((androidx.constraintlayout.core.widgets.a) constraintWidget).B1() == 0) {
                z11 = true;
            }
        }
        if (z10) {
            for (int i13 = 0; i13 < size; i13++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) arrayListV1.get(i13);
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.f) {
                    androidx.constraintlayout.core.widgets.f fVar2 = (androidx.constraintlayout.core.widgets.f) constraintWidget2;
                    if (fVar2.w1() == 1) {
                        b(0, fVar2, interfaceC0060b, zU1);
                    }
                }
            }
        }
        b(0, dVar, interfaceC0060b, zU1);
        if (z11) {
            for (int i14 = 0; i14 < size; i14++) {
                ConstraintWidget constraintWidget3 = (ConstraintWidget) arrayListV1.get(i14);
                if (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.a) {
                    androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget3;
                    if (aVar.B1() == 0) {
                        c(0, aVar, interfaceC0060b, 0, zU1);
                    }
                }
            }
        }
        if (dimensionBehaviourV == ConstraintWidget.DimensionBehaviour.FIXED) {
            dVar.M0(0, dVar.z());
        } else {
            dVar.L0(0);
        }
        boolean z12 = false;
        boolean z13 = false;
        for (int i15 = 0; i15 < size; i15++) {
            ConstraintWidget constraintWidget4 = (ConstraintWidget) arrayListV1.get(i15);
            if (constraintWidget4 instanceof androidx.constraintlayout.core.widgets.f) {
                androidx.constraintlayout.core.widgets.f fVar3 = (androidx.constraintlayout.core.widgets.f) constraintWidget4;
                if (fVar3.w1() == 0) {
                    if (fVar3.x1() != -1) {
                        fVar3.A1(fVar3.x1());
                    } else if (fVar3.y1() != -1 && dVar.q0()) {
                        fVar3.A1(dVar.z() - fVar3.y1());
                    } else if (dVar.q0()) {
                        fVar3.A1((int) ((fVar3.z1() * dVar.z()) + 0.5f));
                    }
                    z12 = true;
                }
            } else if ((constraintWidget4 instanceof androidx.constraintlayout.core.widgets.a) && ((androidx.constraintlayout.core.widgets.a) constraintWidget4).B1() == 1) {
                z13 = true;
            }
        }
        if (z12) {
            for (int i16 = 0; i16 < size; i16++) {
                ConstraintWidget constraintWidget5 = (ConstraintWidget) arrayListV1.get(i16);
                if (constraintWidget5 instanceof androidx.constraintlayout.core.widgets.f) {
                    androidx.constraintlayout.core.widgets.f fVar4 = (androidx.constraintlayout.core.widgets.f) constraintWidget5;
                    if (fVar4.w1() == 0) {
                        i(1, fVar4, interfaceC0060b);
                    }
                }
            }
        }
        i(0, dVar, interfaceC0060b);
        if (z13) {
            for (int i17 = 0; i17 < size; i17++) {
                ConstraintWidget constraintWidget6 = (ConstraintWidget) arrayListV1.get(i17);
                if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                    androidx.constraintlayout.core.widgets.a aVar2 = (androidx.constraintlayout.core.widgets.a) constraintWidget6;
                    if (aVar2.B1() == 1) {
                        c(0, aVar2, interfaceC0060b, 1, zU1);
                    }
                }
            }
        }
        for (int i18 = 0; i18 < size; i18++) {
            ConstraintWidget constraintWidget7 = (ConstraintWidget) arrayListV1.get(i18);
            if (constraintWidget7.o0() && a(0, constraintWidget7)) {
                androidx.constraintlayout.core.widgets.d.X1(0, constraintWidget7, interfaceC0060b, f6962a, b.a.f6937k);
                if (!(constraintWidget7 instanceof androidx.constraintlayout.core.widgets.f)) {
                    b(0, constraintWidget7, interfaceC0060b, zU1);
                    i(0, constraintWidget7, interfaceC0060b);
                } else if (((androidx.constraintlayout.core.widgets.f) constraintWidget7).w1() == 0) {
                    i(0, constraintWidget7, interfaceC0060b);
                } else {
                    b(0, constraintWidget7, interfaceC0060b, zU1);
                }
            }
        }
    }

    private static void i(int i11, ConstraintWidget constraintWidget, b.InterfaceC0060b interfaceC0060b) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.r0()) {
            return;
        }
        f6964c++;
        if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.d) && constraintWidget.o0()) {
            int i12 = i11 + 1;
            if (a(i12, constraintWidget)) {
                androidx.constraintlayout.core.widgets.d.X1(i12, constraintWidget, interfaceC0060b, new b.a(), b.a.f6937k);
            }
        }
        ConstraintAnchor constraintAnchorQ = constraintWidget.q(ConstraintAnchor.Type.TOP);
        ConstraintAnchor constraintAnchorQ2 = constraintWidget.q(ConstraintAnchor.Type.BOTTOM);
        int iE = constraintAnchorQ.e();
        int iE2 = constraintAnchorQ2.e();
        if (constraintAnchorQ.d() != null && constraintAnchorQ.n()) {
            for (ConstraintAnchor constraintAnchor5 : constraintAnchorQ.d()) {
                ConstraintWidget constraintWidget2 = constraintAnchor5.f6849d;
                int i13 = i11 + 1;
                boolean zA = a(i13, constraintWidget2);
                if (constraintWidget2.o0() && zA) {
                    androidx.constraintlayout.core.widgets.d.X1(i13, constraintWidget2, interfaceC0060b, new b.a(), b.a.f6937k);
                }
                boolean z10 = (constraintAnchor5 == constraintWidget2.R && (constraintAnchor4 = constraintWidget2.T.f6851f) != null && constraintAnchor4.n()) || (constraintAnchor5 == constraintWidget2.T && (constraintAnchor3 = constraintWidget2.R.f6851f) != null && constraintAnchor3.n());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourV = constraintWidget2.V();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourV != dimensionBehaviour || zA) {
                    if (!constraintWidget2.o0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.R;
                        if (constraintAnchor5 == constraintAnchor6 && constraintWidget2.T.f6851f == null) {
                            int iF = constraintAnchor6.f() + iE;
                            constraintWidget2.M0(iF, constraintWidget2.z() + iF);
                            i(i13, constraintWidget2, interfaceC0060b);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.T;
                            if (constraintAnchor5 == constraintAnchor7 && constraintAnchor6.f6851f == null) {
                                int iF2 = iE - constraintAnchor7.f();
                                constraintWidget2.M0(iF2 - constraintWidget2.z(), iF2);
                                i(i13, constraintWidget2, interfaceC0060b);
                            } else if (z10 && !constraintWidget2.m0()) {
                                f(i13, interfaceC0060b, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.V() == dimensionBehaviour && constraintWidget2.D >= 0 && constraintWidget2.C >= 0 && (constraintWidget2.X() == 8 || (constraintWidget2.f6902x == 0 && constraintWidget2.x() == 0.0f))) {
                    if (!constraintWidget2.m0() && !constraintWidget2.n0() && z10 && !constraintWidget2.m0()) {
                        g(i13, constraintWidget, interfaceC0060b, constraintWidget2);
                    }
                }
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
            return;
        }
        if (constraintAnchorQ2.d() != null && constraintAnchorQ2.n()) {
            for (ConstraintAnchor constraintAnchor8 : constraintAnchorQ2.d()) {
                ConstraintWidget constraintWidget3 = constraintAnchor8.f6849d;
                int i14 = i11 + 1;
                boolean zA2 = a(i14, constraintWidget3);
                if (constraintWidget3.o0() && zA2) {
                    androidx.constraintlayout.core.widgets.d.X1(i14, constraintWidget3, interfaceC0060b, new b.a(), b.a.f6937k);
                }
                boolean z11 = (constraintAnchor8 == constraintWidget3.R && (constraintAnchor2 = constraintWidget3.T.f6851f) != null && constraintAnchor2.n()) || (constraintAnchor8 == constraintWidget3.T && (constraintAnchor = constraintWidget3.R.f6851f) != null && constraintAnchor.n());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourV2 = constraintWidget3.V();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourV2 != dimensionBehaviour2 || zA2) {
                    if (!constraintWidget3.o0()) {
                        ConstraintAnchor constraintAnchor9 = constraintWidget3.R;
                        if (constraintAnchor8 == constraintAnchor9 && constraintWidget3.T.f6851f == null) {
                            int iF3 = constraintAnchor9.f() + iE2;
                            constraintWidget3.M0(iF3, constraintWidget3.z() + iF3);
                            i(i14, constraintWidget3, interfaceC0060b);
                        } else {
                            ConstraintAnchor constraintAnchor10 = constraintWidget3.T;
                            if (constraintAnchor8 == constraintAnchor10 && constraintAnchor9.f6851f == null) {
                                int iF4 = iE2 - constraintAnchor10.f();
                                constraintWidget3.M0(iF4 - constraintWidget3.z(), iF4);
                                i(i14, constraintWidget3, interfaceC0060b);
                            } else if (z11 && !constraintWidget3.m0()) {
                                f(i14, interfaceC0060b, constraintWidget3);
                            }
                        }
                    }
                } else if (constraintWidget3.V() == dimensionBehaviour2 && constraintWidget3.D >= 0 && constraintWidget3.C >= 0 && (constraintWidget3.X() == 8 || (constraintWidget3.f6902x == 0 && constraintWidget3.x() == 0.0f))) {
                    if (!constraintWidget3.m0() && !constraintWidget3.n0() && z11 && !constraintWidget3.m0()) {
                        g(i14, constraintWidget, interfaceC0060b, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor constraintAnchorQ3 = constraintWidget.q(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorQ3.d() != null && constraintAnchorQ3.n()) {
            int iE3 = constraintAnchorQ3.e();
            for (ConstraintAnchor constraintAnchor11 : constraintAnchorQ3.d()) {
                ConstraintWidget constraintWidget4 = constraintAnchor11.f6849d;
                int i15 = i11 + 1;
                boolean zA3 = a(i15, constraintWidget4);
                if (constraintWidget4.o0() && zA3) {
                    androidx.constraintlayout.core.widgets.d.X1(i15, constraintWidget4, interfaceC0060b, new b.a(), b.a.f6937k);
                }
                if (constraintWidget4.V() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || zA3) {
                    if (!constraintWidget4.o0() && constraintAnchor11 == constraintWidget4.U) {
                        constraintWidget4.I0(constraintAnchor11.f() + iE3);
                        i(i15, constraintWidget4, interfaceC0060b);
                    }
                }
            }
        }
        constraintWidget.t0();
    }
}
