package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.core.view.InputDeviceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class d extends t0.c {
    private int Y0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public androidx.constraintlayout.core.e f7016b1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    int f7018d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    int f7019e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    int f7020f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    int f7021g1;
    androidx.constraintlayout.core.widgets.analyzer.b W0 = new androidx.constraintlayout.core.widgets.analyzer.b(this);
    public androidx.constraintlayout.core.widgets.analyzer.d X0 = new androidx.constraintlayout.core.widgets.analyzer.d(this);
    protected androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b Z0 = null;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private boolean f7015a1 = false;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    protected androidx.constraintlayout.core.d f7017c1 = new androidx.constraintlayout.core.d();

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public int f7022h1 = 0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public int f7023i1 = 0;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    c[] f7024j1 = new c[4];

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    c[] f7025k1 = new c[4];

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public boolean f7026l1 = false;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public boolean f7027m1 = false;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public boolean f7028n1 = false;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public int f7029o1 = 0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public int f7030p1 = 0;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f7031q1 = InputDeviceCompat.SOURCE_KEYBOARD;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public boolean f7032r1 = false;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private boolean f7033s1 = false;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private boolean f7034t1 = false;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    int f7035u1 = 0;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private WeakReference f7036v1 = null;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private WeakReference f7037w1 = null;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private WeakReference f7038x1 = null;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private WeakReference f7039y1 = null;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    HashSet f7040z1 = new HashSet();
    public androidx.constraintlayout.core.widgets.analyzer.b.a A1 = new androidx.constraintlayout.core.widgets.analyzer.b.a();

    private void B1(ConstraintWidget constraintWidget) {
        int i11 = this.f7022h1 + 1;
        c[] cVarArr = this.f7025k1;
        if (i11 >= cVarArr.length) {
            this.f7025k1 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.f7025k1[this.f7022h1] = new c(constraintWidget, 0, U1());
        this.f7022h1++;
    }

    private void E1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f7017c1.h(solverVariable, this.f7017c1.q(constraintAnchor), 0, 5);
    }

    private void F1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f7017c1.h(this.f7017c1.q(constraintAnchor), solverVariable, 0, 5);
    }

    private void G1(ConstraintWidget constraintWidget) {
        int i11 = this.f7023i1 + 1;
        c[] cVarArr = this.f7024j1;
        if (i11 >= cVarArr.length) {
            this.f7024j1 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.f7024j1[this.f7023i1] = new c(constraintWidget, 1, U1());
        this.f7023i1++;
    }

    public static boolean X1(int i11, ConstraintWidget constraintWidget, androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b interfaceC0060b, androidx.constraintlayout.core.widgets.analyzer.b.a aVar, int i12) {
        int i13;
        int i14;
        if (interfaceC0060b == null) {
            return false;
        }
        if (constraintWidget.X() == 8 || (constraintWidget instanceof f) || (constraintWidget instanceof a)) {
            aVar.f6944e = 0;
            aVar.f6945f = 0;
            return false;
        }
        aVar.f6940a = constraintWidget.C();
        aVar.f6941b = constraintWidget.V();
        aVar.f6942c = constraintWidget.Y();
        aVar.f6943d = constraintWidget.z();
        aVar.f6948i = false;
        aVar.f6949j = i12;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f6940a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z10 = dimensionBehaviour == dimensionBehaviour2;
        boolean z11 = aVar.f6941b == dimensionBehaviour2;
        boolean z12 = z10 && constraintWidget.f6867f0 > 0.0f;
        boolean z13 = z11 && constraintWidget.f6867f0 > 0.0f;
        if (z10 && constraintWidget.c0(0) && constraintWidget.f6900w == 0 && !z12) {
            aVar.f6940a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z11 && constraintWidget.f6902x == 0) {
                aVar.f6940a = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z10 = false;
        }
        if (z11 && constraintWidget.c0(1) && constraintWidget.f6902x == 0 && !z13) {
            aVar.f6941b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z10 && constraintWidget.f6900w == 0) {
                aVar.f6941b = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z11 = false;
        }
        if (constraintWidget.p0()) {
            aVar.f6940a = ConstraintWidget.DimensionBehaviour.FIXED;
            z10 = false;
        }
        if (constraintWidget.q0()) {
            aVar.f6941b = ConstraintWidget.DimensionBehaviour.FIXED;
            z11 = false;
        }
        if (z12) {
            if (constraintWidget.f6904y[0] == 4) {
                aVar.f6940a = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z11) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = aVar.f6941b;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    i14 = aVar.f6943d;
                } else {
                    aVar.f6940a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    interfaceC0060b.b(constraintWidget, aVar);
                    i14 = aVar.f6945f;
                }
                aVar.f6940a = dimensionBehaviour4;
                aVar.f6942c = (int) (constraintWidget.x() * i14);
            }
        }
        if (z13) {
            if (constraintWidget.f6904y[1] == 4) {
                aVar.f6941b = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z10) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = aVar.f6940a;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour5 == dimensionBehaviour6) {
                    i13 = aVar.f6942c;
                } else {
                    aVar.f6941b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    interfaceC0060b.b(constraintWidget, aVar);
                    i13 = aVar.f6944e;
                }
                aVar.f6941b = dimensionBehaviour6;
                if (constraintWidget.y() == -1) {
                    aVar.f6943d = (int) (i13 / constraintWidget.x());
                } else {
                    aVar.f6943d = (int) (constraintWidget.x() * i13);
                }
            }
        }
        interfaceC0060b.b(constraintWidget, aVar);
        constraintWidget.o1(aVar.f6944e);
        constraintWidget.P0(aVar.f6945f);
        constraintWidget.O0(aVar.f6947h);
        constraintWidget.E0(aVar.f6946g);
        aVar.f6949j = androidx.constraintlayout.core.widgets.analyzer.b.a.f6937k;
        return aVar.f6948i;
    }

    private void Z1() {
        this.f7022h1 = 0;
        this.f7023i1 = 0;
    }

    public boolean A1(androidx.constraintlayout.core.d dVar) {
        boolean zY1 = Y1(64);
        g(dVar, zY1);
        int size = this.V0.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.V0.get(i11);
            constraintWidget.W0(0, false);
            constraintWidget.W0(1, false);
            if (constraintWidget instanceof a) {
                z10 = true;
            }
        }
        if (z10) {
            for (int i12 = 0; i12 < size; i12++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.V0.get(i12);
                if (constraintWidget2 instanceof a) {
                    ((a) constraintWidget2).C1();
                }
            }
        }
        this.f7040z1.clear();
        for (int i13 = 0; i13 < size; i13++) {
            ConstraintWidget constraintWidget3 = (ConstraintWidget) this.V0.get(i13);
            if (constraintWidget3.f()) {
                if (constraintWidget3 instanceof i) {
                    this.f7040z1.add(constraintWidget3);
                } else {
                    constraintWidget3.g(dVar, zY1);
                }
            }
        }
        while (this.f7040z1.size() > 0) {
            int size2 = this.f7040z1.size();
            Iterator it = this.f7040z1.iterator();
            while (it.hasNext()) {
                i iVar = (i) ((ConstraintWidget) it.next());
                if (iVar.z1(this.f7040z1)) {
                    iVar.g(dVar, zY1);
                    this.f7040z1.remove(iVar);
                    break;
                }
            }
            if (size2 == this.f7040z1.size()) {
                Iterator it2 = this.f7040z1.iterator();
                while (it2.hasNext()) {
                    ((ConstraintWidget) it2.next()).g(dVar, zY1);
                }
                this.f7040z1.clear();
            }
        }
        if (androidx.constraintlayout.core.d.f6646r) {
            HashSet<ConstraintWidget> hashSet = new HashSet();
            for (int i14 = 0; i14 < size; i14++) {
                ConstraintWidget constraintWidget4 = (ConstraintWidget) this.V0.get(i14);
                if (!constraintWidget4.f()) {
                    hashSet.add(constraintWidget4);
                }
            }
            e(this, dVar, hashSet, C() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            for (ConstraintWidget constraintWidget5 : hashSet) {
                g.a(this, dVar, constraintWidget5);
                constraintWidget5.g(dVar, zY1);
            }
        } else {
            for (int i15 = 0; i15 < size; i15++) {
                ConstraintWidget constraintWidget6 = (ConstraintWidget) this.V0.get(i15);
                if (constraintWidget6 instanceof d) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget6.f6859b0;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget6.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget6.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget6.g(dVar, zY1);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget6.T0(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget6.k1(dimensionBehaviour2);
                    }
                } else {
                    g.a(this, dVar, constraintWidget6);
                    if (!constraintWidget6.f()) {
                        constraintWidget6.g(dVar, zY1);
                    }
                }
            }
        }
        if (this.f7022h1 > 0) {
            b.b(this, dVar, null, 0);
        }
        if (this.f7023i1 > 0) {
            b.b(this, dVar, null, 1);
        }
        return true;
    }

    public void C1(ConstraintAnchor constraintAnchor) {
        WeakReference weakReference = this.f7039y1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > ((ConstraintAnchor) this.f7039y1.get()).e()) {
            this.f7039y1 = new WeakReference(constraintAnchor);
        }
    }

    public void D1(ConstraintAnchor constraintAnchor) {
        WeakReference weakReference = this.f7037w1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > ((ConstraintAnchor) this.f7037w1.get()).e()) {
            this.f7037w1 = new WeakReference(constraintAnchor);
        }
    }

    void H1(ConstraintAnchor constraintAnchor) {
        WeakReference weakReference = this.f7038x1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > ((ConstraintAnchor) this.f7038x1.get()).e()) {
            this.f7038x1 = new WeakReference(constraintAnchor);
        }
    }

    void I1(ConstraintAnchor constraintAnchor) {
        WeakReference weakReference = this.f7036v1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > ((ConstraintAnchor) this.f7036v1.get()).e()) {
            this.f7036v1 = new WeakReference(constraintAnchor);
        }
    }

    public boolean J1(boolean z10) {
        return this.X0.f(z10);
    }

    public boolean K1(boolean z10) {
        return this.X0.g(z10);
    }

    public boolean L1(boolean z10, int i11) {
        return this.X0.h(z10, i11);
    }

    public void M1(androidx.constraintlayout.core.e eVar) {
        this.f7016b1 = eVar;
        this.f7017c1.v(eVar);
    }

    public androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b N1() {
        return this.Z0;
    }

    public int O1() {
        return this.f7031q1;
    }

    public androidx.constraintlayout.core.d P1() {
        return this.f7017c1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void Q(StringBuilder sb2) {
        sb2.append(this.f6884o + ":{\n");
        sb2.append("  actualWidth:" + this.f6863d0);
        sb2.append("\n");
        sb2.append("  actualHeight:" + this.f6865e0);
        sb2.append("\n");
        Iterator it = v1().iterator();
        while (it.hasNext()) {
            ((ConstraintWidget) it.next()).Q(sb2);
            sb2.append(",\n");
        }
        sb2.append("}");
    }

    public boolean Q1() {
        return false;
    }

    public void R1() {
        this.X0.j();
    }

    public void S1() {
        this.X0.k();
    }

    public boolean T1() {
        return this.f7034t1;
    }

    public boolean U1() {
        return this.f7015a1;
    }

    public boolean V1() {
        return this.f7033s1;
    }

    public long W1(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        this.f7018d1 = i18;
        this.f7019e1 = i19;
        return this.W0.d(this, i11, i18, i19, i12, i13, i14, i15, i16, i17);
    }

    public boolean Y1(int i11) {
        return (this.f7031q1 & i11) == i11;
    }

    public void a2(androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b interfaceC0060b) {
        this.Z0 = interfaceC0060b;
        this.X0.n(interfaceC0060b);
    }

    public void b2(int i11) {
        this.f7031q1 = i11;
        androidx.constraintlayout.core.d.f6646r = Y1(512);
    }

    public void c2(int i11) {
        this.Y0 = i11;
    }

    public void d2(boolean z10) {
        this.f7015a1 = z10;
    }

    public boolean e2(androidx.constraintlayout.core.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean zY1 = Y1(64);
        u1(dVar, zY1);
        int size = this.V0.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.V0.get(i11);
            constraintWidget.u1(dVar, zY1);
            if (constraintWidget.e0()) {
                z10 = true;
            }
        }
        return z10;
    }

    public void f2() {
        this.W0.e(this);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void t1(boolean z10, boolean z11) {
        super.t1(z10, z11);
        int size = this.V0.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((ConstraintWidget) this.V0.get(i11)).t1(z10, z11);
        }
    }

    @Override // t0.c, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void v0() {
        this.f7017c1.E();
        this.f7018d1 = 0;
        this.f7020f1 = 0;
        this.f7019e1 = 0;
        this.f7021g1 = 0;
        this.f7032r1 = false;
        super.v0();
    }

    /* JADX WARN: Code duplicated, block: B:154:0x0312 A[PHI: r2 r16
  0x0312: PHI (r2v15 ??) = (r2v14 ??), (r2v19 ??), (r2v19 ??), (r2v19 ??) binds: [B:141:0x02d3, B:149:0x02f8, B:150:0x02fa, B:152:0x0300] A[DONT_GENERATE, DONT_INLINE]
  0x0312: PHI (r16v4 boolean) = (r16v3 boolean), (r16v5 boolean), (r16v5 boolean), (r16v5 boolean) binds: [B:141:0x02d3, B:149:0x02f8, B:150:0x02fa, B:152:0x0300] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // t0.c
    public void w1() {
        int i11;
        int i12;
        boolean z10;
        boolean zE2;
        boolean z11;
        ?? r11;
        ?? r12;
        ?? r13;
        boolean z12;
        int i13;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int i14 = 0;
        this.f6871h0 = 0;
        this.f6873i0 = 0;
        this.f7033s1 = false;
        this.f7034t1 = false;
        int size = this.V0.size();
        int iMax = Math.max(0, Y());
        int iMax2 = Math.max(0, z());
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.f6859b0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        androidx.constraintlayout.core.e eVar = this.f7016b1;
        if (eVar != null) {
            eVar.E++;
        }
        if (this.Y0 == 0 && g.b(this.f7031q1, 1)) {
            androidx.constraintlayout.core.widgets.analyzer.f.h(this, N1());
            for (int i15 = 0; i15 < size; i15++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) this.V0.get(i15);
                if (constraintWidget.o0() && !(constraintWidget instanceof f) && !(constraintWidget instanceof a) && !(constraintWidget instanceof i) && !constraintWidget.n0()) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget.w(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviourW != dimensionBehaviour4 || constraintWidget.f6900w == 1 || dimensionBehaviourW2 != dimensionBehaviour4 || constraintWidget.f6902x == 1) {
                        X1(0, constraintWidget, this.Z0, new androidx.constraintlayout.core.widgets.analyzer.b.a(), androidx.constraintlayout.core.widgets.analyzer.b.a.f6937k);
                    }
                }
            }
        }
        if (size <= 2 || !((dimensionBehaviour3 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour2 == dimensionBehaviour) && g.b(this.f7031q1, 1024) && androidx.constraintlayout.core.widgets.analyzer.g.c(this, N1()))) {
            i11 = iMax2;
            i12 = iMax;
            z10 = false;
        } else {
            if (dimensionBehaviour3 == dimensionBehaviour) {
                if (iMax >= Y() || iMax <= 0) {
                    iMax = Y();
                } else {
                    o1(iMax);
                    this.f7033s1 = true;
                }
            }
            if (dimensionBehaviour2 == dimensionBehaviour) {
                if (iMax2 >= z() || iMax2 <= 0) {
                    iMax2 = z();
                } else {
                    P0(iMax2);
                    this.f7034t1 = true;
                }
            }
            i11 = iMax2;
            i12 = iMax;
            z10 = true;
        }
        boolean z13 = Y1(64) || Y1(128);
        androidx.constraintlayout.core.d dVar = this.f7017c1;
        dVar.f6662h = false;
        dVar.f6663i = false;
        if (this.f7031q1 != 0 && z13) {
            dVar.f6663i = true;
        }
        ArrayList arrayList = this.V0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z14 = dimensionBehaviourC == dimensionBehaviour5 || V() == dimensionBehaviour5;
        Z1();
        for (int i16 = 0; i16 < size; i16++) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) this.V0.get(i16);
            if (constraintWidget2 instanceof t0.c) {
                ((t0.c) constraintWidget2).w1();
            }
        }
        boolean zY1 = Y1(64);
        ?? r14 = z10;
        int i17 = 0;
        boolean zA1 = true;
        while (zA1) {
            int i18 = i17 + 1;
            try {
                this.f7017c1.E();
                Z1();
                o(this.f7017c1);
                for (int i19 = i14; i19 < size; i19++) {
                    ((ConstraintWidget) this.V0.get(i19)).o(this.f7017c1);
                }
                zA1 = A1(this.f7017c1);
                WeakReference weakReference = this.f7036v1;
                if (weakReference != null && weakReference.get() != null) {
                    F1((ConstraintAnchor) this.f7036v1.get(), this.f7017c1.q(this.R));
                    this.f7036v1 = null;
                }
                WeakReference weakReference2 = this.f7038x1;
                if (weakReference2 != null && weakReference2.get() != null) {
                    E1((ConstraintAnchor) this.f7038x1.get(), this.f7017c1.q(this.T));
                    this.f7038x1 = null;
                }
                WeakReference weakReference3 = this.f7037w1;
                if (weakReference3 != null && weakReference3.get() != null) {
                    F1((ConstraintAnchor) this.f7037w1.get(), this.f7017c1.q(this.Q));
                    this.f7037w1 = null;
                }
                WeakReference weakReference4 = this.f7039y1;
                if (weakReference4 != null && weakReference4.get() != null) {
                    E1((ConstraintAnchor) this.f7039y1.get(), this.f7017c1.q(this.S));
                    this.f7039y1 = null;
                }
                if (zA1) {
                    this.f7017c1.A();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                System.out.println("EXCEPTION : " + e11);
            }
            if (zA1) {
                zE2 = e2(this.f7017c1, g.f7079a);
            } else {
                u1(this.f7017c1, zY1);
                for (int i20 = 0; i20 < size; i20++) {
                    ((ConstraintWidget) this.V0.get(i20)).u1(this.f7017c1, zY1);
                }
                zE2 = false;
            }
            if (z14 && i18 < 8 && g.f7079a[2]) {
                int i21 = 0;
                int iMax3 = 0;
                int iMax4 = 0;
                while (i21 < size) {
                    ConstraintWidget constraintWidget3 = (ConstraintWidget) this.V0.get(i21);
                    iMax4 = Math.max(iMax4, constraintWidget3.f6871h0 + constraintWidget3.Y());
                    iMax3 = Math.max(iMax3, constraintWidget3.f6873i0 + constraintWidget3.z());
                    i21++;
                    zE2 = zE2;
                }
                z11 = zE2;
                int iMax5 = Math.max(this.f6885o0, iMax4);
                int iMax6 = Math.max(this.f6887p0, iMax3);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                r14 = r14;
                if (dimensionBehaviour3 == dimensionBehaviour6 && Y() < iMax5) {
                    r14 = r14;
                    o1(iMax5);
                    this.f6859b0[0] = dimensionBehaviour6;
                    r14 = 1;
                    z11 = true;
                }
                if (dimensionBehaviour2 == dimensionBehaviour6 && z() < iMax6) {
                    P0(iMax6);
                    this.f6859b0[1] = dimensionBehaviour6;
                    r14 = 1;
                    z11 = true;
                }
            } else {
                z11 = zE2;
            }
            int iMax7 = Math.max(this.f6885o0, Y());
            ?? r15 = r14;
            if (iMax7 > Y()) {
                o1(iMax7);
                this.f6859b0[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                r15 = 1;
                z11 = true;
            }
            int iMax8 = Math.max(this.f6887p0, z());
            if (iMax8 > z()) {
                P0(iMax8);
                r11 = 1;
                this.f6859b0[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                r12 = 1;
                z11 = true;
            } else {
                r11 = 1;
                r12 = r15;
            }
            if (r12 == 0) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = this.f6859b0[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour7 == dimensionBehaviour8 && i12 > 0) {
                    r12 = r12;
                    if (Y() > i12) {
                        this.f7033s1 = r11;
                        this.f6859b0[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                        o1(i12);
                        ?? r16 = r11;
                        z11 = r16 == true ? 1 : 0;
                        r12 = r16;
                    }
                }
                r12 = r12;
                r12 = r12;
                if (this.f6859b0[r11] != dimensionBehaviour8 || i11 <= 0 || z() <= i11) {
                    r13 = r12;
                    z12 = z11;
                    i13 = 8;
                } else {
                    this.f7034t1 = r11;
                    this.f6859b0[r11] = ConstraintWidget.DimensionBehaviour.FIXED;
                    P0(i11);
                    i13 = 8;
                    z12 = true;
                    r13 = 1;
                }
            } else {
                r13 = r12;
                z12 = z11;
                i13 = 8;
            }
            zA1 = i18 > i13 ? false : z12;
            i17 = i18;
            i14 = 0;
            r14 = r13;
        }
        this.V0 = arrayList;
        if (r14 != 0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.f6859b0;
            dimensionBehaviourArr2[0] = dimensionBehaviour3;
            dimensionBehaviourArr2[1] = dimensionBehaviour2;
        }
        z0(this.f7017c1.w());
    }

    void z1(ConstraintWidget constraintWidget, int i11) {
        if (i11 == 0) {
            B1(constraintWidget);
        } else if (i11 == 1) {
            G1(constraintWidget);
        }
    }
}
