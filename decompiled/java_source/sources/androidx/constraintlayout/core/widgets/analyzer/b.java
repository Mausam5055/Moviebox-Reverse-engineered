package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f6934a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f6935b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.d f6936c;

    public static class a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static int f6937k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static int f6938l = 1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static int f6939m = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ConstraintWidget.DimensionBehaviour f6940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ConstraintWidget.DimensionBehaviour f6941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6942c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6943d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6944e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f6945f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f6946g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f6947h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f6948i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f6949j;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.b$b, reason: collision with other inner class name */
    public interface InterfaceC0060b {
        void a();

        void b(ConstraintWidget constraintWidget, a aVar);
    }

    public b(androidx.constraintlayout.core.widgets.d dVar) {
        this.f6936c = dVar;
    }

    private boolean a(InterfaceC0060b interfaceC0060b, ConstraintWidget constraintWidget, int i11) {
        this.f6935b.f6940a = constraintWidget.C();
        this.f6935b.f6941b = constraintWidget.V();
        this.f6935b.f6942c = constraintWidget.Y();
        this.f6935b.f6943d = constraintWidget.z();
        a aVar = this.f6935b;
        aVar.f6948i = false;
        aVar.f6949j = i11;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f6940a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z10 = dimensionBehaviour == dimensionBehaviour2;
        boolean z11 = aVar.f6941b == dimensionBehaviour2;
        boolean z12 = z10 && constraintWidget.f6867f0 > 0.0f;
        boolean z13 = z11 && constraintWidget.f6867f0 > 0.0f;
        if (z12 && constraintWidget.f6904y[0] == 4) {
            aVar.f6940a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z13 && constraintWidget.f6904y[1] == 4) {
            aVar.f6941b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        interfaceC0060b.b(constraintWidget, aVar);
        constraintWidget.o1(this.f6935b.f6944e);
        constraintWidget.P0(this.f6935b.f6945f);
        constraintWidget.O0(this.f6935b.f6947h);
        constraintWidget.E0(this.f6935b.f6946g);
        a aVar2 = this.f6935b;
        aVar2.f6949j = a.f6937k;
        return aVar2.f6948i;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0098 A[PHI: r10
  0x0098: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v1 boolean), (r10v4 boolean), (r10v4 boolean) binds: [B:32:0x0062, B:34:0x0068, B:36:0x006c, B:54:0x0095, B:52:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    private void b(androidx.constraintlayout.core.widgets.d dVar) {
        boolean z10;
        j jVar;
        l lVar;
        int size = dVar.V0.size();
        boolean zY1 = dVar.Y1(64);
        InterfaceC0060b interfaceC0060bN1 = dVar.N1();
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) dVar.V0.get(i11);
            if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.f) && !(constraintWidget instanceof androidx.constraintlayout.core.widgets.a) && !constraintWidget.n0() && (!zY1 || (jVar = constraintWidget.f6864e) == null || (lVar = constraintWidget.f6866f) == null || !jVar.f6927e.f6920j || !lVar.f6927e.f6920j)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget.w(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z11 = dimensionBehaviourW == dimensionBehaviour && constraintWidget.f6900w != 1 && dimensionBehaviourW2 == dimensionBehaviour && constraintWidget.f6902x != 1;
                if (!z11 && dVar.Y1(1) && !(constraintWidget instanceof androidx.constraintlayout.core.widgets.i)) {
                    if (dimensionBehaviourW == dimensionBehaviour && constraintWidget.f6900w == 0 && dimensionBehaviourW2 != dimensionBehaviour && !constraintWidget.k0()) {
                        z11 = true;
                    }
                    if (dimensionBehaviourW2 == dimensionBehaviour && constraintWidget.f6902x == 0 && dimensionBehaviourW != dimensionBehaviour && !constraintWidget.k0()) {
                        z11 = true;
                    }
                    z10 = (!(dimensionBehaviourW == dimensionBehaviour || dimensionBehaviourW2 == dimensionBehaviour) || constraintWidget.f6867f0 <= 0.0f) ? z11 : true;
                }
                if (!z10) {
                    a(interfaceC0060bN1, constraintWidget, a.f6937k);
                    androidx.constraintlayout.core.e eVar = dVar.f7016b1;
                    if (eVar != null) {
                        eVar.f6673a++;
                    }
                }
            }
        }
        interfaceC0060bN1.a();
    }

    private void c(androidx.constraintlayout.core.widgets.d dVar, String str, int i11, int i12, int i13) {
        int iK = dVar.K();
        int iJ = dVar.J();
        dVar.e1(0);
        dVar.d1(0);
        dVar.o1(i12);
        dVar.P0(i13);
        dVar.e1(iK);
        dVar.d1(iJ);
        this.f6936c.c2(i11);
        this.f6936c.w1();
    }

    public long d(androidx.constraintlayout.core.widgets.d dVar, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        boolean zL1;
        int i20;
        int i21;
        boolean z10;
        int i22;
        InterfaceC0060b interfaceC0060b;
        boolean z11;
        androidx.constraintlayout.core.e eVar;
        InterfaceC0060b interfaceC0060bN1 = dVar.N1();
        int size = dVar.V0.size();
        int iY = dVar.Y();
        int iZ = dVar.z();
        boolean zB = androidx.constraintlayout.core.widgets.g.b(i11, 128);
        boolean z12 = zB || androidx.constraintlayout.core.widgets.g.b(i11, 64);
        if (z12) {
            for (int i23 = 0; i23 < size; i23++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) dVar.V0.get(i23);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z13 = (dimensionBehaviourC == dimensionBehaviour) && (constraintWidget.V() == dimensionBehaviour) && constraintWidget.x() > 0.0f;
                if ((constraintWidget.k0() && z13) || ((constraintWidget.m0() && z13) || (constraintWidget instanceof androidx.constraintlayout.core.widgets.i) || constraintWidget.k0() || constraintWidget.m0())) {
                    z12 = false;
                    break;
                }
            }
        }
        if (z12 && (eVar = androidx.constraintlayout.core.d.f6652x) != null) {
            eVar.f6675c++;
        }
        boolean z14 = z12 & ((i14 == 1073741824 && i16 == 1073741824) || zB);
        int i24 = 2;
        if (z14) {
            int iMin = Math.min(dVar.I(), i15);
            int iMin2 = Math.min(dVar.H(), i17);
            if (i14 == 1073741824 && dVar.Y() != iMin) {
                dVar.o1(iMin);
                dVar.R1();
            }
            if (i16 == 1073741824 && dVar.z() != iMin2) {
                dVar.P0(iMin2);
                dVar.R1();
            }
            if (i14 == 1073741824 && i16 == 1073741824) {
                zL1 = dVar.J1(zB);
                i20 = 2;
            } else {
                boolean zK1 = dVar.K1(zB);
                if (i14 == 1073741824) {
                    zK1 &= dVar.L1(zB, 0);
                    i20 = 1;
                } else {
                    i20 = 0;
                }
                if (i16 == 1073741824) {
                    zL1 = dVar.L1(zB, 1) & zK1;
                    i20++;
                } else {
                    zL1 = zK1;
                }
            }
            if (zL1) {
                dVar.t1(i14 == 1073741824, i16 == 1073741824);
            }
        } else {
            zL1 = false;
            i20 = 0;
        }
        if (zL1 && i20 == 2) {
            return 0L;
        }
        int iO1 = dVar.O1();
        if (size > 0) {
            b(dVar);
        }
        e(dVar);
        int size2 = this.f6934a.size();
        if (size > 0) {
            c(dVar, "First pass", 0, iY, iZ);
        }
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC2 = dVar.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z15 = dimensionBehaviourC2 == dimensionBehaviour2;
            boolean z16 = dVar.V() == dimensionBehaviour2;
            int iMax = Math.max(dVar.Y(), this.f6936c.K());
            int iMax2 = Math.max(dVar.z(), this.f6936c.J());
            int i25 = 0;
            boolean zJ1 = false;
            while (i25 < size2) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.f6934a.get(i25);
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.i) {
                    int iY2 = constraintWidget2.Y();
                    int iZ2 = constraintWidget2.z();
                    boolean zA = a(interfaceC0060bN1, constraintWidget2, a.f6938l) | zJ1;
                    androidx.constraintlayout.core.e eVar2 = dVar.f7016b1;
                    if (eVar2 != null) {
                        eVar2.f6674b++;
                    }
                    int iY3 = constraintWidget2.Y();
                    int iZ3 = constraintWidget2.z();
                    if (iY3 != iY2) {
                        constraintWidget2.o1(iY3);
                        if (z15 && constraintWidget2.O() > iMax) {
                            iMax = Math.max(iMax, constraintWidget2.O() + constraintWidget2.q(ConstraintAnchor.Type.RIGHT).f());
                        }
                        z11 = true;
                    } else {
                        z11 = zA;
                    }
                    if (iZ3 != iZ2) {
                        constraintWidget2.P0(iZ3);
                        if (z16 && constraintWidget2.t() > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget2.t() + constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).f());
                        }
                        z11 = true;
                    }
                    zJ1 = z11 | ((androidx.constraintlayout.core.widgets.i) constraintWidget2).J1();
                }
                i25++;
                iO1 = iO1;
                iZ = iZ;
                iY = iY;
                i24 = 2;
            }
            int i26 = iO1;
            int i27 = iY;
            int i28 = iZ;
            int i29 = i24;
            int i30 = 0;
            while (i30 < i29) {
                int i31 = 0;
                while (i31 < size2) {
                    ConstraintWidget constraintWidget3 = (ConstraintWidget) this.f6934a.get(i31);
                    if (((constraintWidget3 instanceof t0.a) && !(constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i)) || (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.f) || constraintWidget3.X() == 8 || ((z14 && constraintWidget3.f6864e.f6927e.f6920j && constraintWidget3.f6866f.f6927e.f6920j) || (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i))) {
                        z10 = z14;
                        i22 = size2;
                        interfaceC0060b = interfaceC0060bN1;
                    } else {
                        int iY4 = constraintWidget3.Y();
                        int iZ4 = constraintWidget3.z();
                        int iR = constraintWidget3.r();
                        int i32 = a.f6938l;
                        z10 = z14;
                        if (i30 == 1) {
                            i32 = a.f6939m;
                        }
                        boolean zA2 = a(interfaceC0060bN1, constraintWidget3, i32) | zJ1;
                        androidx.constraintlayout.core.e eVar3 = dVar.f7016b1;
                        i22 = size2;
                        interfaceC0060b = interfaceC0060bN1;
                        if (eVar3 != null) {
                            eVar3.f6674b++;
                        }
                        int iY5 = constraintWidget3.Y();
                        int iZ5 = constraintWidget3.z();
                        if (iY5 != iY4) {
                            constraintWidget3.o1(iY5);
                            if (z15 && constraintWidget3.O() > iMax) {
                                iMax = Math.max(iMax, constraintWidget3.O() + constraintWidget3.q(ConstraintAnchor.Type.RIGHT).f());
                            }
                            zA2 = true;
                        }
                        if (iZ5 != iZ4) {
                            constraintWidget3.P0(iZ5);
                            if (z16 && constraintWidget3.t() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget3.t() + constraintWidget3.q(ConstraintAnchor.Type.BOTTOM).f());
                            }
                            zA2 = true;
                        }
                        zJ1 = (!constraintWidget3.b0() || iR == constraintWidget3.r()) ? zA2 : true;
                    }
                    i31++;
                    interfaceC0060bN1 = interfaceC0060b;
                    z14 = z10;
                    size2 = i22;
                }
                boolean z17 = z14;
                int i33 = size2;
                InterfaceC0060b interfaceC0060b2 = interfaceC0060bN1;
                if (!zJ1) {
                    break;
                }
                i30++;
                c(dVar, "intermediate pass", i30, i27, i28);
                interfaceC0060bN1 = interfaceC0060b2;
                z14 = z17;
                size2 = i33;
                i29 = 2;
                zJ1 = false;
            }
            i21 = i26;
        } else {
            i21 = iO1;
        }
        dVar.b2(i21);
        return 0L;
    }

    public void e(androidx.constraintlayout.core.widgets.d dVar) {
        this.f6934a.clear();
        int size = dVar.V0.size();
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) dVar.V0.get(i11);
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviourC == dimensionBehaviour || constraintWidget.V() == dimensionBehaviour) {
                this.f6934a.add(constraintWidget);
            }
        }
        dVar.R1();
    }
}
