package androidx.constraintlayout.core;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static boolean f6646r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static boolean f6647s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static boolean f6648t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static boolean f6649u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static boolean f6650v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static int f6651w = 1000;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static e f6652x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static long f6653y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static long f6654z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f6658d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    androidx.constraintlayout.core.b[] f6661g;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final c f6668n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a f6671q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6655a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6656b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap f6657c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6659e = 32;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6660f = 32;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6662h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6663i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean[] f6664j = new boolean[32];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f6665k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f6666l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f6667m = 32;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private SolverVariable[] f6669o = new SolverVariable[f6651w];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f6670p = 0;

    interface a {
        void a(a aVar);

        SolverVariable b(d dVar, boolean[] zArr);

        void c(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        boolean isEmpty();
    }

    class b extends androidx.constraintlayout.core.b {
        public b(c cVar) {
            this.f6640e = new h(this, cVar);
        }
    }

    public d() {
        this.f6661g = null;
        this.f6661g = new androidx.constraintlayout.core.b[32];
        D();
        c cVar = new c();
        this.f6668n = cVar;
        this.f6658d = new PriorityGoalRow(cVar);
        if (f6650v) {
            this.f6671q = new b(cVar);
        } else {
            this.f6671q = new androidx.constraintlayout.core.b(cVar);
        }
    }

    private final int C(a aVar, boolean z10) {
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6680h++;
        }
        for (int i11 = 0; i11 < this.f6665k; i11++) {
            this.f6664j[i11] = false;
        }
        boolean z11 = false;
        int i12 = 0;
        while (!z11) {
            e eVar2 = f6652x;
            if (eVar2 != null) {
                eVar2.f6681i++;
            }
            i12++;
            if (i12 >= this.f6665k * 2) {
                return i12;
            }
            if (aVar.getKey() != null) {
                this.f6664j[aVar.getKey().f6609c] = true;
            }
            SolverVariable solverVariableB = aVar.b(this, this.f6664j);
            if (solverVariableB != null) {
                boolean[] zArr = this.f6664j;
                int i13 = solverVariableB.f6609c;
                if (zArr[i13]) {
                    return i12;
                }
                zArr[i13] = true;
            }
            if (solverVariableB != null) {
                float f11 = Float.MAX_VALUE;
                int i14 = -1;
                for (int i15 = 0; i15 < this.f6666l; i15++) {
                    androidx.constraintlayout.core.b bVar = this.f6661g[i15];
                    if (bVar.f6636a.f6616j != SolverVariable.Type.UNRESTRICTED && !bVar.f6641f && bVar.t(solverVariableB)) {
                        float fI = bVar.f6640e.i(solverVariableB);
                        if (fI < 0.0f) {
                            float f12 = (-bVar.f6637b) / fI;
                            if (f12 < f11) {
                                i14 = i15;
                                f11 = f12;
                            }
                        }
                    }
                }
                if (i14 > -1) {
                    androidx.constraintlayout.core.b bVar2 = this.f6661g[i14];
                    bVar2.f6636a.f6610d = -1;
                    e eVar3 = f6652x;
                    if (eVar3 != null) {
                        eVar3.f6682j++;
                    }
                    bVar2.x(solverVariableB);
                    SolverVariable solverVariable = bVar2.f6636a;
                    solverVariable.f6610d = i14;
                    solverVariable.i(this, bVar2);
                }
            } else {
                z11 = true;
            }
        }
        return i12;
    }

    private void D() {
        int i11 = 0;
        if (f6650v) {
            while (i11 < this.f6666l) {
                androidx.constraintlayout.core.b bVar = this.f6661g[i11];
                if (bVar != null) {
                    this.f6668n.f6642a.release(bVar);
                }
                this.f6661g[i11] = null;
                i11++;
            }
            return;
        }
        while (i11 < this.f6666l) {
            androidx.constraintlayout.core.b bVar2 = this.f6661g[i11];
            if (bVar2 != null) {
                this.f6668n.f6643b.release(bVar2);
            }
            this.f6661g[i11] = null;
            i11++;
        }
    }

    private SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable solverVariable = (SolverVariable) this.f6668n.f6644c.acquire();
        if (solverVariable == null) {
            solverVariable = new SolverVariable(type, str);
            solverVariable.h(type, str);
        } else {
            solverVariable.f();
            solverVariable.h(type, str);
        }
        int i11 = this.f6670p;
        int i12 = f6651w;
        if (i11 >= i12) {
            int i13 = i12 * 2;
            f6651w = i13;
            this.f6669o = (SolverVariable[]) Arrays.copyOf(this.f6669o, i13);
        }
        SolverVariable[] solverVariableArr = this.f6669o;
        int i14 = this.f6670p;
        this.f6670p = i14 + 1;
        solverVariableArr[i14] = solverVariable;
        return solverVariable;
    }

    private final void l(androidx.constraintlayout.core.b bVar) {
        int i11;
        if (f6648t && bVar.f6641f) {
            bVar.f6636a.g(this, bVar.f6637b);
        } else {
            androidx.constraintlayout.core.b[] bVarArr = this.f6661g;
            int i12 = this.f6666l;
            bVarArr[i12] = bVar;
            SolverVariable solverVariable = bVar.f6636a;
            solverVariable.f6610d = i12;
            this.f6666l = i12 + 1;
            solverVariable.i(this, bVar);
        }
        if (f6648t && this.f6655a) {
            int i13 = 0;
            while (i13 < this.f6666l) {
                if (this.f6661g[i13] == null) {
                    System.out.println("WTF");
                }
                androidx.constraintlayout.core.b bVar2 = this.f6661g[i13];
                if (bVar2 != null && bVar2.f6641f) {
                    bVar2.f6636a.g(this, bVar2.f6637b);
                    if (f6650v) {
                        this.f6668n.f6642a.release(bVar2);
                    } else {
                        this.f6668n.f6643b.release(bVar2);
                    }
                    this.f6661g[i13] = null;
                    int i14 = i13 + 1;
                    int i15 = i14;
                    while (true) {
                        i11 = this.f6666l;
                        if (i14 >= i11) {
                            break;
                        }
                        androidx.constraintlayout.core.b[] bVarArr2 = this.f6661g;
                        int i16 = i14 - 1;
                        androidx.constraintlayout.core.b bVar3 = bVarArr2[i14];
                        bVarArr2[i16] = bVar3;
                        SolverVariable solverVariable2 = bVar3.f6636a;
                        if (solverVariable2.f6610d == i14) {
                            solverVariable2.f6610d = i16;
                        }
                        i15 = i14;
                        i14++;
                    }
                    if (i15 < i11) {
                        this.f6661g[i15] = null;
                    }
                    this.f6666l = i11 - 1;
                    i13--;
                }
                i13++;
            }
            this.f6655a = false;
        }
    }

    private void n() {
        for (int i11 = 0; i11 < this.f6666l; i11++) {
            androidx.constraintlayout.core.b bVar = this.f6661g[i11];
            bVar.f6636a.f6612f = bVar.f6637b;
        }
    }

    public static androidx.constraintlayout.core.b s(d dVar, SolverVariable solverVariable, SolverVariable solverVariable2, float f11) {
        return dVar.r().j(solverVariable, solverVariable2, f11);
    }

    private int u(a aVar) {
        for (int i11 = 0; i11 < this.f6666l; i11++) {
            androidx.constraintlayout.core.b bVar = this.f6661g[i11];
            if (bVar.f6636a.f6616j != SolverVariable.Type.UNRESTRICTED && bVar.f6637b < 0.0f) {
                boolean z10 = false;
                int i12 = 0;
                while (!z10) {
                    e eVar = f6652x;
                    if (eVar != null) {
                        eVar.f6683k++;
                    }
                    i12++;
                    float f11 = Float.MAX_VALUE;
                    int i13 = 0;
                    int i14 = -1;
                    int i15 = -1;
                    int i16 = 0;
                    while (true) {
                        if (i13 >= this.f6666l) {
                            break;
                        }
                        androidx.constraintlayout.core.b bVar2 = this.f6661g[i13];
                        if (bVar2.f6636a.f6616j != SolverVariable.Type.UNRESTRICTED && !bVar2.f6641f && bVar2.f6637b < 0.0f) {
                            int i17 = 9;
                            if (f6649u) {
                                int currentSize = bVar2.f6640e.getCurrentSize();
                                int i18 = 0;
                                while (i18 < currentSize) {
                                    SolverVariable solverVariableB = bVar2.f6640e.b(i18);
                                    float fI = bVar2.f6640e.i(solverVariableB);
                                    if (fI > 0.0f) {
                                        int i19 = 0;
                                        while (i19 < i17) {
                                            float f12 = solverVariableB.f6614h[i19] / fI;
                                            if ((f12 < f11 && i19 == i16) || i19 > i16) {
                                                i16 = i19;
                                                i15 = solverVariableB.f6609c;
                                                i14 = i13;
                                                f11 = f12;
                                            }
                                            i19++;
                                            i17 = 9;
                                        }
                                    }
                                    i18++;
                                    i17 = 9;
                                }
                            } else {
                                for (int i20 = 1; i20 < this.f6665k; i20++) {
                                    SolverVariable solverVariable = this.f6668n.f6645d[i20];
                                    float fI2 = bVar2.f6640e.i(solverVariable);
                                    if (fI2 > 0.0f) {
                                        for (int i21 = 0; i21 < 9; i21++) {
                                            float f13 = solverVariable.f6614h[i21] / fI2;
                                            if ((f13 < f11 && i21 == i16) || i21 > i16) {
                                                i16 = i21;
                                                i14 = i13;
                                                i15 = i20;
                                                f11 = f13;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i13++;
                    }
                    if (i14 != -1) {
                        androidx.constraintlayout.core.b bVar3 = this.f6661g[i14];
                        bVar3.f6636a.f6610d = -1;
                        e eVar2 = f6652x;
                        if (eVar2 != null) {
                            eVar2.f6682j++;
                        }
                        bVar3.x(this.f6668n.f6645d[i15]);
                        SolverVariable solverVariable2 = bVar3.f6636a;
                        solverVariable2.f6610d = i14;
                        solverVariable2.i(this, bVar3);
                    } else {
                        z10 = true;
                    }
                    if (i12 > this.f6665k / 2) {
                        z10 = true;
                    }
                }
                return i12;
            }
        }
        return 0;
    }

    public static e x() {
        return f6652x;
    }

    private void z() {
        int i11 = this.f6659e * 2;
        this.f6659e = i11;
        this.f6661g = (androidx.constraintlayout.core.b[]) Arrays.copyOf(this.f6661g, i11);
        c cVar = this.f6668n;
        cVar.f6645d = (SolverVariable[]) Arrays.copyOf(cVar.f6645d, this.f6659e);
        int i12 = this.f6659e;
        this.f6664j = new boolean[i12];
        this.f6660f = i12;
        this.f6667m = i12;
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6676d++;
            eVar.f6687o = Math.max(eVar.f6687o, i12);
            e eVar2 = f6652x;
            eVar2.f6697y = eVar2.f6687o;
        }
    }

    public void A() {
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6677e++;
        }
        if (this.f6658d.isEmpty()) {
            n();
            return;
        }
        if (!this.f6662h && !this.f6663i) {
            B(this.f6658d);
            return;
        }
        e eVar2 = f6652x;
        if (eVar2 != null) {
            eVar2.f6689q++;
        }
        for (int i11 = 0; i11 < this.f6666l; i11++) {
            if (!this.f6661g[i11].f6641f) {
                B(this.f6658d);
                return;
            }
        }
        e eVar3 = f6652x;
        if (eVar3 != null) {
            eVar3.f6688p++;
        }
        n();
    }

    void B(a aVar) {
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6692t++;
            eVar.f6693u = Math.max(eVar.f6693u, this.f6665k);
            e eVar2 = f6652x;
            eVar2.f6694v = Math.max(eVar2.f6694v, this.f6666l);
        }
        u(aVar);
        C(aVar, false);
        n();
    }

    public void E() {
        c cVar;
        int i11 = 0;
        while (true) {
            cVar = this.f6668n;
            SolverVariable[] solverVariableArr = cVar.f6645d;
            if (i11 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i11];
            if (solverVariable != null) {
                solverVariable.f();
            }
            i11++;
        }
        cVar.f6644c.a(this.f6669o, this.f6670p);
        this.f6670p = 0;
        Arrays.fill(this.f6668n.f6645d, (Object) null);
        HashMap map = this.f6657c;
        if (map != null) {
            map.clear();
        }
        this.f6656b = 0;
        this.f6658d.clear();
        this.f6665k = 1;
        for (int i12 = 0; i12 < this.f6666l; i12++) {
            androidx.constraintlayout.core.b bVar = this.f6661g[i12];
            if (bVar != null) {
                bVar.f6638c = false;
            }
        }
        D();
        this.f6666l = 0;
        if (f6650v) {
            this.f6671q = new b(this.f6668n);
        } else {
            this.f6671q = new androidx.constraintlayout.core.b(this.f6668n);
        }
    }

    public void b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f11, int i11) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableQ = q(constraintWidget.q(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableQ2 = q(constraintWidget.q(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableQ3 = q(constraintWidget.q(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableQ4 = q(constraintWidget.q(type4));
        SolverVariable solverVariableQ5 = q(constraintWidget2.q(type));
        SolverVariable solverVariableQ6 = q(constraintWidget2.q(type2));
        SolverVariable solverVariableQ7 = q(constraintWidget2.q(type3));
        SolverVariable solverVariableQ8 = q(constraintWidget2.q(type4));
        androidx.constraintlayout.core.b bVarR = r();
        double d11 = f11;
        double d12 = i11;
        bVarR.q(solverVariableQ2, solverVariableQ4, solverVariableQ6, solverVariableQ8, (float) (Math.sin(d11) * d12));
        d(bVarR);
        androidx.constraintlayout.core.b bVarR2 = r();
        bVarR2.q(solverVariableQ, solverVariableQ3, solverVariableQ5, solverVariableQ7, (float) (Math.cos(d11) * d12));
        d(bVarR2);
    }

    public void c(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, float f11, SolverVariable solverVariable3, SolverVariable solverVariable4, int i12, int i13) {
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.h(solverVariable, solverVariable2, i11, f11, solverVariable3, solverVariable4, i12);
        if (i13 != 8) {
            bVarR.d(this, i13);
        }
        d(bVarR);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    public void d(androidx.constraintlayout.core.b bVar) {
        SolverVariable solverVariableV;
        if (bVar == null) {
            return;
        }
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6678f++;
            if (bVar.f6641f) {
                eVar.f6679g++;
            }
        }
        boolean z10 = true;
        if (this.f6666l + 1 >= this.f6667m || this.f6665k + 1 >= this.f6660f) {
            z();
        }
        boolean z11 = false;
        if (!bVar.f6641f) {
            bVar.D(this);
            if (bVar.isEmpty()) {
                return;
            }
            bVar.r();
            if (bVar.f(this)) {
                SolverVariable solverVariableP = p();
                bVar.f6636a = solverVariableP;
                int i11 = this.f6666l;
                l(bVar);
                if (this.f6666l == i11 + 1) {
                    this.f6671q.a(bVar);
                    C(this.f6671q, true);
                    if (solverVariableP.f6610d == -1) {
                        if (bVar.f6636a == solverVariableP && (solverVariableV = bVar.v(solverVariableP)) != null) {
                            e eVar2 = f6652x;
                            if (eVar2 != null) {
                                eVar2.f6682j++;
                            }
                            bVar.x(solverVariableV);
                        }
                        if (!bVar.f6641f) {
                            bVar.f6636a.i(this, bVar);
                        }
                        if (f6650v) {
                            this.f6668n.f6642a.release(bVar);
                        } else {
                            this.f6668n.f6643b.release(bVar);
                        }
                        this.f6666l--;
                    }
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!bVar.s()) {
                return;
            } else {
                z11 = z10;
            }
        }
        if (z11) {
            return;
        }
        l(bVar);
    }

    public androidx.constraintlayout.core.b e(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, int i12) {
        if (f6647s && i12 == 8 && solverVariable2.f6613g && solverVariable.f6610d == -1) {
            solverVariable.g(this, solverVariable2.f6612f + i11);
            return null;
        }
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.n(solverVariable, solverVariable2, i11);
        if (i12 != 8) {
            bVarR.d(this, i12);
        }
        d(bVarR);
        return bVarR;
    }

    public void f(SolverVariable solverVariable, int i11) {
        if (f6647s && solverVariable.f6610d == -1) {
            float f11 = i11;
            solverVariable.g(this, f11);
            for (int i12 = 0; i12 < this.f6656b + 1; i12++) {
                SolverVariable solverVariable2 = this.f6668n.f6645d[i12];
                if (solverVariable2 != null && solverVariable2.f6620n && solverVariable2.f6621o == solverVariable.f6609c) {
                    solverVariable2.g(this, solverVariable2.f6622p + f11);
                }
            }
            return;
        }
        int i13 = solverVariable.f6610d;
        if (i13 == -1) {
            androidx.constraintlayout.core.b bVarR = r();
            bVarR.i(solverVariable, i11);
            d(bVarR);
            return;
        }
        androidx.constraintlayout.core.b bVar = this.f6661g[i13];
        if (bVar.f6641f) {
            bVar.f6637b = i11;
            return;
        }
        if (bVar.f6640e.getCurrentSize() == 0) {
            bVar.f6641f = true;
            bVar.f6637b = i11;
        } else {
            androidx.constraintlayout.core.b bVarR2 = r();
            bVarR2.m(solverVariable, i11);
            d(bVarR2);
        }
    }

    public void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, boolean z10) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6611e = 0;
        bVarR.o(solverVariable, solverVariable2, solverVariableT, i11);
        d(bVarR);
    }

    public void h(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, int i12) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6611e = 0;
        bVarR.o(solverVariable, solverVariable2, solverVariableT, i11);
        if (i12 != 8) {
            m(bVarR, (int) (bVarR.f6640e.i(solverVariableT) * (-1.0f)), i12);
        }
        d(bVarR);
    }

    public void i(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, boolean z10) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6611e = 0;
        bVarR.p(solverVariable, solverVariable2, solverVariableT, i11);
        d(bVarR);
    }

    public void j(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, int i12) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6611e = 0;
        bVarR.p(solverVariable, solverVariable2, solverVariableT, i11);
        if (i12 != 8) {
            m(bVarR, (int) (bVarR.f6640e.i(solverVariableT) * (-1.0f)), i12);
        }
        d(bVarR);
    }

    public void k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f11, int i11) {
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f11);
        if (i11 != 8) {
            bVarR.d(this, i11);
        }
        d(bVarR);
    }

    void m(androidx.constraintlayout.core.b bVar, int i11, int i12) {
        bVar.e(o(i12, null), i11);
    }

    public SolverVariable o(int i11, String str) {
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6684l++;
        }
        if (this.f6665k + 1 >= this.f6660f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.ERROR, str);
        int i12 = this.f6656b + 1;
        this.f6656b = i12;
        this.f6665k++;
        solverVariableA.f6609c = i12;
        solverVariableA.f6611e = i11;
        this.f6668n.f6645d[i12] = solverVariableA;
        this.f6658d.c(solverVariableA);
        return solverVariableA;
    }

    public SolverVariable p() {
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6686n++;
        }
        if (this.f6665k + 1 >= this.f6660f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i11 = this.f6656b + 1;
        this.f6656b = i11;
        this.f6665k++;
        solverVariableA.f6609c = i11;
        this.f6668n.f6645d[i11] = solverVariableA;
        return solverVariableA;
    }

    public SolverVariable q(Object obj) {
        SolverVariable solverVariableI = null;
        if (obj == null) {
            return null;
        }
        if (this.f6665k + 1 >= this.f6660f) {
            z();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariableI = constraintAnchor.i();
            if (solverVariableI == null) {
                constraintAnchor.s(this.f6668n);
                solverVariableI = constraintAnchor.i();
            }
            int i11 = solverVariableI.f6609c;
            if (i11 == -1 || i11 > this.f6656b || this.f6668n.f6645d[i11] == null) {
                if (i11 != -1) {
                    solverVariableI.f();
                }
                int i12 = this.f6656b + 1;
                this.f6656b = i12;
                this.f6665k++;
                solverVariableI.f6609c = i12;
                solverVariableI.f6616j = SolverVariable.Type.UNRESTRICTED;
                this.f6668n.f6645d[i12] = solverVariableI;
            }
        }
        return solverVariableI;
    }

    public androidx.constraintlayout.core.b r() {
        androidx.constraintlayout.core.b bVar;
        if (f6650v) {
            bVar = (androidx.constraintlayout.core.b) this.f6668n.f6642a.acquire();
            if (bVar == null) {
                bVar = new b(this.f6668n);
                f6654z++;
            } else {
                bVar.y();
            }
        } else {
            bVar = (androidx.constraintlayout.core.b) this.f6668n.f6643b.acquire();
            if (bVar == null) {
                bVar = new androidx.constraintlayout.core.b(this.f6668n);
                f6653y++;
            } else {
                bVar.y();
            }
        }
        SolverVariable.d();
        return bVar;
    }

    public SolverVariable t() {
        e eVar = f6652x;
        if (eVar != null) {
            eVar.f6685m++;
        }
        if (this.f6665k + 1 >= this.f6660f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i11 = this.f6656b + 1;
        this.f6656b = i11;
        this.f6665k++;
        solverVariableA.f6609c = i11;
        this.f6668n.f6645d[i11] = solverVariableA;
        return solverVariableA;
    }

    public void v(e eVar) {
        f6652x = eVar;
    }

    public c w() {
        return this.f6668n;
    }

    public int y(Object obj) {
        SolverVariable solverVariableI = ((ConstraintAnchor) obj).i();
        if (solverVariableI != null) {
            return (int) (solverVariableI.f6612f + 0.5f);
        }
        return 0;
    }
}
